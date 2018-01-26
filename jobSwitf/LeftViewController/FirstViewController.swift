//
//  FirstViewController.swift
//  jobSwitf
//
//  Created by bidiao on 2017/12/25.
//  Copyright © 2017年 bidiao. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController,UIScrollViewDelegate {

    let kNaHeight:CGFloat = UIApplication.shared.statusBarFrame.size.height > 20 ? 20:0
    let KScreenW:CGFloat = UIScreen.main.bounds.size.width
    
    let KScreemH:CGFloat = UIScreen.main.bounds.size.height
    
    var titleScrollView = UIScrollView()
    
    var contentScrollView = UIScrollView()
    
    let titleH:CGFloat = 44.0
    
    var seltitleButton = UIButton()
    
    
    lazy var buttons = NSMutableArray()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let btn = UIButton(frame: CGRect(x: 20, y: 59, width: 200, height: 100))
        
        btn.addTarget(self, action:#selector(click) , for: .touchUpInside)
        
//    self.navigationController?.navigationBar.setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.orange], for: .highlighted);
        // 系统默认是12号字，修改字体大小要设置normal
//
//        let attributes = NSMutableAttributedString(string: "3rww", attributes: [NSAttributedStringKey : Any]?)
//        NSAttributedStringKey.underlineColor:
//
      //  self.navigationController?.navigationBar.titleTextAttributes
       // vc.tabBarItem.setTitleTextAttributes([NSFontAttributeName: UIFont.systemFont(ofSize: 12)], for: .normal);
        
       // let font = UIFont(name: "SourceSansPro-Regular", size: 22)
  
      //title = "斯柯达"
        
    
      //  navigationController?.navigationItem.title = "dd"
  //  print("defs")
//   navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor:UIColor.orange,NSAttributedStringKey.font : UIFont.systemFont(ofSize: 25)]
        
       // self.navigationItem.titleTextAttributes = [NSAttributedStringKey.foregroundColor:UIColor.orange,NSAttributedStringKey.font : UIFont.systemFont(ofSize: 25)]
       
        //self.navigationItem.title = "dfef"
        
     //   let a = NSAttributedString(string: "daef", attributes: [NSAttributedStringKey.foregroundColor:UIColor.orange,NSAttributedStringKey.font : UIFont.systemFont(ofSize: 25)])
        
      //  a.
        let labeltitle = UILabel(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        
        labeltitle.text = "ddfe"
        
        labeltitle.textColor = UIColor.white
        
        
        
        
        self.navigationItem.titleView = labeltitle
        
        //self.navigationController?.navigationBar.titleTextAttributes = a
        
        //  self..titleTextAttributes = [NSAttributedStringKey.foregroundColor:UIColor.orange,NSAttributedStringKey.font : UIFont.systemFont(ofSize: 25)]
        //self.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.foregroundColor:UIColor.white], for: .normal)
        //navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor:UIColor.white,NSAttributedStringKey.font : UIFont.systemFont(ofSize: 25)]
       // self.navigationController?.navigationBar.tintColor = UIColor.white
    //navigationController?.navigationItem.title = "dfe"
        
       // view.addSubview(btn)
        
        btn.backgroundColor = UIColor.yellow
        // Do any additional setup after loading the view.
        
        setuptitleScrollView()
        setupContentScrollView()
        addChildView()
        setupTitle()
        
      //  self.automaticallyAdjustsScrollViewInsets = false;
        
        
        
       // self.contentInsetAdjustmentBehavior  = false
        
        contentScrollView.contentSize = CGSize(width: CGFloat(self.childViewControllers.count) * KScreenW, height: 0)
        
        contentScrollView.isPagingEnabled = true
        
        contentScrollView.showsHorizontalScrollIndicator = false
        
        contentScrollView.delegate = self
        
        contentScrollView.alwaysBounceHorizontal = false
        
        
    }
    
    func setuptitleScrollView() -> Void {
        
        let y = (self.navigationController != nil) ? 64+kNaHeight:0
        
        
        let rect = CGRect(x: 0, y: y, width:KScreenW , height: titleH)
        
        let scrollView = UIScrollView(frame: rect)
        
        view.addSubview(scrollView)
        
        titleScrollView = scrollView
        
        titleScrollView.backgroundColor = UIColor.yellow
        
        
        
        
        
        
    }
    //设置内容
    func setupContentScrollView() -> Void {
        
        let y = titleScrollView.frame.maxY
        
        let rect = CGRect(x: 0, y: y, width: KScreenW, height: KScreemH-108-kNaHeight)
        
        contentScrollView = UIScrollView(frame: rect)
        
        view.addSubview(contentScrollView)
        
        contentScrollView.backgroundColor = UIColor.green
        
        contentScrollView.bounces = false
        
        
        
        
        
    }
    //添加子控制器 var cell = tableView.dequeueReusableCellWithIdentifier("IDCell")
    func addChildView() -> Void {
        
        let ka = UIViewController()
        
        ka.view.backgroundColor = UIColor.green
        addChild(title: "首页", vc: ka)
        
        let ka1 = UIViewController()
        
        ka1.view.backgroundColor = UIColor.blue
        
        addChild(title: "科技", vc: ka1)
        
        let ka2 = UIViewController()
        
        ka2.view.backgroundColor = UIColor.orange
        
        addChild(title: "视频", vc: ka2)
        
        let ka3 = UIViewController()
        
        ka3.view.backgroundColor = UIColor.gray
        
         addChild(title: "新闻", vc: ka3)
        let ka4 = UIViewController()
        
        ka4.view.backgroundColor = UIColor.lightGray
        
        addChild(title: "娱乐", vc: ka4)
        
        let ka5 = UIViewController()
        
        ka5.view.backgroundColor = UIColor.blue
        
        addChild(title: "食品", vc: ka5)
        
        let ka6 = UIViewController()
        
        ka6.view.backgroundColor = UIColor.purple
        
        addChild(title: "房产地", vc: ka6)
        
        
        
        
        
        
        
        
    }
   
    func addChild(title:String,vc:UIViewController) -> Void {
        
        vc.title = title
        
        self.addChildViewController(vc)
        
        
    }
    //设置标题
    
    func setupTitle() -> Void {
        
        let count = self.childViewControllers.count
        
        var x:CGFloat = 0
        
        let w:CGFloat = 100
        
        let h = titleH
        
        let contInt = count - 1
        
        for i in 0...contInt {
            
            let vc = self.childViewControllers[i]
            
            x = CGFloat(i) * w
            
            let rect = CGRect(x: x, y: 0, width: w, height: h)
            
            let btn = UIButton(frame: rect)
            
            btn.tag = i
            
            btn.setTitle(vc.title, for: .normal)
            
            btn.setTitleColor(UIColor.black, for: .normal)
            
            btn.titleLabel?.font = UIFont.systemFont(ofSize: 15)
            
            //btn.addTarget(self, action: #selector(btnclick:) for:.)
            
            btn.addTarget(self, action: #selector(btnclick(btn:)), for: .touchUpInside)
            
            titleScrollView.addSubview(btn)
            
            buttons.add(btn)
            
            if i==0 {
                
                btnclick(btn: btn)
            }

            
        }
        
        //let <#name#> = <#value#>
        
        titleScrollView.contentSize = CGSize(width: CGFloat(count) * w, height: 0)
        
        titleScrollView.showsHorizontalScrollIndicator = false
        
        
        
        
        
        
        
    }
    
    
    @objc func btnclick(btn:UIButton) -> Void {
        
        
        selTitleBtn(btn: btn)
        
        let i = btn.tag
        
        let x = CGFloat(i) * KScreenW
        
        setUponeChildViewController(a: CGFloat(i))
   
        contentScrollView.contentOffset = CGPoint(x: x, y: 0)
        
        
        
        
        print("点击\(btn.tag)")
    }
    
    
    func selTitleBtn(btn:UIButton) -> Void {
        
        
        seltitleButton.setTitleColor(UIColor.black, for: .normal)
        
        seltitleButton.transform = CGAffineTransform.identity
        
        btn.setTitleColor(UIColor.red, for: .normal)
        
        btn.transform =  CGAffineTransform(scaleX: 1.3, y: 1.3)
      //  btn.transform = GAffineTransformMakeScale(1.3,1.3)
        seltitleButton = btn
        
        setuPtitleCenter(btn: btn)
        
        
    }
    func setUponeChildViewController(a:CGFloat) -> Void {
        
        
        let concut = self.childViewControllers.count
        
        for i in 0...concut-1 {
            
            let x = CGFloat(i) * KScreenW
            
            let vc = self.childViewControllers[i]
            
//            if vc.view.superview {
//
//                return;
//            }
            
      vc.view.frame = CGRect(x: x, y: 0, width: KScreenW, height: KScreemH-contentScrollView.frame.origin.y)
            
      contentScrollView.addSubview(vc.view)
            
            
        }
        
        
        
        
        
        
        
        
    }
    
    func setuPtitleCenter(btn:UIButton) -> Void {
        
        var offset = btn.center.x - KScreenW * 0.5
        
        if offset < 0 {
            

            offset = 0
        }
        
        let maxOffset = titleScrollView.contentSize.width - KScreenW
        
        if offset > maxOffset {
            
            offset = maxOffset
        }
        let cgpoin = CGPoint(x: offset, y: 0)
        
        
        titleScrollView.setContentOffset(cgpoin, animated: true)
        
    }
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
      //   let i = contentScrollView.contentOffset.x / KScreenW

      //  selTitleBtn(btn: buttons[Int(i)] as! UIButton)
//
//        setUponeChildViewController(a: i)
       // print("Dragging")
    }
    func scrollViewWillBeginDecelerating(_ scrollView: UIScrollView) {
        let i = contentScrollView.contentOffset.x / KScreenW

        selTitleBtn(btn: buttons[Int(i)] as! UIButton)
//
//        setUponeChildViewController(a: i)
       // print("BeginDecelerating")
    }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        
        //print("edededede")
        
        
        let i = contentScrollView.contentOffset.x / KScreenW
        
        selTitleBtn(btn: buttons[Int(i)] as! UIButton)
        
        setUponeChildViewController(a: i)
        
        
        
        
    }
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        
        let i = contentScrollView.contentOffset.x / KScreenW
        
        selTitleBtn(btn: buttons[Int(i)] as! UIButton)
        
    }
    
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        let offsetX = scrollView.contentOffset.x
        
        let leftIndex = offsetX / KScreenW
        
        let rightIndex = leftIndex + 1
        
        let leftButton:UIButton = buttons[Int(leftIndex)] as! UIButton 
        
        var ringt = UIButton()
        
        if rightIndex < CGFloat(buttons.count) {
            
          //  print("ddfe<")
            ringt = buttons[Int(rightIndex)] as! UIButton
            
            
        }else{
            
          //  print(">")
        }
        
        let scaleR = offsetX/KScreenW - leftIndex
        
        let scaleL = 1-scaleR
        
        let transScale = 0.3
        
        
        leftButton.transform = CGAffineTransform(scaleX: scaleL*CGFloat(transScale)+1, y: scaleL * CGFloat(transScale) + 1)
        
        ringt.transform = CGAffineTransform(scaleX: scaleR*CGFloat(transScale)+1, y: scaleR * CGFloat(transScale) + 1)
        
        
       // UIColor *rightColor = [UIColor colorWithRed:scaleR green:0 blue:0 alpha:1];
        
        let rightColor = UIColor.init(red: scaleR, green: 0, blue: 0, alpha: 1)
        
        
       // UIColor *leftColor = [UIColor colorWithRed:scaleL green:0 blue:0 alpha:1];
        
        let leftColor = UIColor.init(red: scaleL, green: 0, blue: 0, alpha: 1)
      //  print("\(scaleR)")
     //   print("\(scaleL)")
        //leftButton setTitleColor:leftColor forState:UIControlStateNormal];
        
        leftButton.setTitleColor(leftColor, for: .normal)
        // [self.vc3.playerView destroyPlayer];
        
       // [rightButton setTitleColor:rightColor forState:UIControlStateNormal];
        ringt.setTitleColor(rightColor, for: .normal)
        
        
        
        
        
        print("滚动中")
        
        
        
    }
    
    
    
    @objc func click() -> Void {
        
        print("点击")
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
