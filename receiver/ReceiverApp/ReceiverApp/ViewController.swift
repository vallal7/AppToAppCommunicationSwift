//
//  ViewController.swift
//  ReceiverApp
//
//  Created by Ganesh, Ashwin on 1/23/17.
//  Copyright © 2017 Ashwin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var receivedLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.receivedLabel.text = "Received Message"
    }

}

