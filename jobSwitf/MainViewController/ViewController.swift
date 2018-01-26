//
//  ViewController.swift
//  jobSwitf
//
//  Created by bidiao on 2017/12/22.
//  Copyright © 2017年 bidiao. All rights reserved.
//

import UIKit

class ViewController: UIViewController,HYleftViewDelegate {
    
   // var mybutton = UIButton()
    var showNavigationCotroller = UINavigationController()
    var firstVC = FirstViewController()
    var logisTure:Bool!
    
    struct Language: Codable {
        var name: String
        var version: Int
    }
    
    func sum(number1 x:Int, number2 y:Int) -> Int {
        
        return x + y
    }
    
    func sum3(x:Int = 4,y:Int = 3) -> Int {
        
        return x+y
    }
    
    func testFunction(textblock:(_ x:Int,_ y:Int)->Void) -> Void {
        
        
        
        print(textbl
            ock(342,4))
        
     // print(s)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        print(sum(number1: 3, number2: 4))
//
//        print(sum3(x: 3, y: 5))
//
//        print(sum3())
//
//        print(sum3(x: 555))
//
//        print(sum3(y:44))
        
        
//        testFunction {
//
//        }
        
        testFunction { (d, s) in
            
            
            print(d + s)
            
        }
        
        let sum4 = {  (x:Int,y:Int) -> Int in
            
            
            return x + y
            
            
        }
        
        
        print(sum4(3, 0))
        
        print(sum4(3,4))
        
        print(sum4(3, 4))
        
        return;
        
        let values = "abcdefg"
        let startSlicingIndex = values.index(values.startIndex, offsetBy: 3)
        let subvalues = values[startSlicingIndex...]
      
        print(subvalues)
        
        let abc:String = "abc"
        print(String(abc.reversed()))
        for c in abc {
            
            print(c)
        }
        
        let switf = Language(name: "App", version: 34)
        
        
        if let encoded = try? JSONEncoder().encode(switf) {
            
            let va = NSString(data: encoded, encoding: String.Encoding.utf8.rawValue)
            
            let dic:NSDictionary = getDictionaryFromJSONString(jsonString: va! as String) as NSDictionary
            
            print(encoded.description)
            
            print(dic["name"]!)
        }
        
        
        
        
        
        
        
        
        logisTure = false
        
          lefView()
           addChildViewControllerm()
        
    
        
           menuddidSelectedButtonFromIndex(fromIndex: 0, toIndex: 0)
        
           let mybutton = UIButton()



      

       mybutton.addTarget(self, action: #selector(clikd(btn:)), for: UIControlEvents.touchUpInside)
        getDate()
        
    }
    
    
    func getDictionaryFromJSONString(jsonString:String) -> NSDictionary {
        
        let jsonSata:Data = jsonString.data(using: .utf8)!
        
        let dic = try? JSONSerialization.jsonObject(with: jsonSata, options: .mutableContainers)
        
        if dic != nil {
            
            return dic as! NSDictionary
        }
        
        
        return NSDictionary()
        
    }
    
    func getDate() -> Void {
        
       // let flags:NSCalendar.Unit = <#value#>
        
//        let components = NSCalendar.current.component(UInt8(NSCalendar.Unit.year.rawValue) | UInt8(NSCalendar.Unit.month.rawValue) | UInt8(NSCalendar.Unit.day.rawValue) | UInt8(NSCalendar.Unit.hour.rawValue) | UInt8(NSCalendar.Unit.minute.rawValue), from: NSDate())
//
//        let curCalendar:NSCalendar = current.currentCalendar
//        let componentYear:Int = curCalendar.component(NSCalendar.Unit.Year, from: self)
        
      //  let calendar = NSCalendar.current
        
//        let dateComponents = calendar.components([NSCalendar.Unit, NSCalendar.Unit.Month, NSCalendar.Unit.Year, NSCalendar.Unit.WeekOfYear, NSCalendar.Unit.Hour, NSCalendar.Unit.Minute], fromDate: NSDate())
//
//        print("day = \(dateComponents.day)", "month = \(dateComponents.month)", "year = \(dateComponents.year)", "week of year = \(dateComponents.weekOfYear)", "hour = \(dateComponents.hour)", "minute = \(dateComponents.minute)", "second = \(dateComponents.second)", "nanosecond = \(dateComponents.nanosecond)" , separator: ", ", terminator: "")
        
        
           let calendera =   NSCalendar.current.component(Calendar.Component.year, from: NSDate() as Date)
        
         let calenderb = NSCalendar.current.dateComponents([Calendar.Component.month,Calendar.Component.day,Calendar.Component.year,Calendar.Component.hour,Calendar.Component.minute,Calendar.Component.weekday], from: NSDate() as Date)
//
//        let dateComponents = NSDateComponents()
//        let day = dateComponents.day
//        let month = dateComponents.month
//
//        print("The difference between dates is: \(dateComponents.year) years, \(dateComponents.month) months, \(dateComponents.day) days, \(dateComponents.hour) hours, \(dateComponents.minute) minutes, \(dateComponents.second) seconds")

        
        //[NSCalendar.Unit, NSCalendar.Unit.Month, NSCalendar.Unit.Year, NSCalendar.Unit.WeekOfYear, NSCalendar.Unit.Hour, NSCalendar.Unit.Minute]
        
        //[Calendar.Component.month,Calendar.Component.day,Calendar.Component.year]
//        let dateCompontets = NSDateComponents().calendar?.component(.year, from: NSDate() as Date)
        
//        let calender = NSCalendar.components([NSCalendar.Unit.year,NSCalendar.Unit.month,NSCalendar.Unit.day,NSCalendar.Unit.hour,NSCalendar.Unit.minute], from: NSDate() as Date)
//
     //   let components  = NSCalendar.current.components([NSCalendar.Unit.year,NSCalendar.Unit.month,NSCalendar.Unit.day,NSCalendar.Unit.hour,NSCalendar.Unit.minute], from: NSDate() as Date)
        //components.year;
        
     //   print(dateCompontets ?? <#default value#>)
        print(calendera  )
        print(calenderb.year!)
        print(calenderb.month!)
        print(calenderb.day!)
        print(calenderb.hour!)
        print(calenderb.minute!)
        print(calenderb.weekday!)
        
    }
    func lefView() -> Void {
        
        let leftview = LeftView(frame: CGRect(x: 0, y: 60, width: 200, height: 400))
        
        leftview.x = 0;
        
        view.insertSubview(leftview, at: 0)
        
        leftview.leftdelet = self//委托方
        
        leftview.callBackBlock { (str,tofromint) in
            
           // self.menuddidSelectedButtonFromIndex(fromIndex: str, toIndex: tofromint)
            
      
                
              //  self.disMovViewControllerView()
         
        }
        
        
    }
    func leftMenu(fromIndex: Int, toIndex: Int) {
       // print( "ddef\(fromIndex)" )
        
      //  print( "defeg\(toIndex)")
        
        switch toIndex {
        case 0:
      //  firstVC.navigationController?.pushViewController(LogViewController(), animated: true)
      if logisTure{
    firstVC.present(LogViewController(), animated: true, completion: nil)
        
        
          }
      
      logisTure = true
            break
            
        case 1:
        
           // print("\(toIndex) dkef")
    firstVC.navigationController?.pushViewController(TwoViewController(), animated: true)
        
   
    
            break
            
        case 2:
        
         print("\(toIndex) se333dkef")
        firstVC.navigationController?.pushViewController(ThreeViewController(), animated: true)
            break
            
        case 3:
            
        firstVC.navigationController?.pushViewController(FourViewController(), animated: true)
            break
        case 4:
            
        firstVC.navigationController?.pushViewController(FiveViewController(), animated: true)
            
             break
        case 5:
            break
            
        default:
            break
        }
        
        
        disMovViewControllerView()
        
        
     //   menuddidSelectedButtonFromIndex(fromIndex: fromIndex, toIndex: toIndex)
    }
    func addChildViewControllerm() -> Void {
        
        print("addChildViewControllerm")
        let oneViewController = FirstViewController()
        
        oneViewController.view.backgroundColor = UIColor.red
        
        firstVC = oneViewController
            
        addOneChilldVc(chilVc: oneViewController, title: "首页", imageString: "", selcteImageName: "")
        
//
//        let twoViewController = TwoViewController()
//
//        twoViewController.view.backgroundColor = UIColor.yellow
//
//        addOneChilldVc(chilVc: twoViewController, title: "求职记录", imageString: "", selcteImageName: "")
//
//
//        let threeViewController = ThreeViewController()
//
//        threeViewController.view.backgroundColor = UIColor.white
//
//        addOneChilldVc(chilVc: threeViewController, title: "语    言", imageString: "", selcteImageName: "")
//
//        let fourViewController = FourViewController()
//
//        //fourViewController.view.backgroundColor = UIColor.green
//
//
//        addOneChilldVc(chilVc: fourViewController, title: "使用说明", imageString: "", selcteImageName: "")
//
//        let fiveViewController = FiveViewController()
//
//       // fiveViewController.view.backgroundColor = UIColor.green
//
//
//        addOneChilldVc(chilVc: fiveViewController, title: "更改密码", imageString: "", selcteImageName: "")
//
//        let sixViewController = UIViewController()
//
//        sixViewController.view.backgroundColor = UIColor.green
//
//
//        addOneChilldVc(chilVc: sixViewController, title: "退   出", imageString: "", selcteImageName: "")
//
//
//
        
        
        
        
        
        
        
    }
    func addOneChilldVc(chilVc:UIViewController,title:String,imageString:String ,selcteImageName:String) -> Void {
        
       // chilVc.tabBarItem.image =
        
  //  chilVc.navigationController?.navigationBar.titleTextAttributes =
        
      //  let attributedstrin = NSMutableAttributedString(string: title, attributes: [ NSAttributedStringKey.foregroundColor : UIColor.white])
      chilVc.navigationItem.title = title;
        
  //  chilVc.navigationController?.navigationBar.titleTextAttributes =  [ NSAttributedStringKey.foregroundColor : UIColor.white]
        
        
       // chilVc.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector((child)))
        
        chilVc.navigationItem.leftBarButtonItem =  UIBarButtonItem().itembarbuttonWith(imageName: "icon_inner_navigation", target: self, action: #selector((child)))
        let navigationColler = HYNavigationViewController(rootViewController: chilVc)
        
       
        self.addChildViewController(navigationColler)
        
    }
    
    @objc func child() -> Void {
        
        UIView.animate(withDuration: 0.5) {
            
            
            let aview = self.showNavigationCotroller.view
            
            let navi = UIScreen.main.bounds.size.height - 2*60
            
            let scale = navi/UIScreen.main.bounds.size.height
            
            let leftMenuMargin = UIScreen.main.bounds.size.width*(1-scale)*0.5
            
            let transslateX = 200 - leftMenuMargin
            
            let topMargin = UIScreen.main.bounds.size.height * (1-scale)*0.5
            
            let transTateY = topMargin - 60
            
            let transLateFrom = CGAffineTransform(translationX: transslateX/scale, y: transTateY/scale)
            
            aview?.transform = transLateFrom
            
            
            let covie = UIButton(frame: (aview?.bounds)!)
            
            covie.addTarget(self, action: #selector(self.coverClick(btn:)), for: .touchUpInside)
            
            
            covie.tag = 100
            
            aview?.addSubview(covie)
            
            
            
            
            
            
            
            
            
            
            
            
        }
        
    }
    @objc func coverClick(btn:UIView) -> Void {
        
        UIView.animate(withDuration: 0.5, animations: {
            self.showNavigationCotroller.view.transform = CGAffineTransform.identity
            
        }) { (bool) in
            
            
            btn.removeFromSuperview()
        }
        
        
        
    }
    
    
    func disMovViewControllerView() -> Void {
        
        UIView.animate(withDuration: 0.5, animations: {
            self.showNavigationCotroller.view.transform = CGAffineTransform.identity
            
        }) { (bool) in
            
            
            self.showNavigationCotroller.view.viewWithTag(100)?.removeFromSuperview()
        }
        
    }
    
    func menuddidSelectedButtonFromIndex(fromIndex:NSInteger,toIndex:NSInteger) -> Void {
        
        
        let oildNav = self.childViewControllers[fromIndex]
        
        oildNav.view.removeFromSuperview()
        
        let newNav = self.childViewControllers[toIndex]
        
        view.addSubview(newNav.view)
        
        newNav.view.transform = oildNav.view.transform
        
        newNav.view.layer.shadowColor = UIColor.black.cgColor
        
        newNav.view.layer.shadowOffset = CGSize(width: -3, height: 0)
        
        newNav.view.layer.shadowOpacity = 0.4
        
        showNavigationCotroller = newNav as! UINavigationController
        
     //   let ni =  newNav.view.viewWithTag(100)
        
//        if toIndex == 0 {
//             coverClick(btn: newNav.view.viewWithTag(100)!)
//        }
        
//
        //disMovViewControllerView()
        
     //   if (ni != nil){
   ////
      //      print("kong")
            
      //  }
        
//        self.showNavigationCotroller.view.viewWithTag(100)?.removeFromSuperview()
       // coverClick(btn:showNavigationCotroller.view.viewWithTag(100)!)
        
    }
    @objc func clika(btn:UIButton) -> Void {
        
        
        print(btn.tag)
    }
   
    @objc func clikd(btn:UIButton) -> Void {
        
        
        print(btn.tag)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

