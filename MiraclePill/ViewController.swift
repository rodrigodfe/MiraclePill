 //
//  ViewController.swift
//  MiraclePill
//
//  Created by Rodrigo Delgado on 8/28/16.
//  Copyright © 2016 Rodrigo Delgado. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var zipCodeTextField: UITextField!
    @IBOutlet weak var zipCodeTitle: UILabel!
    @IBOutlet weak var cityTitle: UILabel!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var countryTitle: UILabel!
    @IBOutlet weak var countryTextfield: UITextField!
    @IBOutlet weak var buyNowBtn: UIButton!
    @IBOutlet weak var pillEmoji: UIImageView!
    @IBOutlet weak var miraclePillsTitle: UILabel!
    @IBOutlet weak var pillPrice: UILabel!
    @IBOutlet weak var divider: UIView!
    @IBOutlet weak var fullNameTitle: UILabel!
    @IBOutlet weak var enterNameField: UITextField!
    @IBOutlet weak var streetAddressTitle: UILabel!
    @IBOutlet weak var streetAddressField: UITextField!
    
    @IBOutlet weak var succesIndicator2: UIImageView!
    
    let states = ["Alaska", "Arkansas", "Alabama", "California", "New York"]
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func stateBtnPressed(_ sender: AnyObject) {
        zipCodeTextField.isHidden = true
        zipCodeTitle.isHidden = true
        cityTitle.isHidden = true
        cityTextField.isHidden = true
        countryTitle.isHidden = true
        countryTextfield.isHidden = true
        statePicker.isHidden = false
    }
    
    @IBAction func buyNowBtnPressed(_ sender: AnyObject) {
        statePicker.isHidden = true
        statePickerBtn.isHidden = true
        zipCodeTextField.isHidden = true
        zipCodeTitle.isHidden = true
        cityTitle.isHidden = true
        cityTextField.isHidden = true
        countryTitle.isHidden = true
        countryTextfield.isHidden = true
        buyNowBtn.isHidden = true
        pillEmoji.isHidden = true
        miraclePillsTitle.isHidden = true
        pillPrice.isHidden = true
        divider.isHidden = true
        fullNameTitle.isHidden = true
        enterNameField.isHidden = true
        streetAddressTitle.isHidden = true
        streetAddressField.isHidden = true
        succesIndicator2.isHidden = false
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        zipCodeTextField.isHidden = false
        zipCodeTitle.isHidden = false
        cityTitle.isHidden = false
        cityTextField.isHidden = !true
        countryTitle.isHidden = !true
        countryTextfield.isHidden = !true
    }
    
    
    
    

}

