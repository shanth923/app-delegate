//
//  FinalViewController.swift
//  Singleton
//
//  Created by R Shantha Kumar on 11/20/19.
//  Copyright © 2019 R Shantha Kumar. All rights reserved.
//

import UIKit

class FinalViewController: UIViewController {

    
    
    
    @IBOutlet weak var firtName: UITextField!
    @IBOutlet weak var secondName: UITextField!
    @IBOutlet weak var age: UITextField!
    @IBOutlet weak var country: UITextField!
    
    
    @IBOutlet weak var sanskrit1: UITextField!
    @IBOutlet weak var english1: UITextField!
    @IBOutlet weak var math1a: UITextField!
    @IBOutlet weak var math1b: UITextField!
    @IBOutlet weak var physics: UITextField!
    @IBOutlet weak var chemestry: UITextField!
    
   
    
    
    @IBOutlet weak var sanskrit2: UITextField!
    @IBOutlet weak var english2: UITextField!
    @IBOutlet weak var maths2a: UITextField!
    @IBOutlet weak var maths2b: UITextField!
    @IBOutlet weak var chemetry2: UITextField!
    
    @IBOutlet weak var physics2: UITextField!
    
    
    
    var data:[String]?
    
    
    
    @objc func dataCentre(data:Notification){
        

       print("fddj sdfjh jhkdjh ks ehreh wwehrh wrhw ieryh weu eiwru ywietuewitehtkerakut qut qeutqeku weutqwe tqeuweu e qeawe twaeiu aiue iuweutafsjyeiwuyasidghweutyw9rywe ty ")
        
        
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        NotificationCenter.default.addObserver(self, selector: #selector(dataCentre(data:)), name: NSNotification.Name("data"), object: nil)
     
    
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
