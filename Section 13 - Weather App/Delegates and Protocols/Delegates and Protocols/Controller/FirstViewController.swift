//
//  FirstViewController.swift
//  Delegates and Protocols
//
//  Created by Yuriy Oksamytny on 25/09/2019.
//  Copyright © 2019 Yuriy Oksamytny. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, CanReceive {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func changeToBlue(_ sender: Any) {
        view.backgroundColor = UIColor.blue
    }
    
    @IBAction func sendButtonPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "sendDataForward", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendDataForward" {
            
            let secondVC = segue.destination as! SecondViewController
            
            secondVC.data = textField.text!
            
            secondVC.delegate = self
            
        }
    }
    
    func dataReceived(data: String) {
        label.text = data
    }

}
