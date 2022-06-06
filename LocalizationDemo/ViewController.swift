//
//  ViewController.swift
//  LocalizationDemo
//
//  Created by Shridevi Sawant on 03/06/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var footerL: UILabel!
    @IBOutlet weak var passT: UITextField!
    @IBOutlet weak var userT: UITextField!
    
    var developer = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        developer = NSLocalizedString("developer", tableName: "mystrings", bundle: Bundle.main, value: "", comment: "")
        
        let title = "\(footerL.text ?? "") \(developer)"
        
        footerL.text = title
        
    }

    @IBAction func loginClick(_ sender: Any) {
        
        let username = userT.text ?? ""
        let password = passT.text ?? ""
        
        if username.isEmpty || password.isEmpty {
            let errTitle = NSLocalizedString("alert_err_title", tableName: "mystrings", bundle: Bundle.main, value: "", comment: "")
            
            let errMsg = NSLocalizedString("alert_err_msg", tableName: "mystrings", bundle: Bundle.main, value: "", comment: "")
            
            showAlert(title: errTitle, msg: errMsg)
        }
        else {
            let sTitle = NSLocalizedString("alert_success_title", tableName: "mystrings", bundle: Bundle.main, value: "", comment: "")
            
            let sMsg = NSLocalizedString("alert_success_msg", tableName: "mystrings", bundle: Bundle.main, value: "", comment: "")
            
            showAlert(title: sTitle, msg: sMsg)
        }
        
    }
    
    func showAlert(title: String, msg: String){
        
        let alertVC = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        
        let okT = NSLocalizedString("ok_btn", tableName: "mystrings", bundle: Bundle.main, value: "", comment: "")
        
        let okAction = UIAlertAction(title: okT, style: .default, handler: nil)
        
        alertVC.addAction(okAction)
        
        present(alertVC, animated: false, completion: nil)
    }
    
}

