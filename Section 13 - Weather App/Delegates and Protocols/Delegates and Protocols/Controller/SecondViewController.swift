//
//  SecondViewController.swift
//  Delegates and Protocols
//
//  Created by Yuriy Oksamytny on 25/09/2019.
//  Copyright © 2019 Yuriy Oksamytny. All rights reserved.
//

import UIKit

protocol CanReceive {
    func dataReceived(data: String)
}

class SecondViewController: UIViewController {
    
    var delegate : CanReceive?
    
    var data = ""
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = data
        
    }


    @IBAction func pressedButtonBack(_ sender: Any) {
        
        delegate?.dataReceived(data: textField.text!)
        dismiss(animated: true, completion: nil)
    }
    

    
}
