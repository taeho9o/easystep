//
//  ConfirmAccountViewController.swift
//  EASYSTEP
//
//  Created by KimDuho on 2017. 6. 28..
//  Copyright © 2017년 SweatOnBlock. All rights reserved.
//

import UIKit

class ConfirmAccountViewController: UIViewController {

    
//    //name 입력
//    nameField.font = UIFont.systemFont(ofSize: 25)
//    nameField.placeholder = "name"
//    nameField.addBorderBottom(height: 1.5, color: self.view.tintColor)
//
//    //password 입력
//    passwordField.font = UIFont.systemFont(ofSize: 25)
//    passwordField.placeholder = "password"
//    passwordField.addBorderBottom(height: 1.5, color: self.view.tintColor)
//    passwordField.returnKeyType = UIReturnKeyType.done
//    passwordField.isSecureTextEntry = true
//    
//
//    
    @IBOutlet weak var confirmEmail: UILabel!
    @IBOutlet weak var confirmName: UILabel!
    @IBOutlet weak var confirmDescription: UILabel!
    @IBOutlet weak var registerAccountBtn: UIButton!
    var paramEmail: String?
    var paramName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        confirmEmail.text = paramEmail
        confirmName.text = paramName
        confirmDescription.text = "최종 확인"
        
        //확인 화면으로 이동
        registerAccountBtn.setTitle("COMPLETE", for: .normal)
        registerAccountBtn.layer.cornerRadius = 5
        registerAccountBtn.backgroundColor = self.view.tintColor

        // Do any additional setup after loading the view.
    }

    @IBAction func registerAccount(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
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
