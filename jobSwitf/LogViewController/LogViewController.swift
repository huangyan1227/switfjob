//
//  LogViewController.swift
//  jobSwitf
//
//  Created by bidiao on 2018/1/18.
//  Copyright © 2018年 bidiao. All rights reserved.
//

import UIKit

class LogViewController: UIViewController,UITextFieldDelegate {

    var logView = UIView()
    var textUserName = UITextField()
    var textPassword = UITextField()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        
        let imagggeView = UIImageView(frame: view.frame)
        
        imagggeView.image = UIImage(named: "backgroup_logo_employee")
        
        view.addSubview(imagggeView)
        
        
        addLogView()
        // Do any additional setup after loading the view.
    }
    
    func addLogView() -> Void {
        
        
        
        logView = UIView(frame: CGRect(x: 30, y: 260, width: view.width-60, height: view.height - 260))
        
        logView.backgroundColor = UIColor.clear
        
        view.addSubview(logView)
        
        textUserName = UITextField(frame: CGRect(x: 0, y: 20, width: logView.width, height: 44))
        
        addtextfiled(textFiled: textUserName, textString: "", placeholdertext: "  用户名称", imageString: "icon_login")
        
        textPassword = UITextField(frame: CGRect(x: 0, y:textUserName.frame.maxY+10, width: logView.width, height: 44))
        
        
        addtextfiled(textFiled: textPassword, textString: "", placeholdertext: "  密码", imageString: "icon_password")
        
        
        textPassword.isSecureTextEntry = true
        
        
        let rememberclick = UIButton(frame: CGRect(x: 0, y: textPassword.frame.maxY+10, width: 30, height: 30))
        
        let image = UIImage(named: "icon_tick_box")
        
        rememberclick.setBackgroundImage(image, for: .normal)
        
        rememberclick.addTarget(self, action: #selector(remberClick(btn:)), for: .touchUpInside)
        
        logView.addSubview(rememberclick)
        
        let labeString = UILabel(frame: CGRect(x: rememberclick.frame.maxX+10, y: rememberclick.y, width: logView.width-60, height: 30))
        
        labeString.text = "記住我的密碼"
        
        labeString.textColor = UIColor.white
        
        logView.addSubview(labeString)
        
        let logButton = UIButton(frame: CGRect(x: rememberclick.x, y: labeString.frame.maxY+10, width: logView.width, height: 50))
        
        logView.addSubview(logButton)
        
        logButton.addTarget(self, action: #selector(log), for: .touchUpInside)
        
        logButton.backgroundColor = UIColor.white
        
        logButton.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 23)
        
        logButton.setTitle("登入", for: .normal)
        
        logButton.setTitleColor(fgColor(R: 0, G: 97, B: 179), for: .normal)
        
        logButton.layer.cornerRadius = 12;
        
        
    }
    
    @objc func log() -> Void {
        
       // self.navigationController?.popViewController(animated: true)
        
        self.dismiss(animated: true, completion: nil)
    }
    
    
  @objc  func remberClick(btn:UIButton) -> Void {
        
        print("价格")
        
    }
    func addtextfiled(textFiled:UITextField,textString:String,placeholdertext:String,imageString:String) -> Void {
        
        textFiled.delegate = self
        
        textFiled.textColor = UIColor.white
        
        let attribute=NSMutableAttributedString(string: placeholdertext, attributes: [NSAttributedStringKey.foregroundColor:UIColor.white])
        
        textFiled.attributedPlaceholder = attribute
        
        textFiled.clearButtonMode = UITextFieldViewMode.whileEditing
        
        textFiled.leftViewMode = .always
        
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
        
        imageView.image = UIImage(named: imageString)
        
        textFiled.leftView = imageView
        
        logView.addSubview(textFiled)
        
        let lineView = UIView(frame: CGRect(x: textFiled.x, y: textFiled.frame.maxY+2, width: textFiled.width, height: 2))
        
        lineView.backgroundColor = UIColor.white
        
        logView.addSubview(lineView)
        
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
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
