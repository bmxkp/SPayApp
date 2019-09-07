//
//  PaymentViewController.swift
//  SPay
//
//  Created by Kanjanaporn on 5/9/2562 BE.
//  Copyright © 2562 SCBiOS. All rights reserved.
//

import iOSDropDown
import UIKit
import XLPagerTabStrip

class PaymentViewController: UIViewController, IndicatorInfoProvider {
    @IBOutlet var nameDropdown: DropDown!
  
  @IBOutlet weak var priceTextfield: UITextField!
  
  @IBOutlet weak var descriptTextfield: UITextField!
  func dropDown() {
//    let dropDown = DropDown(frame: CGRect(x: 110, y: 140, width: 200, height: 30)) // set frame

        nameDropdown.optionArray = ["Mew", "Nut", "Best", "Stamp", "Aon"]
        // The list of array to display. Can be changed dynamically
        // Its Id Values and its optional
        nameDropdown.optionIds = [1, 2, 3, 4, 5]
        //  // The the Closure returns Selected Index and String
        //  nameDropdown.didSelect{(selectedText , index ,id) in
        //  self.valueLabel.text = "Selected String: \(selectedText) \n index: \(index)"
    }

  @IBAction func sentRequest(_ sender: Any) {
  
    let alert = UIAlertController(title: "Sent Request", message: "Do you want to sent request", preferredStyle: .alert)
    let accept = UIAlertAction(title: "Accept", style: .destructive,handler:  { (_) -> Void in })
    
    let cancel = UIAlertAction(title: "Cancel", style: .default, handler: { (_) -> Void in })
    alert.addAction(accept)
    alert.addAction(cancel)
      present(alert, animated: true, completion: nil)

  }
  
  func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "Payment")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        dropDown()
    }
}
