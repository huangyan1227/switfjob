//
//  WorkStateModel.swift
//  jobSwitf
//
//  Created by bidiao on 2018/1/18.
//  Copyright © 2018年 bidiao. All rights reserved.
//

import UIKit

class WorkStateModel: NSObject {

    var nameString = String()
    var dateString = String()
    var progressString = String()
    
    
    
    func addWorkdetailsViewname(nameArray:Array<String>,dateArray:Array<String>,progress:Array<String>) -> Array<Any> {
        
        let mutable = NSMutableArray.init()
        
        for i in 0...nameArray.count-1 {
            
            let workModel = WorkStateModel()
            
            workModel.nameString = nameArray[i]
            
            workModel.dateString = dateArray[i]
            
            workModel.progressString = progress[i]
            
            mutable.add(workModel)
            
            
            
            
            
            
            
        }
        
        
        
        return mutable as! Array<Any>
        
        
    }
    
    
    
    
    
}
