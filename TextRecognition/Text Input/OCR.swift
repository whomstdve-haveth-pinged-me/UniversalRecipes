import UIKit
import TesseractOCR

class Tesseract: NSObject, G8TesseractDelegate {
    
    @IBOutlet weak var textView: UITextView!
    
    func RecogniseText(imageGiven : String) {
    
        if let tesseract = G8Tesseract(language: "eng") {
            tesseract.delegate = self
            tesseract.image = UIImage(named: imageGiven)
            tesseract.recognize()
            
            textView.text = tesseract.recognizedText
        }
    }
}
