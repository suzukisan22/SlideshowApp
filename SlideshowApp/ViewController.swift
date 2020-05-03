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
  
  @IBOutlet weak var resumeButtonElement: UIButton!

  var timer: Timer!

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
    if self.timer == nil {
       self.timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(updateTimer(_:)), userInfo: nil, repeats: true)
      resumeButtonElement.setTitle("停止", for: .normal)
    } else {
      resumeButtonElement.setTitle("再生", for: .normal)
      self.timer.invalidate()
      self.timer = nil
    }
  }
  
  // selector: #selector(updatetimer(_:)) で指定された関数
  // timeInterval: 0.1, repeats: true で指定された通り、0.1秒毎に呼び出され続ける
  @objc func updateTimer(_ timer: Timer) {
    if displayImageNumber < 2 {
      displayImageNumber += 1
    } else {
      displayImageNumber = 0
    }

    firstView.image = UIImage(named: imageNameArray[displayImageNumber])
  }
  
}

