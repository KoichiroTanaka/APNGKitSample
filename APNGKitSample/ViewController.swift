
import UIKit

import APNGKit

class ViewController: UIViewController {

    @IBOutlet private weak var imageView: APNGImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupImageView()
    }

    private func setupImageView() {
        guard let path = Bundle.main.path(forResource: "elephant", ofType: "apng") else { return }
        
        let image = APNGImage(contentsOfFile: path)
        
        imageView.image = image
        imageView.startAnimating()
    }

}
