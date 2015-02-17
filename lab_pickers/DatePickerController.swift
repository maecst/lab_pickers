//
//  DatePickerController.swift
//  lab_pickers
//
//  Created by Mae Yee on 2015-02-17.
//  Copyright (c) 2015 Mae Yee. All rights reserved.
//

import UIKit

class DatePickerController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var dateLabel: UILabel!
    
    
    @IBAction func dateSelected(sender: AnyObject) {
        
        var dateFormatter = NSDateFormatter();
        dateFormatter.dateStyle = NSDateFormatterStyle.LongStyle;
        
        var strDate = dateFormatter.stringFromDate( sender.date!! );
        dateLabel.text = strDate;
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toTabController" {
            var tabBarC : UITabBarController = segue.destinationViewController as UITabBarController
            var outputView: OutputController = tabBarC.viewControllers?.last as OutputController
            
            outputView.outputLabel.text = dateLabel.text
        }
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

