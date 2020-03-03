//
//  MainViewController.swift
//  testApp
//
//  Created by Obaidullah Hasseeb on 3/3/20.
//  Copyright © 2020 Obaidullah Hasseeb. All rights reserved.
//

import UIKit


class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        //TextField2Outlet.isFirstResponder
        TextFieldFirstResponder()
        TextField2Outlet.text = text1Data
        
        
    }
    

    @IBOutlet weak var TextField2Outlet: UITextField!
    
func TextFieldFirstResponder()
{
    self.TextField2Outlet.becomeFirstResponder()
        
}

    @IBAction func GoButtonPressed(_ sender: Any) {
        
        goButtonPressedFlag = 1
        self.TextField2Outlet.resignFirstResponder()
        textData = TextField2Outlet.text ?? ""
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let homeVC = storyboard.instantiateViewController(identifier: "text1")
        homeVC.modalPresentationStyle = .fullScreen
        self.present(homeVC, animated: true, completion: nil)
    }
    
}
