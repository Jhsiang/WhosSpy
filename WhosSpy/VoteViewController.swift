//
//  VoteViewController.swift
//  WhosSpy
//
//  Created by Jim Chuang on 2018/4/18.
//  Copyright © 2018年 jj. All rights reserved.
//

import UIKit

class VoteViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {

    let cellMinimumLineSpacing:CGFloat = 8
    let cellMinimumInteritemSpacing:CGFloat = 0

    var spyIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func viewDidAppear(_ animated: Bool) {
        spyIndex = UserDefaults.standard.integer(forKey: PREF_SPY_INDEX)
    }
    

//MARK: - Button Click
    @IBAction func resetClick(_ sender: UIButton) {
        let alertVC = UIAlertController(title: "Reset", message: "", preferredStyle: UIAlertControllerStyle.alert)
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) { (UIAlertAction) in
            self.performSegue(withIdentifier: "seque_vote_to_setting", sender: nil)
            return
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertVC.addAction(okAction)
        alertVC.addAction(cancelAction)
        self.present(alertVC, animated: true, completion: nil)
    }

//MARK: - UICollectionViewDelegate
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

        if (indexPath.item + 1) == spyIndex{
            let alertVC = UIAlertController(title: "Bingo", message: "", preferredStyle: UIAlertControllerStyle.alert)
            let alertAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.cancel, handler: nil)
            alertVC.addAction(alertAction)
            self.present(alertVC, animated: true, completion: nil)
        }else{
            let alertVC = UIAlertController(title: "Fail", message: "", preferredStyle: UIAlertControllerStyle.alert)
            let alertAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.cancel, handler: nil)
            alertVC.addAction(alertAction)
            self.present(alertVC, animated: true, completion: nil)
            collectionView.cellForItem(at: indexPath)?.backgroundColor = UIColor.black
        }

    }

//MARK: - UICollectionViewDataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return UserDefaults.standard.integer(forKey: PREF_VILL_NUMBERS)
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let closeCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CloseCell", for: indexPath) as! CloseCollectionViewCell
        closeCell.cellLabel.text = "User \(indexPath.item+1)"
        closeCell.cellLabel.font = UIFont.systemFont(ofSize: 25)
        closeCell.cellLabel.adjustsFontSizeToFitWidth = true
        closeCell.layer.borderWidth = 5
        closeCell.layer.borderColor = UIColor.black.cgColor
        closeCell.layer.backgroundColor = UIColor.lightGray.cgColor

        return closeCell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let totalVillNums = Double(UserDefaults.standard.integer(forKey: PREF_VILL_NUMBERS))
        let rowDouble:Double = ceil(pow(totalVillNums, 0.5))
        let colDouble:Double = ceil(totalVillNums/rowDouble)
        let rowNumbers:CGFloat = CGFloat(rowDouble)
        let colNumbers:CGFloat = CGFloat(colDouble)
        let size = CGSize(width: collectionView.frame.width/rowNumbers - 1, height: collectionView.frame.height/colNumbers - cellMinimumLineSpacing/2 - 1)
        return size
    }

//MARK: - UICollectionViewDelegateFlowLayout
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return cellMinimumLineSpacing
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return cellMinimumInteritemSpacing
    }
}
