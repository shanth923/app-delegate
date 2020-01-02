//
//  FormData.swift
//  Singleton
//
//  Created by R Shantha Kumar on 11/20/19.
//  Copyright © 2019 R Shantha Kumar. All rights reserved.
//

import UIKit

class FormData: NSObject {
    
    
    static var shared = FormData()
    
    
//    var firstName:String?
//    var secondName:String?
//    var age:String?
//    var country:String?
    
    
    var firstYrResult:[String]?
    
    
     var sanskrit1:String?
     var english1:String?
     var maths1a:String?
     var math1b:String?
     var chemestry1:String?
     var physics:String?
    
    var sanskrit2:String?
    
     var english2:String?
    
     var math2a:String?
    
     var maths2b:String?
    
    var chemestry2: String?
    
     var physics2:String?
    
    
    
    
    
   private override init() {
        super.init()
        
        
        
        
    }
    
    

}
