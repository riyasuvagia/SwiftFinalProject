//
//  AddViewController.swift
//  AppOverviewUI
//
//  Created by Rosalie Jiang on 10/10/22.
//

import UIKit

class AddViewController: UIViewController {
    
    @IBOutlet weak var companyText: UITextField!
    @IBOutlet weak var positionText: UITextField!
    @IBOutlet weak var linkText: UITextField!
    @IBOutlet weak var locationText: UITextField!
    @IBOutlet weak var datesText: UITextField!
    @IBOutlet weak var appDateText: UITextField!
    @IBOutlet weak var interviewDateText: UITextField!
    @IBOutlet weak var statusText: UITextField!
    @IBOutlet weak var payText: UITextField!
    @IBOutlet weak var commentsText: UITextField!
    
    var delegate: UIViewController!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func createButtonPressed(_ sender: Any) {
        logoImages.append("ph")
        location.append(locationText.text ?? "")
        dates.append(datesText.text ?? "")
        pay.append(payText.text ?? "")
        appDate.append(appDateText.text ?? "")
        intDate.append(interviewDateText.text ?? "")
        status.append(statusText.text ?? "")
        comments.append(commentsText.text ?? "")
        
        let addMainVC = delegate as! JobAdder
        addMainVC.addJob(newCompany: companyText.text!, newPosition: positionText.text!, newLogo: "ig")
        
        self.navigationController?.popViewController(animated: true)
        
        let updateMainVC = delegate as! CollectionUpdater
        updateMainVC.updateCollection()
    }
    
}
