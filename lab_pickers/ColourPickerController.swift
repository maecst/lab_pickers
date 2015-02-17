//
//  ColourPickerController.swift
//  lab_pickers
//
//  Created by Mae Yee on 2015-02-17.
//  Copyright (c) 2015 Mae Yee. All rights reserved.
//

import UIKit

class ColourPickerController: UIViewController, UIPickerViewDataSource,UIPickerViewDelegate {

    @IBOutlet weak var colourPicker: UIPickerView!
    @IBOutlet weak var colourLabel: UILabel!
    
    let pickerData = ["Purple","Blue","Green","Yellow","Orange","Red"]
    let pickerColour = [UIColor.purpleColor(), UIColor.blueColor(), UIColor.greenColor(), UIColor.yellowColor(), UIColor.orangeColor(), UIColor.redColor()]
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return pickerData[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        colourLabel.text = pickerData[row]
        colourLabel.textColor = pickerColour[row]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colourPicker.dataSource = self
        colourPicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

