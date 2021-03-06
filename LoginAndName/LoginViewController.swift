//
//  LoginViewController.swift
//  LoginAndName
//
//  Created by Artem Zhuzhgin on 14.12.2021.
//

import UIKit
let userName = "User"
let password = "password"




class LoginViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    
    @IBOutlet var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            
            let welcomVS = segue.destination as! WelcomeViewController
            welcomVS.welcomeName = "Welcome" + " " + userNameTF.text!
        }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    
    @IBAction func loginPressedButton() {
        guard userNameTF.text == userName, passwordTF.text == password else {
            shouHelpAlert(title: "Error", mesage: "Не верное имя пользователя или пароль", tag: 0 )
            return
            
        }
        performSegue(withIdentifier: "goToWelcomVC", sender: nil)
    }
   
    @IBAction  func unwindd(for seque: UIStoryboardSegue) {
      
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func HelpAlertShow(_ sender: UIButton) {
        switch sender.tag {
        case 1: shouHelpAlert(title: "Fogot User Name?", mesage: "User Name is <\(userName)>", tag: sender.tag)
        default: shouHelpAlert(title: "Fogot Password", mesage: "Password is <\(password)>", tag: sender.tag)
        }
        
    }
    
    private func shouHelpAlert(title: String, mesage: String, tag: Int) {
        let nameAlert = UIAlertController(title: title, message: mesage, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) { _ in
            switch tag {
            case 0:
                self.userNameTF.text = ""
                self.passwordTF.text = ""
            case 1: self.userNameTF.text = userName
            default: self.passwordTF.text = password
            }
        }
        nameAlert.addAction(okAction)
        present(nameAlert, animated: true, completion: nil)
        
    }
}


