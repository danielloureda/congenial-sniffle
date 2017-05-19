//
//  DetailViewController.swift
//  Project1
//
//  Created by Daniel Loureda Arteaga on 18/5/17.
//  Copyright © 2017 Dano. All rights reserved.
//

import UIKit
import Social

class DetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var selectedImage: String?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let imageToLoad = selectedImage {
            title = imageToLoad
            navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))
            imageView.image = UIImage(named: imageToLoad)
        }
    }
    
    func shareTapped(){
        if let image = imageView.image {
            //let shareViewController = UIActivityViewController(activityItems: [image], applicationActivities: [])
            //shareViewController.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
            //present(shareViewController, animated: true)
            if let socialMediaViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook) {
                socialMediaViewController.setInitialText("Look at this great picture")
                socialMediaViewController.add(image)
                socialMediaViewController.add(URL(string: "http://www.photolib.noaa.gov/nssl"))
                present(socialMediaViewController, animated: true)
            }
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = false
    }
}
