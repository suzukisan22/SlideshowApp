//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 鈴木凌太 on 2020/05/03.
//  Copyright © 2020 鈴木凌太. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var firstView: UIImageView!
  
  var displayImageNumber:Int = 0

  var imageNameArray = ["スライド1枚目", "スライド2枚目", "スライド3枚目"]

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    
    firstView.image = UIImage(named: imageNameArray[displayImageNumber])
  }
  
  @IBAction func returnButton(_ sender: Any) {
    if displayImageNumber == 0 {
      displayImageNumber = 2
    } else {
      displayImageNumber -= 1
    }

    firstView.image = UIImage(named: imageNameArray[displayImageNumber])
  }
  
  @IBAction func nextButton(_ sender: Any) {
    if displayImageNumber < 2 {
      displayImageNumber += 1
    } else {
      displayImageNumber = 0
    }

    firstView.image = UIImage(named: imageNameArray[displayImageNumber])
  }
  
  @IBAction func resumeButton(_ sender: Any) {
  }
  
}

