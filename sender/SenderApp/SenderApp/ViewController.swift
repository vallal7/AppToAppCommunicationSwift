//
//  ViewController.swift
//  SenderApp
//
//  Created by Ganesh, Ashwin on 1/23/17.
//  Copyright © 2017 Ashwin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func invokeAppMethod(_ sender: AnyObject) {
            
            let application:UIApplication = UIApplication.shared
            //Encode the message to send
            var urlEncodedText:String = self.messageTextField.text!
            urlEncodedText = urlEncodedText.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!
            //openApp is the URLScheme of the receiver App
            let ourPath = "openApp://" + urlEncodedText
            let ourUrl = URL (string: ourPath)
            let systemVersion:Float = (UIDevice.current.systemVersion as NSString).floatValue
            if application .canOpenURL(ourUrl!) {
                if systemVersion >= 10.0 {
                    // openURL is supported only on devices with OS > 10
                    application .open(ourUrl!, options: [:], completionHandler: { (success:Bool) in
                        print("App Launched")
                    })
                }
            } else {
                // in this case, the app is not installed
                print("App Not Found")
            }
        
    }

}

