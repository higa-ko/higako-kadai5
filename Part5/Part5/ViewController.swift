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
        
        guard let number1 = Double(textField1.text!) else {
            displayAlert(message: "割られる数を入力してください。")
            return
        }
        
        guard let number2 = Double(textField2.text!) else {
            displayAlert(message: "割る数を入力してください。")
            return
        }

        guard number2 != 0 else {
            displayAlert(message: "割る数に0を入力しないでください。")
            return
        }

        answerLabel.text = String(number1 / number2)
    }

    //アラート表示用関数
    private func displayAlert(message : String) {
        //アラート作成
        let alert = UIAlertController(title: "課題5", message: message, preferredStyle: .alert)
        
        //OKボタンの作成、追加
        let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(ok)
        
        //アラートの表示
        present(alert, animated: true, completion: nil)
    }
}

