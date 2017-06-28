//
//  SearchAccountViewController.swift
//  EASYSTEP
//
//  Created by KimDuho on 2017. 6. 29..
//  Copyright © 2017년 SweatOnBlock. All rights reserved.
//

import UIKit

class SearchAccountViewController: UIViewController {

    @IBOutlet weak var inputEmail: UITextField!
    @IBOutlet weak var sendLoginLink: UIButton!
    @IBOutlet weak var emailDescription: UILabel!
    
    
    
    let whiteColor : UIColor = UIColor.white

    override func viewDidLoad() {
        super.viewDidLoad()

        //email 입력
        inputEmail.font = UIFont.systemFont(ofSize: 25)
        inputEmail.placeholder = "email"
        inputEmail.layer.borderColor = whiteColor.cgColor
        inputEmail.layer.borderWidth = 1
        inputEmail.keyboardType = UIKeyboardType.asciiCapable
        inputEmail.returnKeyType = UIReturnKeyType.done
        
        emailDescription.text = "입력된 이메일로 로그인 링크 발송"
        
        //인증메일 보냄
        sendLoginLink.setTitle("SEND", for: .normal)
        sendLoginLink.layer.cornerRadius = 5
        sendLoginLink.backgroundColor = self.view.tintColor

        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancelSearchAccount(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        inputEmail.resignFirstResponder()
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
