//
//  LeftView.swift
//  jobSwitf
//
//  Created by bidiao on 2017/12/22.
//  Copyright © 2017年 bidiao. All rights reserved.
//

import UIKit
// 1.定义一个闭包类型
//格式: typealias 闭包名称 = (参数名称: 参数类型) -> 返回值类型
typealias callblack = (_ fromselecint:Int,_ tomseleicint:Int)->Void

//协议
protocol HYleftViewDelegate {
    
    func leftMenu(fromIndex:Int,toIndex:Int) -> Void
}

class LeftView: UIView {
    
    var myfunc : callblack?
    
    var myButton = UIButton()
    
    var string:String!
    
    var leftdelet:HYleftViewDelegate? {
        
        
        willSet{
            
            //
            NSLog("==========")
            
        }
        didSet{
            
          clickselect(btn: self.subviews.first as! UIButton)
        }
        
      
        
        
    }
    
    
    
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        
        self.backgroundColor = UIColor.yellow
        
        
        self.settitle(title: "", bgcolor: UIColor.white)
        
        self.settitle(title: "求职记录", bgcolor: UIColor.white)
        
        self.settitle(title: "语      言", bgcolor: UIColor.white)
        
        self.settitle(title: "使用说明", bgcolor: UIColor.white)
        
        self.settitle(title: "更改密码", bgcolor: UIColor.white)
        
        self.settitle(title: "退      出", bgcolor: UIColor.white)
        
       
      //   clickselect(btn: self.subviews.first as! UIButton)
    }
    
    
    func settitle(title:String,bgcolor:UIColor) -> Void {
        
        
        let btn = UIButton()
        
        btn.tag = subviews.count
        
        btn.setTitle(title, for: .normal)
        
        btn.backgroundColor = bgcolor
        
        btn.setTitleColor(UIColor.gray, for: .normal)
        
        self.addSubview(btn)
        
        btn.addTarget(self, action:#selector(clickselect(btn:)), for:UIControlEvents.touchUpInside)
        
        if btn.tag==0 {
            
            //print("ddd3")
            btn.imageView?.contentMode = .scaleAspectFit
            
            let image = UIImage(named: "ti")
            
            btn.setImage(image, for: .normal)
            
            //btn.setImage(image, for: .normal)
           // btn.backgroundColor = UIColor.red
            btn.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 20, 0)
            
        }else{
            
            
            
            
            
            
        }
        
       // btn.addTarget(self, action: Selector("clickselect(btn: )"), for: UIControlEvents.touchUpInside)
        
      //  mybutton.addTarget(self, action: #selector(clika), for: UIControlEvents.touchUpInside)
        
        
        
     //   return btn
        
        
    }
    
    
    
    @objc func clickselect(btn:UIButton) -> Void {
        
 
        
        
        
        if myfunc != nil {
            
            myfunc!(myButton.tag,btn.tag)
        
        }
        
        leftdelet?.leftMenu(fromIndex: myButton.tag,toIndex: btn.tag)
        
        print("对")
        
                myButton.isSelected = false
        
        btn.isSelected = true
        
        myButton = btn
        
    }
    
    
    func callBackBlock(_ block: @escaping callblack) {
         
        myfunc = block
    }
    
    
    //3. 定义一个方法,方法的参数为和swiftBlock类型一致的闭包,并赋值给callBack
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let bgConut = subviews.count
        
       
        
        //btwRect.width = self.frame.width;
        
        let cont:CGFloat = CGFloat(bgConut)
        
        let btnW:CGFloat = self.frame.size.width
        
        let btnH:CGFloat = (self.frame.size.height-100)/cont
        
        
        
        for i in 0...bgConut-1 {
            
            if i == 0{
                let btn = subviews[i]
                
                btn.frame.size.width = btnW
                
                btn.frame.size.height = btnW
                
                btn.frame.origin.y = CGFloat(i*Int(btnH))
                
            }else{
            
            
            
            let btn = subviews[i]
            
            btn.frame.size.width = btnW
            
            btn.frame.size.height = btnH
            
            btn.frame.origin.y = CGFloat(i*Int(btnH)+100)
//

            }
            
            
        }
        
     
        
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
