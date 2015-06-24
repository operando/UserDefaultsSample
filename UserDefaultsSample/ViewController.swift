//
//  ViewController.swift
//  UserDefaultsSample
//
//  Created by shinobu okano on 2015/06/24.
//  Copyright (c) 2015年 shinobu okano. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var text: UITextField!
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        text?.delegate = self
    }

    func textFieldShouldReturn(textField: UITextField!) -> Bool{
        text?.text = textField.text
        // キーボードを閉じる
        textField.resignFirstResponder()
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func save(sender: UIButton) {
        let userDefaults = NSUserDefaults.standardUserDefaults()
        userDefaults.setObject(text.text, forKey: "text")
    }

    @IBAction func load(sender: UIButton) {
        let userDefaults = NSUserDefaults.standardUserDefaults()
        let text = userDefaults.stringForKey("text")
        label.text = text
    }
    @IBAction func deleteButton(sender: UIButton) {
        let userDefaults = NSUserDefaults.standardUserDefaults()
        userDefaults.removeObjectForKey("text")
    }
}

