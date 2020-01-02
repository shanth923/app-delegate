//
//  secondViewController.swift
//  Singleton
//
//  Created by R Shantha Kumar on 11/20/19.
//  Copyright © 2019 R Shantha Kumar. All rights reserved.
//

import UIKit

class secondViewController: UIViewController,UITextFieldDelegate {

    var delegateRef2:AppDelegate?
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var mobileNumber: UITextField!
    @IBOutlet weak var countryTextField: UITextField!
  
    
    var msg:String?
    

    
    func toast(){
        
        
        let controller = UIAlertController(title: "WARING", message: "\(msg!)", preferredStyle: UIAlertController.Style.alert)
        
        let action = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (cancelAlert) in
            
        }
            
      controller.addAction(action)
        
      
        present(controller, animated: true, completion: nil)
        
        
    }
    

    
    @IBAction func backAcrion(_ sender: UIButton) {
        
        
        dismiss(animated: true, completion: nil)
        
    }
    
    

   func  textFieldShouldBeginEditing(_ textField: UITextField) -> Bool{
    
    
    if(textField == name){
        
        return true
        
    }
    if(textField == mobileNumber){
        
        if(name.text!.count > 1){
            
            return true
        }else
        
        {
            
            msg = "identity name is compulsary"
            toast()
            return false
            
            
        }
        
        
    }
    
    return true
    }
    
    
    
    
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool{
        
        if(textField == name){
            
            let allowCharacters = CharacterSet(charactersIn: "qwertyuiopasdfghjklzxcvbnmQWERTYYUIOPASDFGHJKLZXCVBNM ")
            
            if(string.rangeOfCharacter(from:allowCharacters) != nil || string == ""){
                
                return true
            
            }else{
                
                msg = "invalid keywords"
                toast()
                return false
                
                
            }
            
            
            
        }
        if(textField == mobileNumber){
            
            let allowCharacters = CharacterSet(charactersIn: "1234567890 ")
            
            if(string.rangeOfCharacter(from:allowCharacters) != nil || string == ""){
                
                return true
                
            }else{
                
                msg = "invalid keywords"
                toast()
                
            }
 
        }
        
        
        
        
        
        return true
        
    }
    var returnVal:Bool = false
    
    
    
    
    func isValidMobileNumer(mobileNumberStr:String) -> Bool {
        let emailRegEx = "^[6-9][0-9]{9}$"
        
        let numberPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return numberPred.evaluate(with: mobileNumberStr)
    }
    
    
    
    
    
    
    //submit action
    var bool:Bool = false
   
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        
        if(textField == mobileNumber){
            
            bool = isValidMobileNumer(mobileNumberStr: textField.text!)
            
            
        }
            
    }
    
    @IBAction func submitAction(_ sender: UIButton)
    {
       
        if(name.text!.count > 1 && isValidMobileNumer(mobileNumberStr: mobileNumber.text!) == true){
            

           delegateRef2?.data["Name"] = name.text!
           delegateRef2?.data["Mobile"] = mobileNumber.text!
            
            
//            var value = [String:String]()
//
//            value["name"] = name.text
//            value["mobileNumber"] = mobileNumber.text
//
//            delegateRef2?.data.append(value)
            
            
        dismiss(animated: true)
        
        }
        else{
            msg = "please fill properly, and submit"
            toast()
            
        }
        
    }
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        

        name.delegate = self
        mobileNumber.delegate = self
        countryTextField.delegate = self
        mobileNumber.keyboardType = .numberPad
    
        
        delegateRef2 = UIApplication.shared.delegate as! AppDelegate
        
        

        
    }
    

  

}
