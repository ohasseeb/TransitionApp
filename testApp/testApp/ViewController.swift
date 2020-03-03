//
//  ViewController.swift
//  testApp
//
//  Created by Obaidullah Hasseeb on 3/3/20.
//  Copyright © 2020 Obaidullah Hasseeb. All rights reserved.
//

import UIKit

var goButtonPressedFlag = 0
var textData = ""
var text1Data = ""
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        
        view.addGestureRecognizer(tap)
        // Do any additional setup after loading the view.
        print("textDAta Before:", "\(textData)")
    
    if(goButtonPressedFlag == 1)
    {
        // We Transitioned Back
        TextField1Outlet.text = textData
        //goButtonPressedFlag = 0
        print("textDAta After:", "\(textData)")
            
    }
    
    }


    @IBOutlet weak var TextField1Outlet: UITextField!
    @IBAction func TextField1Action(_ sender: Any) {
        
        text1Data = self.TextField1Outlet.text ?? ""
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let homeVC = storyboard.instantiateViewController(identifier: "text2")
        homeVC.modalPresentationStyle = .fullScreen
        self.present(homeVC, animated: true, completion: nil)
    }
    
    
    
    
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }

    
    
}// End Class

