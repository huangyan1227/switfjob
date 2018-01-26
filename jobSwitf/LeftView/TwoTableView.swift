//
//  TwoTableView.swift
//  jobSwitf
//
//  Created by bidiao on 2018/1/12.
//  Copyright © 2018年 bidiao. All rights reserved.
//

import Foundation
import UIKit

class TwoTableViewCell:UITableViewCell {
    
    
    
    var isState:Bool!
    
    let labeltitle = UILabel()
    
    let datelabel = UILabel()
    
    let jilulabel = UILabel()
    
    let clickbutton = UIButton()
    
  public  var titelString:String?{
        
        willSet{
            
            
        }
        
        didSet{
            
            
            labeltitle.text = titelString
        }
    }
    
 public   var progressString:String? {
        
        willSet {
            
            
        }
        didSet {
            
            clickbutton.setTitle(progressString, for: .normal)
            
            clickbutton.setTitleColor(UIColor.lightGray, for: .normal)
            
            if isState {
                
               
                
                
            }else{
                
                
            }
            
            
            
        }
        
    }
    
    
 public var dateString:String? {
        
        willSet{
            
            //
          //  NSLog("==========")
            
        }
        didSet{
            
           datelabel.text = dateString
        }
        
        
    }
    
    
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
      //  labeltitle.backgroundColor = UIColor.yellow
        
        labeltitle.textColor = UIColor.init(red: 0/255.0, green: 100/255.0, blue: 181/255.0, alpha: 1)
        
        labeltitle.font = UIFont(name: "Helvetica-Bold", size: 22)
        
        labeltitle.textAlignment = .center
        
        datelabel.textAlignment = .center
        
      //  datelabel.backgroundColor = UIColor.red
        
       // clickbutton.backgroundColor = UIColor.green
        
        jilulabel.textAlignment = .center
        
        contentView.addSubview(labeltitle)
        
        contentView.addSubview(datelabel)
        
        contentView.addSubview(jilulabel)
        
        contentView.addSubview(clickbutton)
        
        
        let accesImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 60, height: 60))
        
         accesImageView.image = UIImage(named: "icon_RHS_circle_arrow_employee")
        
        
        
        accessoryView = accesImageView
        
        self.accessoryType = .disclosureIndicator
        
        self.selectionStyle = .none
        
    }
    
    override func layoutSubviews() {
        
        super.layoutSubviews()
        
       labeltitle.frame = CGRect(x: 10, y: 10, width: contentView.width/3, height: contentView.height/2-10)
        
       datelabel.frame = CGRect(x: 10, y: labeltitle.frame.maxY + 5, width: contentView.width/3, height: contentView.height/2-10)
        
        clickbutton.frame = CGRect(x: datelabel.frame.maxX+50, y: labeltitle.frame.height/2, width: contentView.width/3, height: contentView.height/3)
        
        clickbutton.centerY = contentView.height/2
        
        if isState {
            
       
            
            clickbutton.layer.borderWidth = 1
            
            clickbutton.layer.borderColor = UIColor.lightGray.cgColor
            
            
            
        }else{
          
//            jilulabel.frame =  CGRect(x: datelabel.frame.maxX+50, y: labeltitle.frame.height/2, width: contentView.width/3, height: contentView.height/3)
            
            
        }
        
    
        
        
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    
    
    
    
    
}
