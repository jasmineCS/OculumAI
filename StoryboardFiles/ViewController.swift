//
//  ViewController.swift
//  OcularDiagnosis
//
//  Created by 90310470 on 4/17/24.
//

import UIKit
import Vision
import CoreML

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    let imagePicker = UIImagePickerController()
    @IBOutlet weak var imageView : UIImageView!
    @IBOutlet weak var predictionLabel : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imagePicker.delegate = self
        imagePicker.sourceType = .photoLibrary
        
    }
    
    
    struct Prediction {
        let classification : String
        let confidencePercentage : String
    }
    
    typealias ImagePredictionHandler = (_ prediction : [Prediction]?) -> Void
    
    private var predictionHandlers = [VNRequest : ImagePredictionHandler]()
    
    @IBAction func openPhotoLibrary()
    {
        present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imagePicker.dismiss(animated: true)
        guard let image = info[.originalImage] as? UIImage else {
            return
        }
        
        imageView.image = image
        try? predictImageClass(for: image, completionHandler: imagePredictionHandler)
    }
    
    func predictImageClass(for image: UIImage, completionHandler : @escaping ImagePredictionHandler) throws {
        var predictions: [Prediction]? = nil
        
        let model = createImageClassifier()
        let imageClassificationRequest = VNCoreMLRequest(model: model, completionHandler: visionRequestHandler)
        
        imageClassificationRequest.imageCropAndScaleOption = .centerCrop
        
        guard let photoImage = image.cgImage else {
            return
        }
        
        predictionHandlers[imageClassificationRequest] = completionHandler
        
        let handler = VNImageRequestHandler(cgImage: photoImage)
        try? handler.perform([imageClassificationRequest])
    }
    
    private func imagePredictionHandler (_ predictions : [Prediction]?) {
        guard let predictions = predictions else {
            predictionLabel.text = "Error in Prediction"
            return
        }
        
        let formattedPredictions = formatPrediction(predictions)
        
        let predictionString = formattedPredictions.joined(separator: "\n")
        predictionLabel.text = predictionString
    }
    
    private func visionRequestHandler(_ request : VNRequest, error: Error?){
        guard let predictionHandler = predictionHandlers.removeValue(forKey: request) else {
            fatalError("Every Request must have a precidtion handler.")
        }
        
        var predictions: [Prediction]? = nil
        defer {
            predictionHandler(predictions)
        }
        
        if let error = error {
            print("Vision image classifier error...\n\n\(error.localizedDescription)")
            return
        }
        
        if request.results == nil {
            print("Vision request has no results.")
            return
        }
        
        guard let observations = request.results as? [VNClassificationObservation] else {
            print("VNRequest produced the wrong result type: \(type(of: request.results)).")
            return
        }
        
        predictions = observations.map { observation in
            Prediction(classification: observation.identifier, confidencePercentage: String(observation.confidence))
        }
    }
    
    func createImageClassifier()->VNCoreMLModel {
        let config = MLModelConfiguration()
        
        let imageClassificationWrapper = try? OcularDiagnosis(configuration: config)
        
        guard let imageClassifier = imageClassificationWrapper else 
        {
            fatalError("App failed to create an image classfier model instance")
        }
        
        let imageClassifierModel = imageClassifier.model
        
        guard let imageClassifiervisionModel = try? VNCoreMLModel(for: imageClassifierModel) else {
            fatalError("App failed to create a 'VNCoreMLModel' instance")
        }
        
        return imageClassifiervisionModel
    }
    
    private func formatPrediction(_ predictions: [Prediction]) -> [String] {
        let topPredictions : [String] = predictions.prefix(2).map() { prediction in
            var name = prediction.classification
            
            if let firstComma = name.firstIndex(of: ",") {
                name = String(name.prefix(upTo: firstComma))
            }
            return "Result: \(name.uppercased())"
            //return "Result: \(name) - \(prediction.confidencePercentage)"
        }
        
        return topPredictions
    }


}

