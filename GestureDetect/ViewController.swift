//
//  ViewController.swift
//  GestureDetect
//
//  Created by Tunahan Yanmaz on 12.11.2023.
//

import UIKit

class ViewController: UIViewController {

    var isEmpty = false
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var testImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        testImage.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changeImg))
        testImage.addGestureRecognizer(gestureRecognizer)
    }
    @objc func changeImg(){
        if (isEmpty){
            testImage.image = UIImage(systemName: "archivebox")
            textLabel.text = "EMPTY"
            isEmpty = false
        }
        else{
            testImage.image = UIImage(systemName: "archivebox.fill")
            textLabel.text = "FULL"
            isEmpty = true
        }
    }

}

