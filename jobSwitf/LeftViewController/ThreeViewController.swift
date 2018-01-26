//
//  ThreeViewController.swift
//  jobSwitf
//
//  Created by bidiao on 2018/1/8.
//  Copyright © 2018年 bidiao. All rights reserved.
//

import UIKit

class ThreeViewController: UIViewController {
    
    var tradButton = UIButton()
    
    var englishButton = UIButton()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        let bt = UIButton()
        
        navigationback(navigationItem: navigationItem, vc: self, imageView: bt)
        
        bt.addTarget(self, action: #selector(backc), for: .touchUpInside)
        
        
      navigationTitle(navigationItem: navigationItem, title: "語 言")
        // Do any additional setup after loading the view.
        addlanguage()
    }
    @objc func backc() ->Void{
        
       
        self.navigationController?.popViewController(animated: true)
        
    }
    func addlanguage() -> Void {
        
        let  traditionallanguage = UIButton(frame: CGRect(x: 5, y: 10, width: view.width-20, height: 40))
        
        view.addSubview(traditionallanguage)
        

        
        
        tradButton = traditionallanguage
        
        
        addButton(title:"繁體" , actiaon: #selector(tradClick(btn:)), button: traditionallanguage)
        //traditionallanguage.setTitle("繁體", for: .normal)
        
        
        let  englishlanguage = UIButton(frame: CGRect(x: 5, y: 50, width: view.width-20, height: 40))
        
        view.addSubview(englishlanguage)
        
      addButton(title:"英文" , actiaon: #selector(englist(btn:)), button: englishlanguage)
        
        
        englishButton = englishlanguage
        
    }
    @objc func tradClick(btn:UIButton) -> Void {
        
        btn.isSelected = !btn.isSelected
        
        
        if btn.isSelected{
            
            englishButton.isSelected = false
            
        }
        
        print("安撫")
        
        
    }
    @objc func englist(btn:UIButton) ->Void {
        
        btn.isSelected = !btn.isSelected
        
        if btn.isSelected {
            
            
            tradButton.isSelected = false
            
            
        }
        
        print("安2撫")
        
    }
    func addButton(title:String,actiaon:Selector,button:UIButton) -> Void {
        
      
        button.setTitle(title, for: .normal)
        
        button.addTarget(self, action: actiaon, for: .touchUpInside)
        
        button.setImage( UIImage(named: "d"), for: .selected)
       
     //   button.setImage( UIImage(named: <#T##String#>), for:  .normal)
        
        button.contentHorizontalAlignment = .left
        
        button.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 20)
        
        button.setTitleColor(UIColor.gray, for: .normal)
        
    // UIImage(named: <#T##String#>)
        
        
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
