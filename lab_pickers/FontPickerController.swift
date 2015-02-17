//
//  FontPickerController.swift
//  lab_pickers
//
//  Created by Mae Yee on 2015-02-17.
//  Copyright (c) 2015 Mae Yee. All rights reserved.
//

import UIKit

class FontPickerController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var fontPicker: UIPickerView!
    @IBOutlet weak var fontLabel: UILabel!
    
    let pickerData = ["12", "16", "20", "24", "28", "32", "36"]
    let pickerNumbers = [
        UIFont (name: "Arial", size: 12.0),
        UIFont (name: "Arial", size: 16.0),
        UIFont (name: "Arial", size: 20.0),
        UIFont (name: "Arial", size: 24.0),
        UIFont (name: "Arial", size: 28.0),
        UIFont (name: "Arial", size: 32.0),
        UIFont (name: "Arial", size: 36.0)]

    //MARK: - Delegates and data sources
    //MARK: Data Sources
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    
    //MARK: Delegates
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return pickerData[row]
    }
    
    @IBOutlet weak var textLabel: UITextField!
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        var x = pickerNumbers[row]
        fontLabel.font = x;
        fontLabel.text = "Hello World!"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        fontPicker.dataSource = self
        fontPicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
