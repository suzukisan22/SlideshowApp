//
//  ExpandPhotoViewController.swift
//  SlideshowApp
//
//  Created by 鈴木凌太 on 2020/05/03.
//  Copyright © 2020 鈴木凌太. All rights reserved.
//

import UIKit

class ExpandPhotoViewController: UIViewController {

  @IBOutlet weak var biggerImage: UIImageView!
  
  var imageTitle = ""

  override func viewDidLoad() {
      super.viewDidLoad()

      // Do any additional setup after loading the view.
    if imageTitle != "" {
      biggerImage.image = UIImage(named: imageTitle)
    }
      
  }
  

  /*
  // MARK: - Navigation

  // In a storyboard-based application, you will often want to do a little preparation before navigation
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      // Get the new view controller using segue.destination.
      // Pass the selected object to the new view controller.
  }
  */

}
