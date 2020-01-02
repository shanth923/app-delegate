//
//  ViewController.swift
//  Singleton
//
//  Created by R Shantha Kumar on 11/20/19.
//  Copyright © 2019 R Shantha Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    var delegateRef:AppDelegate?
    
     var nameLbl: UILabel!
    
     var mobileNumberLbl: UILabel!
    
    var data = [[String]]()
    
    
    
  var gap = 30
    
    
   
    
    
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
       
        
        delegateRef = UIApplication.shared.delegate as! AppDelegate
        
        
        // observed the data
       
      
        
    }
    
    
                  // button for instantiate to ssecond view
    
    
    
    @IBAction func submitAction(_ sender: UIButton)
    {
        
        let target = storyboard?.instantiateViewController(withIdentifier: "second") as! secondViewController
        
        
        
        
        present(target, animated: true)
        
        
    }
    
    
    
    
    
    var ypos = 160
    
    
    var formData = [[String:String]]()
    
    
    override func viewDidAppear(_ animated: Bool) {
        
        if(delegateRef?.data["Name"] != nil && delegateRef?.data["Mobile"] != nil)
        {
        
        let value = [delegateRef?.data["Name"] as! String, delegateRef?.data["Mobile"] as! String]
        
        data.append(value)
        
        var ypos = 160
        
        
        var number = 1
        for x in data
        {
    
            nameLbl = UILabel()
            nameLbl.frame = CGRect(x: 30, y: ypos, width: 150, height: 30)
            nameLbl.backgroundColor = UIColor.white
            nameLbl.text = delegateRef?.data["Name"]
            view.addSubview(nameLbl)
            
            
            
            
            mobileNumberLbl = UILabel()
            mobileNumberLbl.frame = CGRect(x: 230, y: ypos, width: 150, height: 30)
            mobileNumberLbl.backgroundColor = UIColor.white
            mobileNumberLbl.text = delegateRef?.data["Mobile"]
            view.addSubview(mobileNumberLbl)
            
            
            ypos += 40
            number += 1
        }
        
        
        }
            
        
            
            
            
   
    
        
        
    }
    
    


}

