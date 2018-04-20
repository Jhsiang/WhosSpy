//
//  MainViewController.swift
//  WhosSpy
//
//  Created by Jim Chuang on 2018/4/16.
//  Copyright © 2018年 jj. All rights reserved.
//

import UIKit


class MainViewController: UIViewController {

    @IBOutlet var ansLabel: UILabel!

    var villNumber = 0
    var userIndex = 0
    var spyIndex = 0
    var anA = Array<String>()

    override func viewDidLoad() {
        super.viewDidLoad()


        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        let saveInt = UserDefaults.standard.integer(forKey: PREF_VILL_NUMBERS)
        villNumber = saveInt * 2
        spyIndex = Int(arc4random_uniform(UInt32(saveInt)) + 1)
        UserDefaults.standard.set(spyIndex, forKey: PREF_SPY_INDEX)
        print("total = \(totalA.count)")
        print("sIndex = \(spyIndex)")
        anA = totalA[Int(arc4random_uniform(UInt32(totalA.count)))]
        ansLabel.text = "Next"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextClick(_ sender: UIButton) {

        let userRealIndex = userIndex/2 + 1

        if userIndex == villNumber{
            ansLabel.text = "Vote"
            sender.setTitle("Enter", for: .normal)
            userIndex += 1
            return
        }else if userIndex > villNumber || true{
            self.performSegue(withIdentifier: "seque_main_to_vote", sender: nil)
            return
        }

        if userIndex % 2 == 0{
            ansLabel.text = desc(index: userRealIndex)
        }else{
            let str1 = anA[0]
            let str2 = anA[1]
            ansLabel.text = userRealIndex == spyIndex ? showA(index: userRealIndex, ans: str2) : showA(index: userRealIndex, ans: str1)
        }

        userIndex += 1
    }
}

