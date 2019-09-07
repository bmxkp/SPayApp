//
//  ViewController.swift
//  SPay
//
//  Created by Kanjanaporn on 5/9/2562 BE.
//  Copyright © 2562 SCBiOS. All rights reserved.
//

import UIKit
import XLPagerTabStrip
class ParentViewController: ButtonBarPagerTabStripViewController {

  let purpleInspireColor = UIColor(red:0.13, green:0.03, blue:0.25, alpha:1.0)
  override func viewDidLoad() {
    // change selected bar color
    settings.style.buttonBarBackgroundColor = .white
    settings.style.buttonBarItemBackgroundColor = .white
    settings.style.selectedBarBackgroundColor = purpleInspireColor
    settings.style.buttonBarItemFont = .boldSystemFont(ofSize: 14)
    settings.style.selectedBarHeight = 2.0
    settings.style.buttonBarMinimumLineSpacing = 0
    settings.style.buttonBarItemTitleColor = .black
    settings.style.buttonBarItemsShouldFillAvailableWidth = true
    settings.style.buttonBarLeftContentInset = 0
    settings.style.buttonBarRightContentInset = 0
    changeCurrentIndexProgressive = { [weak self] (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
      guard changeCurrentIndex == true else { return }
      oldCell?.label.textColor = .black
      newCell?.label.textColor = self?.purpleInspireColor
    }
    super.viewDidLoad()
  }

  override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
    let child_1 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "payment")
    let child_2 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Topic")
    return [child_1, child_2]
  }

}

