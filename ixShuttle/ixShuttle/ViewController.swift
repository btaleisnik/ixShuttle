//
//  ViewController.swift
//  ixShuttle
//
//  Created by Brandon Taleisnik on 6/29/17.
//  Copyright © 2017 Brandon Taleisnik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var reserveButton: UIButton!
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        //Center button text in Reservation Button
        reserveButton.titleLabel?.textAlignment = NSTextAlignment.center
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Hello World!")

        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

