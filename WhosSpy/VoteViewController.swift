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

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

//MARK: - Button Click
    @IBAction func resetClick(_ sender: UIButton) {
        self.performSegue(withIdentifier: "seque_vote_to_setting", sender: nil)
    }

//MARK: - UICollectionViewDataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return UserDefaults.standard.integer(forKey: PREF_VILL_NUMBERS)
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let closeCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CloseCell", for: indexPath) as! CloseCollectionViewCell
        let openCell = collectionView.dequeueReusableCell(withReuseIdentifier: "OpenCell", for: indexPath) as! OpenCollectionViewCell
        closeCell.layer.borderWidth = 5
        closeCell.layer.borderColor = UIColor.black.cgColor

        return closeCell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let totalVillNums = Double(UserDefaults.standard.integer(forKey: PREF_VILL_NUMBERS))
        let rowDouble:Double = ceil(pow(totalVillNums, 0.5))
        let colDouble:Double = ceil(totalVillNums/rowDouble)
        let rowNumbers:CGFloat = CGFloat(rowDouble)
        let colNumbers:CGFloat = CGFloat(colDouble)
        let size = CGSize(width: collectionView.frame.width/rowNumbers, height: collectionView.frame.height/colNumbers - cellMinimumLineSpacing/2)
        return size
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return cellMinimumLineSpacing
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return cellMinimumInteritemSpacing
    }
}
