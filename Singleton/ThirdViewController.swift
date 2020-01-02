//
//  ThirdViewController.swift
//  Singleton
//
//  Created by R Shantha Kumar on 11/20/19.
//  Copyright © 2019 R Shantha Kumar. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController,UITextFieldDelegate{

    
    
    @IBOutlet weak var sanskrit: UITextField!
    
    @IBOutlet weak var english2: UITextField!
    
    @IBOutlet weak var math2a: UITextField!
    
    @IBOutlet weak var maths22b: UITextField!
    
    @IBOutlet weak var chemetry: UITextField!
    
    @IBOutlet weak var phyics: UITextField!
    
    
    var msg:String?
    
    func toast ()
    {
        
        let alertControl = UIAlertController(title: "WARNING", message: "\(msg!)", preferredStyle: UIAlertController.Style.alert)
        
        let alertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel) { (cancelAlert) in
            
        }
        alertControl.addAction(alertAction)
        present(alertControl, animated: true, completion: nil)
        
    }
    
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool{
        
        if(textField == sanskrit){
            
            return true
        }
        
        if (textField == english2) {
            
            if(Int(sanskrit.text!)! <= 100){
                
                return true
                
            }else
            {
                
                
                msg = "fill the Marks properly,Max Marks:100"
                toast()
                return false
                
            }
            
            
        }
        if (textField == math2a) {
            
            if(Int(sanskrit.text!)! <= 100 && Int(english2.text!)! <= 100){
                
                return true
                
            }else
                
            {
                
                
                msg = "fill the Marks properly,Max Marks:100"
                toast()
                return false
                
            }
        }
        if (textField == maths22b) {
            
            if(Int(sanskrit.text!)! <= 100 && Int(english2.text!)! <= 100 && Int(math2a.text!)! <= 100)
            {
                
                return true
                
            }else
            {
                
                
                msg = "fill the Marks properly,Max Marks:100"
                toast()
                return false
                
            }
            
            
        }
        if (textField == chemetry) {
            
            if(Int(sanskrit.text!)! <= 100 && Int(english2.text!)! <= 100 && Int(math2a.text!)! <= 100 && Int(maths22b.text!)! <= 100)
            {
                
                return true
                
            }else
            {
                
                
                msg = "fill the Marks properly,Max Marks:100"
                toast()
                return false
                
            }
            
            
        }
        if (textField == phyics) {
            
            if(Int(sanskrit.text!)! <= 100 && Int(english2.text!)! <= 100 && Int(math2a.text!)! <= 100 && Int(maths22b.text!)! <= 100 && Int(chemetry.text!)! <= 100){
                
                return true
                
            }else
            {
                
                
                msg = "fill the Marks properly,Max Marks:100"
                toast()
                return false
                
            }
            
            
        }
        
        
        
        return true
    }
    
    // characters ranges
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool{
        
        
        if(textField == sanskrit || textField == english2  || textField == math2a || textField == maths22b || textField == chemetry  || textField == phyics )
        {
            let allowCharacters = CharacterSet(charactersIn:"1234567890 ")
            
            if(string.rangeOfCharacter(from: allowCharacters) != nil||string == "")
            {
                
                return true
            }
            else
            {
                msg = "invaild keywords"
                toast()
                return false
            }
        }
        
        
        return true
        
        
        
    }
    
    
    
    //submit button action
    
    @IBAction func submitAction(_ sender: UIButton) {
        
        if(Int(sanskrit.text!)! > 1 && Int(english2.text!)! > 1 && Int(math2a.text!)! > 1 && Int(maths22b.text!)! > 1 && Int(chemetry.text!)! > 1 && Int(phyics.text!)! > 1){
        
       
        let target = storyboard?.instantiateViewController(withIdentifier: "final") as! FinalViewController
        
        present(target, animated: true) {
            
        }
        
        }
        
    }
    
    
    //delegates for properties
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sanskrit.delegate = self
        english2.delegate = self
        math2a.delegate = self
        maths22b.delegate = self
        chemetry.delegate = self
        phyics.delegate = self
        

        // Do any additional setup after loading the view.
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
