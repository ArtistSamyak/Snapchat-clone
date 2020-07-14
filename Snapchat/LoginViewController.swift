//
//  LoginViewController.swift
//  Snapchat
//
//  Created by Samyak Pawar on 11/07/20.
//  Copyright © 2020 ArtistSamyak. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    @IBOutlet weak var emailLogin: UITextField!
    @IBOutlet weak var passwordLogin: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
  override var prefersStatusBarHidden: Bool{
      return true
  }

    @IBAction func login(_ sender: UIButton) {
        
        if let e = emailLogin.text , let p = passwordLogin.text {
            Auth.auth().signIn(withEmail: e, password: p) { [weak self] authResult, error in
              // ...
                if let er = error{
                    print(er)
                }else{
                    self!.performSegue(withIdentifier: "to_home_login", sender: self)
                }
            }
        }
        
    }
}
