//
//  UIView.swift
//  jobSwitf
//
//  Created by bidiao on 2017/12/22.
//  Copyright © 2017年 bidiao. All rights reserved.
//

import Foundation
import UIKit


extension UIView {
    
    public var x:CGFloat{
        
        get{
            
            return self.frame.origin.x
        }
        
        set {
            
            var r = self.frame
            
            r.origin.x = newValue
            
            self.frame = r
            
        }
    }
    public var y: CGFloat{
        get{
            return self.frame.origin.y
        }
        set{
            var r = self.frame
            r.origin.y = newValue
            self.frame = r
        }
    }
    /// 右边界的x值
    public var rightX: CGFloat{
        get{
            return self.x + self.width
        }
        set{
            var r = self.frame
            r.origin.x = newValue - frame.size.width
            self.frame = r
        }
    }
    /// 下边界的y值
    public var bottomY: CGFloat{
        get{
            return self.y + self.height
        }
        set{
            var r = self.frame
            r.origin.y = newValue - frame.size.height
            self.frame = r
        }
    }
    
    public var centerX : CGFloat{
        get{
            return self.center.x
        }
        set{
            self.center = CGPoint(x: newValue, y: self.center.y)
        }
    }
    
    public var centerY : CGFloat{
        get{
            return self.center.y
        }
        set{
            self.center = CGPoint(x: self.center.x, y: newValue)
        }
    }
    
    public var width: CGFloat{
        get{
            return self.frame.size.width
        }
        set{
            var r = self.frame
            r.size.width = newValue
            self.frame = r
        }
    }
    public var height: CGFloat{
        get{
            return self.frame.size.height
        }
        set{
            var r = self.frame
            r.size.height = newValue
            self.frame = r
        }
    }
    
    
    public var origin: CGPoint{
        get{
            return self.frame.origin
        }
        set{
            self.x = newValue.x
            self.y = newValue.y
        }
    }
    
    public var size: CGSize{
        get{
            return self.frame.size
        }
        set{
            self.width = newValue.width
            self.height = newValue.height
        }
    }
    
}
func fgColor(R:CGFloat,G:CGFloat,B:CGFloat) -> UIColor {
    
    
    return UIColor(displayP3Red: R/255.0, green: G/255.0, blue: B/255.0, alpha: 1)
    
}

 func navigationTitle(navigationItem:UINavigationItem,title:String){
    
    let labeltitle = UILabel(frame: CGRect(x: 0, y: 0, width: 80, height: 40))
    
    labeltitle.textColor = UIColor.white
    
    labeltitle.textAlignment = .center
    
    labeltitle.font = UIFont(name: "Helvetica-Bold", size: 22)
    
    labeltitle.text = title
    
    navigationItem.titleView = labeltitle
    
    
    
    
}

func navigationback(navigationItem:UINavigationItem,vc:UIViewController,imageView:UIButton){
    
   // UIButton * imageView =[[UIButton alloc ]initWithFrame:CGRectMake(0, 0, 40, 40)];
    
    // imageView = UIButton(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
    
    imageView.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
    
    
   // UIImage *image = [UIImage imageNamed:@"icon_LHS_white_arrow"];
    
    let image = UIImage(named: "icon_LHS_white_arrow")
    
    imageView.setImage(image, for: .normal) ;
    
   // [imageView addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    
   // imageView.addTarget(vc, action: #selector(backc), for: .touchUpInside)
    
    let back = UIBarButtonItem.init(customView: imageView);
    
    
    
    vc.navigationItem.hidesBackButton = true;
    
    vc.navigationItem.leftBarButtonItem = back;
    
    
    
    
}
//func backc() ->Void{
//
//
//
//
//}

extension UIBarButtonItem{
    
    //itemWithImageName:(NSString *)imageName target:(id)target action:(SEL)action
  public  func itembarbuttonWith(imageName:String,target:Any,action:Selector) -> UIBarButtonItem {
        
        
        
        let button = UIButton()
        
        let image = UIImage(named: imageName)
        
        
        button.setBackgroundImage(image, for: .normal)
        
        button.size = (button.currentBackgroundImage?.size)!
        
        
        button.addTarget(target, action: action, for: .touchUpInside)
        
        
        button.isHighlighted = false
    
        
        return UIBarButtonItem(customView: button)
    }
    
    
    
    
    
    
    
    
    
    
}
    

