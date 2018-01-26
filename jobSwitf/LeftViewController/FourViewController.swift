//
//  FourViewController.swift
//  jobSwitf
//
//  Created by bidiao on 2018/1/8.
//  Copyright © 2018年 bidiao. All rights reserved.
//

import UIKit

class FourViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = UIColor.white
        
        let bt = UIButton()
        
        navigationback(navigationItem: navigationItem, vc: self, imageView: bt)
        
        bt.addTarget(self, action: #selector(backc), for: .touchUpInside)
        
        
        navigationTitle(navigationItem: navigationItem, title: "使用說明")
        
        
         addLabel()
       
    }
    @objc func backc() ->Void{
        
        
        self.navigationController?.popViewController(animated: true)
        
    }
    func addLabel() -> Void {
        
        let titlelabel = UILabel(frame: CGRect(x: 20, y: 30, width: view.width-40, height: 40))
        
        titlelabel.font = UIFont(name: "Helvetica-Bold", size: 18)
    
        titlelabel.textColor = fgColor(R: 0, G: 100, B: 177)
        
        titlelabel.text = "在JobHire申請工作後·你可以做什麼？"
      
        view.addSubview(titlelabel)
        
        let contentlabel = UILabel()
        
            contentlabel.numberOfLines = 0
        
            contentlabel.text = "1.成功提交工作申請\n\n2.僱主馬上收到申請通知\n\n3.若你被僱用/要求面試(在有需要的情況下)·僱主會在APP內直接按下“聘用”/打電話聯絡你。\n\n4.被聘請後·請確應接受工作·並請準時上工。\n\n5.在APP上·請確應上·下班的簽到。"
        
        let maxSize = CGSize(width: view.width-40, height: CGFloat(MAXFLOAT))
        
        let size = contentlabel.sizeThatFits(maxSize)
        
        
        contentlabel.frame = CGRect(x: 20, y: titlelabel.frame.maxY+10, width:size.width , height: size.height)
       
        contentlabel.textColor = fgColor(R: 118, G: 118, B: 118)
        
        view.addSubview(contentlabel)
        
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
