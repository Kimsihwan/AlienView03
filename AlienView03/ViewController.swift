//
//  ViewController.swift
//  AlienView03
//
//  Created by D7702_10 on 2018. 4. 3..
//  Copyright © 2018년 ksh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var counter = 1
    var chk = true
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // 1st 이미지가 출력
        img.image = UIImage(named: "frame1.png")
        lbl.text = "1"
    }
    
    @IBAction func up(_ sender: Any) {
        if counter == 5 {
            chk = false // 내리막
        } else if counter == 1 {
            chk = true // 오르막
           counter = counter + 1
        }
        
        if chk == false {
           counter = counter - 1
        } else if chk == true {
            counter = counter + 1
        }
        img.image = UIImage(named: "frame\(counter).png")
        lbl.text = String(counter)
    }
    


}

