//
//  GroupViewController.swift
//  SPay
//
//  Created by Kanjanaporn on 5/9/2562 BE.
//  Copyright © 2562 SCBiOS. All rights reserved.
//

import iOSDropDown
import UIKit
import XLPagerTabStrip

class GroupViewController: UIViewController, IndicatorInfoProvider {
    @IBOutlet var groupDropdown: DropDown!
  
  @IBOutlet weak var priceTextfield: UITextField!
  @IBOutlet weak var titleTextfield: UITextField!
  func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "Topic")
    }

    func dropDown() {
        groupDropdown.optionArray = ["Party", "Somtum", "SCB", "University", "BFF"]
        // The list of array to display. Can be changed dynamically
        // Its Id Values and its optional
        groupDropdown.optionIds = [1, 2, 3, 4, 5]
    }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if  segue.identifier == "detailPrice" {
      
    }
  }

    override func viewDidLoad() {
        super.viewDidLoad()
        dropDown()
    }
}
