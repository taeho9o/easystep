//
//  SignViewController.swift
//  EASYSTEP
//
//  Created by KimDuho on 2017. 6. 27..
//  Copyright © 2017년 SweatOnBlock. All rights reserved.
//

import UIKit


private var kAssociationKeyNextField: UInt8 = 0
extension UITextField {

    func addBorderBottom(height: CGFloat, color: UIColor) {
        let border = CALayer()
        border.frame = CGRect(x: 0, y: self.frame.height-height, width: self.frame.width, height: height)
        border.backgroundColor = color.cgColor
        self.layer.addSublayer(border)
    }
    
    
}

class SignViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var goRegister: UIButton!
    
    let yourAttributes : [String: Any] = [
        NSFontAttributeName : UIFont.systemFont(ofSize: 20),
        NSUnderlineStyleAttributeName : NSUnderlineStyle.styleSingle.rawValue]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //email 입력
        emailField.font = UIFont.systemFont(ofSize: 25)
        emailField.placeholder = "email"
        emailField.addBorderBottom(height: 1.5, color: self.view.tintColor)
        emailField.keyboardType = UIKeyboardType.asciiCapable
        
        //password 입력
        passwordField.font = UIFont.systemFont(ofSize: 25)
        passwordField.placeholder = "password"
        passwordField.addBorderBottom(height: 1.5, color: self.view.tintColor)
        passwordField.returnKeyType = UIReturnKeyType.done
        passwordField.isSecureTextEntry = true

        
        //로그인 버튼
        loginButton.layer.cornerRadius = 5
        loginButton.backgroundColor = self.view.tintColor
        
        let attributeString = NSMutableAttributedString(string: "SIGN UP",attributes: yourAttributes)
            goRegister.setAttributedTitle(attributeString, for: .normal)
        
        
        
        // Do any additional setup after loading the view.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //다음 textfield로 커서이동
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == emailField {
            passwordField.becomeFirstResponder()
        }else {
            passwordField.resignFirstResponder()
        }
        return true
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
