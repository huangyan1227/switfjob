//
//  TwoViewController.swift
//  jobSwitf
//
//  Created by bidiao on 2017/12/26.
//  Copyright © 2017年 bidiao. All rights reserved.
//

import UIKit

class TwoViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    
  //  let tabaleView = UITableView()
    var workArray = Array<Any>()
    
    lazy var tableView = UITableView(frame: CGRect(x: 0, y: 0, width: view.width, height: view.height-20) , style: .plain)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    //self.title = "我的首页"
        let bt = UIButton()
        
        navigationback(navigationItem: navigationItem, vc: self, imageView: bt)
       
        
      bt.addTarget(self, action: #selector(backc), for: .touchUpInside)
        
        
        navigationTitle(navigationItem: navigationItem, title: "求職記錄")
        addTitle()
        
        // Do any additional setup after loading the view.
    }
    
    @objc func backc() ->Void{
    
    print("仿版")
    self.navigationController?.popViewController(animated: true)
    
    }
    func addTitle() -> Void {
        
//        let labeltitle = UILabel(frame: CGRect(x: 0, y: 0, width: 60, height: 40))
//
//        labeltitle.textColor = UIColor.white
//
//        labeltitle.font = UIFont(name: "Helvetica-Bold", size: 22)
//
//        labeltitle.text = "求职记录"
//        
//        navigationItem.titleView = labeltitle
        
        workArray = WorkStateModel().addWorkdetailsViewname(nameArray: ["侍應","厨房替工","侍應"], dateArray: ["2017-6-8","2017-3-2","2017-14-22"], progress: ["申请中","签到","下班"])
        
        tableView.delegate = self
        
        tableView.dataSource = self
        
        tableView.register(TwoTableViewCell.self, forCellReuseIdentifier: "IDCell")
        
      tableView.estimatedRowHeight = 10
        
        view.addSubview(tableView)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return workArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell:TwoTableViewCell = tableView.dequeueReusableCell(withIdentifier: "IDCell", for: indexPath) as! TwoTableViewCell
        
        if cell.isEqual(nil)  {
            
            cell = TwoTableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "IDCell")
            
        }
       
        let workModer = workArray[indexPath.row] as! WorkStateModel
        
//不应该 有等于
        if workModer.progressString=="申请中" {
           cell.isState = false
            
        }else{
        
            cell.isState = true
            
        }
           cell.clickbutton.addTarget(self, action: #selector(addButton(btn:)), for: .touchUpInside)
       
        
        cell.dateString = workModer.dateString
        
        cell.titelString = workModer.nameString
        
        cell.progressString = workModer.progressString
        
        return cell
        
        
    }
    @objc func addButton(btn:UIButton) -> Void {
        
        
        print("ddd")
        
        if btn.currentTitle == "签到" {
            btn.setTitle("下班", for: .normal)
        }else if btn.currentTitle == "下班"{
            
            btn.setTitle("结束", for: .normal)
            btn.layer.borderWidth = 0
        }
        
        
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

        return 100;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
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
