import UIKit
import TesseractOCR

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Tesseract().RecogniseText(imageGiven: "demoText")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

