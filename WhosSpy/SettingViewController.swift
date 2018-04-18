//
//  SettingViewController.swift
//  WhosSpy
//
//  Created by Jim Chuang on 2018/4/16.
//  Copyright © 2018年 jj. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet var villStepper: UIStepper!
    @IBOutlet var spyStepper: UIStepper!
    @IBOutlet var villTF: UITextField!
    @IBOutlet var spyTF: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        villTF.text = String(Int(villStepper.value))
        spyTF.text = String(Int(spyStepper.value))
        villStepper.addTarget(self, action: #selector(onStepperChange), for: .valueChanged)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func onStepperChange(){
        villTF.text = String(Int(villStepper.value))
        spyTF.text = String(Int(spyStepper.value))
    }

    @IBAction func startClick(_ sender: UIButton) {
        if let saveStr = villTF.text{
            if let saveInt = Int(saveStr){
                UserDefaults.standard.set(saveInt, forKey: PREF_VILL_NUMBERS)
                self.performSegue(withIdentifier: "seque_setting_to_main", sender: nil)
                return
            }
        }
        let alert = UIAlertController(title: "", message: "Error", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Enter", style: .cancel, handler: nil)
        alert.addAction(alertAction)
        self.present(alert, animated: true, completion: nil)
    }
}
