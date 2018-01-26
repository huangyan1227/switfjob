//
//  FiveViewController.swift
//  jobSwitf
//
//  Created by bidiao on 2018/1/8.
//  Copyright © 2018年 bidiao. All rights reserved.
//

import UIKit

class FiveViewController: UIViewController {

    
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //UIColor(displayP3Red: 241/255.0, green: 242/255.9, blue: 243/255.0, alpha: 1)
        view.backgroundColor = fgColor(R: 241, G: 242, B: 243)
        let bt = UIButton()
        
        navigationback(navigationItem: navigationItem, vc: self, imageView: bt)
        
        bt.addTarget(self, action: #selector(backc), for: .touchUpInside)
        
        navigationTitle(navigationItem: navigationItem, title: "更改密碼")
        addView()
        // Do any additional setup after loading the view.
    }
    @objc func backc() ->Void{
        
        print("仿版")
        self.navigationController?.popViewController(animated: true)
    }
        
    func addView() -> Void {
        
        
        let bgView = UIView(frame: CGRect(x: 0, y: 0, width: view.width, height: view.height*2/3))
        
        bgView.backgroundColor = UIColor.white
        
        view.addSubview(bgView)
        
        let titleSrray = ["现有密码","新密码","再输入密码"] as Array<Any>
        
        
        for i in 0...titleSrray.count-1 {
            
            
            let newpasswLabel = UILabel(frame: CGRect(x:bgView.width/6 , y: bgView.height/5 + CGFloat(i*50), width: bgView.width/3, height: 40))
            
         //   newpasswLabel.backgroundColor = UIColor.yellow
            
            newpasswLabel.textAlignment = NSTextAlignment.center
            
            newpasswLabel.text = titleSrray[i] as? String
            //fgColor(R: 9, G: 87, B: 174)
            newpasswLabel.textColor = fgColor(R: 9, G: 87, B: 174)
            
            bgView.addSubview(newpasswLabel)
            
            let newTexgFiled = UITextField(frame: CGRect(x: newpasswLabel.frame.maxX+5, y: newpasswLabel.y, width:  bgView.width/3, height: 40))
            
            newTexgFiled.placeholder = titleSrray[i] as? String
            
            newTexgFiled.isSecureTextEntry = true
            
            bgView.addSubview(newTexgFiled)
            
            let newView = UIView(frame: CGRect(x: 20, y: newpasswLabel.frame.maxY+2 , width: bgView.width-40, height: 2))
            
            newView.backgroundColor = fgColor(R: 241, G: 242, B: 243)
            
            bgView.addSubview(newView)
            
            
            
            
            
        }
        
      
        
        let submitButton = UIButton(frame: CGRect(x: 20, y: bgView.height/5 + CGFloat(4*50), width: bgView.width-40, height: 40))
        
        submitButton.addTarget(self, action: #selector(submitClick), for: .touchUpInside)
        
        //fgColor(R: 9, G: 87, B: 174)
        submitButton.backgroundColor = fgColor(R: 9, G: 87, B: 174)
        
        submitButton.setTitle("递交", for: .normal)
        
        
        bgView.addSubview(submitButton)
        
        
        
        
    }
    
   @objc func submitClick() -> Void {
        
        
        print("点击");
        
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
