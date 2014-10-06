//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Nathanial L. McConnell on 9/17/14.
//  Copyright (c) 2014 Nathanial L. McConnell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var guess: UITextField!
  @IBOutlet weak var message: UILabel!
  @IBAction func guessButtonPressed(sender: AnyObject) {
    var numberOfFingers = arc4random() % 6
    println("Numbers of fingers is \(numberOfFingers)")
    message.text = (guess.text == String(numberOfFingers)) ? "You are correct!" : "No, \(numberOfFingers) fingers. Try again."
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

