//
//  DetailsViewController.swift
//  AppOverviewUI
//
//  Created by Rosalie Jiang on 10/10/22.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var companyDetails: UILabel!
    @IBOutlet weak var positionDetails: UILabel!
    @IBOutlet weak var logoDetails: UIImageView!
    @IBOutlet weak var locationDetails: UILabel!
    @IBOutlet weak var datesDetails: UILabel!
    @IBOutlet weak var payDetails: UILabel!
    @IBOutlet weak var interviewDetails: UILabel!
    @IBOutlet weak var appDetails: UILabel!
    @IBOutlet weak var statusDetails: UILabel!
    @IBOutlet weak var commentsDetails: UILabel!
    
    var delegate: UIViewController!
    var detailsIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        companyDetails.text = companyNames[detailsIndex]
        positionDetails.text = positionNames[detailsIndex]
        logoDetails.image = UIImage(named: logoImages[detailsIndex])
        locationDetails.text = location[detailsIndex]
        datesDetails.text = dates[detailsIndex]
        payDetails.text = pay[detailsIndex]
        interviewDetails.text = intDate[detailsIndex]
        appDetails.text = appDate[detailsIndex]
        statusDetails.text = status[detailsIndex]
        commentsDetails.numberOfLines = 0
        commentsDetails.text = comments[detailsIndex]
    }

}
