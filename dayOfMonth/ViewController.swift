//
//  ViewController.swift
//  dayOfMonth
//
//  Created by Nam Le on 1/17/20.
//  Copyright © 2020 Nam Le. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var yearLabel: UILabel!
    
    @IBOutlet weak var thang31Label: UILabel!
    @IBOutlet weak var thang30Label: UILabel!
    @IBOutlet weak var thang2Label: UILabel!
    @IBOutlet weak var yearTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        thang30Label.isHidden = true
        thang31Label.isHidden = true
        thang2Label.isHidden = true
        
        yearLabel.font =    UIFont.boldSystemFont(ofSize: 32)
        yearLabel.textColor = UIColor.red
        
        thang30Label.font = UIFont.boldSystemFont(ofSize: 24)
        thang31Label.font = UIFont.boldSystemFont(ofSize: 24)
        thang2Label.font = UIFont.boldSystemFont(ofSize: 24)
        
        
    }

    @IBAction func ViewButton(_ sender: Any) {
        thang30Label.isHidden = false
        thang31Label.isHidden = false
        thang2Label.isHidden = false
        var year = Int(yearTextField.text ?? " " ) ?? 0
        if (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0){
            thang2Label.text = " tháng 2 : 29 ngày"
        }else{
            thang2Label.text = " tháng 2 : 28 ngày"
        }
    }
    
}

