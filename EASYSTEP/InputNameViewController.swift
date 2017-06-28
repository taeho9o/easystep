//
//  InputNameViewController.swift
//  EASYSTEP
//
//  Created by KimDuho on 2017. 6. 28..
//  Copyright © 2017년 SweatOnBlock. All rights reserved.
//

import UIKit

class InputNameViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var nameDescription: UILabel!
    @IBOutlet weak var goConfirm: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //name 입력
        nameField.font = UIFont.systemFont(ofSize: 25)
        nameField.placeholder = "name"
        nameField.addBorderBottom(height: 1.5, color: self.view.tintColor)
        
        //password 입력
        passwordField.font = UIFont.systemFont(ofSize: 25)
        passwordField.placeholder = "password"
        passwordField.addBorderBottom(height: 1.5, color: self.view.tintColor)
        passwordField.returnKeyType = UIReturnKeyType.done
        passwordField.isSecureTextEntry = true

        nameDescription.text = "이름, 비밀번호 입력"
        
        
        //확인 화면으로 이동
        goConfirm.setTitle("NEXT", for: .normal)
        goConfirm.layer.cornerRadius = 5
        goConfirm.backgroundColor = self.view.tintColor
        
        
        
        // Do any additional setup after loading the view.
    }

    @IBAction func backToEmail(_ sender: Any) {
        _ = self.navigationController?.popViewController(animated: true)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //다음 textfield로 커서이동
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == nameField {
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
