//
//  ThirdViewController.swift
//  Intermediate UI
//
//  Created by Craig Booker on 1/24/19.
//  Copyright © 2019 Arcadia Softworks. All rights reserved.
//

import UIKit
import SafariServices

class ThirdViewController: UIViewController, SFSafariViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
  
  func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
    print("Safari finished!")
  }

  @IBAction func showWebContent(_ sender: Any) {
    let url = URL(string: "https://google.com")
    UIApplication.shared.open(url!, options: [UIApplication.OpenExternalURLOptionsKey(rawValue: ""):""], completionHandler: nil)
    /*
    let safariVC = SFSafariViewController(url: url!)
    safariVC.delegate = self
    present(safariVC, animated: true) {
      print("presented web view.")
    }
 */
  }
  

}
