//
//  ViewController.swift
//  ZSignBoard
//
//  Created by Xiaoqiang Zhang on 16/2/25.
//  Copyright © 2016年 Xiaoqiang Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  var zbView = ZSignBoardView(frame: CGRectMake(0, 0, 0, 0))
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    zbView = ZSignBoardView(frame: self.view.frame)
//    zbView?.frame = self.view.frame
    self.view.addSubview(zbView)
    
    
  
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  override func prefersStatusBarHidden() -> Bool {
    return true
  }

  @IBAction func action() {
    
    let data = UIImagePNGRepresentation(zbView.image!)
    
    let fileManager = NSFileManager.defaultManager()
    
    let filePath = NSHomeDirectory().stringByAppendingString("/Documents/images")
    
    do {
      try fileManager.createDirectoryAtPath(filePath, withIntermediateDirectories: true, attributes: nil)
    } catch {
      
    }
    
    fileManager.createFileAtPath(filePath.stringByAppendingString("/image.png"), contents: data, attributes: nil)
  }
  
}

