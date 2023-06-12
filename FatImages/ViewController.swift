//
//  ViewController.swift
//  FatImages
//
//  Created by Apple Computer on 6/11/23.
//

import UIKit

// MARK: - BigImages: String

enum BigImages: String {
    case whale = "https://d17h27t6h515a5.cloudfront.net/topher/2017/November/59fe5127_whale/whale.jpg"
    case shark = "https://d17h27t6h515a5.cloudfront.net/topher/2017/November/59fe5123_shark/shark.jpg"
    case seaLion = "https://d17h27t6h515a5.cloudfront.net/topher/2017/November/59fe511f_sealion/sealion.jpg"
}

// MARK: - ViewController: UIViewController

class ViewController: UIViewController {

    // MARK: Outlets
    
    @IBOutlet weak var photoView: UIImageView!
    @IBOutlet weak var activityView: UIActivityIndicatorView!

    // MARK: Actions
    
    @IBAction func setTransparencyOfImage(sender: UISlider) {
        photoView.alpha = CGFloat(sender.value)
    }
    
    // MARK: - Sync Download
    
    // this method downloads a huge image, blocking the main queue and the UI
    // (for instructional purposes only, never do this in a production app)
    @IBAction func synchronousDownload(sender: UIBarButtonItem) {
        // start animation
        activityView.startAnimating()
                
        // use url to get the data for the image
        if let url = URL(string: BigImages.seaLion.rawValue), let imgData = try? Data(contentsOf: url) {
            // turn data into an image
            let image = UIImage(data: imgData)
            
            // display it
            self.photoView.image = image
            
            // stop animating
            self.activityView.stopAnimating()
        }
    }
    
    // MARK: - Async Download
    
    // this method avoids blocking by creating a background queue, without blocking the UI
    @IBAction func simpleAsynchronousDownload(sender: UIBarButtonItem) {
        // TODO: finish implementation
        print("TODO: simpleAsynchronousDownload")
    }
    
    // MARK: - Async Download (with Completion Handler)
    
    @IBAction func asynchronousDownload(sender: UIBarButtonItem) {
        // TODO: finish implementation
        print("TODO: asynchronousDownload")
    }
}
