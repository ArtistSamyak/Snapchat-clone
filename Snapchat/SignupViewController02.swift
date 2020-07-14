//
//  SignupViewController02.swift
//  Snapchat
//
//  Created by Samyak Pawar on 12/07/20.
//  Copyright © 2020 ArtistSamyak. All rights reserved.
//

import UIKit
import Firebase

class SignupViewController02: UIViewController {

    @IBOutlet weak var email: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var password: UITextField!
    

    @IBAction func signup(_ sender: UIButton) {
        
        if let e = email.text , let p = password.text {
            Auth.auth().createUser(withEmail: e, password: p) { authResult, error in
              // ...
                if let er = error{
                    print(er)
                }else{
                    self.performSegue(withIdentifier: "to_home", sender: self)
                }
            }
                    
        }
    }
    

}
