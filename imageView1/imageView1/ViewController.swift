//
//  ViewController.swift
//  imageView1
//
//  Created by 정성우 on 2022/09/08.
//

import UIKit

class ViewController: UIViewController {
    var maxImage = 6
    var numImage = 1
    
    
    @IBOutlet var imgView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imgView.image  = UIImage(named: "1.png")
        
    }

    
    @IBAction func btnPrevImg(_ sender: UIButton) {
        numImage = numImage - 1
        if (numImage < 1){
            numImage = maxImage
        }
        let imageName = String(numImage) + ".png"
        imgView.image = UIImage(named: imageName)
    }
    @IBAction func btnNextImg(_ sender: UIButton) {
        numImage = numImage + 1
        if (numImage > maxImage){
            numImage = 1
        }
        let imageName = String(numImage) + ".png"
        imgView.image = UIImage(named: imageName)
    }
}

