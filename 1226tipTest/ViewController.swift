//
//  ViewController.swift
//  1226tipTest
//
//  Created by 蔡家雯 on 2019/12/26.
//  Copyright © 2019 lesley tsai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var priceTextField: UITextField!
    @IBOutlet weak var taxTextFiled: UITextField!
    @IBOutlet weak var peopleTextField: UITextField!
    @IBOutlet weak var totalPriceLabel: UILabel!
    @IBOutlet weak var onePriceLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculator(_ sender: UIButton) {
        //將上面三個textfield鍵盤收起
        priceTextField.resignFirstResponder()
        taxTextFiled.resignFirstResponder()
        peopleTextField.resignFirstResponder()
        
        // 上面三個textfield 有一方未填的話 下方兩個label顯示0
        if priceTextField.text == "" || taxTextFiled.text == "" || peopleTextField.text == ""{
            totalPriceLabel.text = "0"
            onePriceLabel.text = "0"
        }else{
            //稅金比的計算
            let tax = Double(priceTextField.text!)! * Double(taxTextFiled.text!)! / 100
            //總額label的計算
            let total = Double(priceTextField.text!)! + tax
            
            let share = total / Double(peopleTextField.text!)!
            
            totalPriceLabel.text = String(total)
            onePriceLabel.text = String(share)
        }
    }
    @IBAction func pressClearBtn(_ sender: UIButton) {
        priceTextField.text = ""
        taxTextFiled.text = ""
        peopleTextField.text = ""
        totalPriceLabel.text = "0"
        onePriceLabel.text = "0"
    }
    
}

