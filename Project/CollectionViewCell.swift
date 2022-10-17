//
//  CollectionViewCell.swift
//  AppOverviewUI
//
//  Created by Rosalie Jiang on 10/10/22.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var background: UIView!
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var companyName: UILabel!
    @IBOutlet weak var positionName: UILabel!
    
    override func awakeFromNib() {
        background.layer.cornerRadius = 20
        logo.layer.cornerRadius = 20
        companyName.adjustsFontSizeToFitWidth = true
        companyName.minimumScaleFactor = 0.2
        positionName.adjustsFontSizeToFitWidth = true
        positionName.minimumScaleFactor = 0.2
//        background.layer.shadowColor = UIColor.lightGray.cgColor
//        background.layer.shadowOffset = CGSize(width: 0, height: 2.0)
//        background.layer.shadowRadius = 2.0
//        background.layer.shadowOpacity = 1.0
    }
    
}
