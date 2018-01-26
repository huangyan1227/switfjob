//
//  HYNavigationViewController.swift
//  jobSwitf
//
//  Created by bidiao on 2017/12/26.
//  Copyright © 2017年 bidiao. All rights reserved.
//

import UIKit

class HYNavigationViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationBar.isTranslucent = false
        
        let imageString = UIImage(named: "top_bar_employee")
        
        //self.navigationController?.navigationBar.titleTextAttributes=[NSAttributedStringKey.font:UIFont.systemFont(ofSize: 24)]
       // self.navigationBar .setBackgroundImage(imageString, for: <#T##UIBarPosition#>, barMetrics: <#T##UIBarMetrics#>)
        
        self.navigationBar.setBackgroundImage(imageString, for: UIBarMetrics.default)
        
        
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
