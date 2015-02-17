//
//  OutputController.swift
//  lab_pickers
//
//  Created by Mae Yee on 2015-02-17.
//  Copyright (c) 2015 Mae Yee. All rights reserved.
//

import UIKit

class OutputController: UIViewController {

    @IBOutlet weak var outputLabel: UILabel!

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "fromTabController" {
            var tabBarC : UITabBarController = segue.destinationViewController as UITabBarController
            var datePickerView: DatePickerController = tabBarC.viewControllers?.first as DatePickerController
            
            outputLabel.text = datePickerView.dateLabel.text
        }
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
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
