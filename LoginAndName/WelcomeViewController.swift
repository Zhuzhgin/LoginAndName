//
//  WelcomeViewController.swift
//  LoginAndName
//
//  Created by Artem Zhuzhgin on 14.12.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet var welcomLabel: UILabel!
    var welcomeName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomLabel.text = welcomeName

       
    }
    
    @IBAction func logOutButton() {
        
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
