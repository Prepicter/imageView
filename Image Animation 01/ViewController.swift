//
//  ViewController.swift
//  Image Animation 01
//
//  Created by dit03 on 2019. 3. 27..
//  Copyright © 2019년 201835867. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var lblCount: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    var count = 1
    var dire = false
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lblCount.text = "\(count)번째 사진"
        imageView.image = UIImage(named: "frame1.png")
        
        
        
    }

    @IBAction func Update(_ sender: Any) {
//        if count < 5 {
//            count+=1
//        } else {
//            count = 1
//        }
        
        if dire == false {
            if count < 5 {
                count += 1
                if count == 5 {
                    dire = true
                }
            }
        } else {
            if count > 1 {
                count -= 1
                if count == 1 {
                    dire = false
                }
            }
        }
        
        lblCount.text = "\(count)번째 사진"
        imageView.image = UIImage(named: "frame\(count).png")
    }
    
}

