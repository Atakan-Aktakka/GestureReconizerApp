//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Atakan Aktakka on 31.08.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var myLabel: UILabel!
    var isArkham = true
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        
        imageView.addGestureRecognizer(gestureRecognizer)
    }

    @objc func changePic(){
        if isArkham == true{
            imageView.image = UIImage(named: "batman2")
            myLabel.text = "Arkham City"
            isArkham = false
        }else{
            imageView.image = UIImage(named: "batman1")
            myLabel.text = "Arkham Knight"
            isArkham = true
        }
      
    }
}

