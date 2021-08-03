//
//  ViewController.swift
//  Part5
//
//  Created by 葡萄酒 on 2021/08/03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var answerLabel: UILabel!
    
    @IBAction func answerButton(_ sender: UIButton) {
        
        let number1 = Double(textField1.text!) ?? 0
        let number2 = Double(textField2.text!) ?? 0
        var errorCheck = true
        
        
        if textField1.text == "" {
            alertDisplay(message: "割られる数を入力してください。")
            errorCheck = false
        }
        
        if textField2.text == "" && errorCheck {
            alertDisplay(message: "割る数を入力してください。")
            errorCheck = false
        }

        if number2 == 0 && errorCheck{
            alertDisplay(message: "割る数に0を入力しないでください。")
            errorCheck = false
        }

        
        if errorCheck {
            answerLabel.text = String(number1 / number2)
        }
    }

    //アラート表示用関数
    private func alertDisplay(message : String) {
        
        //アラート作成
        let alert = UIAlertController(title: "課題5", message: message, preferredStyle: .alert)
        
        //OKボタンの作成、追加
        let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(ok)
        
        //アラートの表示
        present(alert, animated: true, completion: nil)
    }
}

