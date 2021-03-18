//
//  PhotoViewController.swift
//  PhotoTapps
//
//  Created by Данила  on 15.03.2021.
//

import UIKit

class PhotoViewController: UIViewController {
    
    var image: UIImage?
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        photoImageView.image = image
    }

    @IBAction func shareAction(_ sender: Any) {
        let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        shareController.completionWithItemsHandler = { _,Bool, _, _ in
            if Bool {
                print("Успешно!")
            }
        }
        present(shareController, animated: true, completion: nil)
        
    }
}
