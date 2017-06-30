//
//  ShuttleViewController.swift
//  ixShuttle
//
//  Created by Ally Mahmoud on 6/30/17.
//  Copyright © 2017 Brandon Taleisnik. All rights reserved.
//

import UIKit

class ShuttleViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {

    @IBOutlet weak var destination: UITextField!
    @IBOutlet weak var dropdownoptions: UIPickerView!
    
    var destinations = ["iX Village", "Class"]
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        let countrows: Int = destinations.count
        
        return countrows
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let titlerow = destinations[row]
        
        return titlerow
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.destination.text = destinations[row]
        self.dropdownoptions.isHidden = true
        
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.dropdownoptions.isHidden = true
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        self.dropdownoptions.isHidden = false
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
