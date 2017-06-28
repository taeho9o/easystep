//
//  SignUpViewController.swift
//  EASYSTEP
//
//  Created by KimDuho on 2017. 6. 28..
//  Copyright © 2017년 SweatOnBlock. All rights reserved.
//

import UIKit


class InputEmailViewController: UIViewController {

    @IBOutlet weak var inputEmail: UITextField!
    @IBOutlet weak var sendCertifyEmail: UIButton!
    @IBOutlet weak var emailDescription: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        //email 입력
        inputEmail.font = UIFont.systemFont(ofSize: 25)
        inputEmail.placeholder = "email"
        inputEmail.addBorderBottom(height: 1.5, color: self.view.tintColor)
        inputEmail.keyboardType = UIKeyboardType.asciiCapable
        inputEmail.returnKeyType = UIReturnKeyType.done
        
        emailDescription.text = "입력된 이메일로 링크 발송"
        
        //인증메일 보냄
        sendCertifyEmail.setTitle("SEND", for: .normal)
        sendCertifyEmail.layer.cornerRadius = 5
        sendCertifyEmail.backgroundColor = self.view.tintColor

        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancelRegister(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
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
