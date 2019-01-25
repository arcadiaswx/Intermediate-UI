//
//  ViewController.swift
//  Intermediate UI
//
//  Created by Craig Booker on 1/23/19.
//  Copyright © 2019 Arcadia Softworks. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
  

  let data:[[String]] = [
    ["Item 1","Item 2","Item 3", "Item 4","Item 5","Item 6"],
    ["Item A","Item B","Item C", "Item D","Item E","Item F"]
  ]
  
  @IBOutlet weak var label: UILabel!
  
  @IBOutlet weak var segmentLabel: UILabel!
  @IBOutlet weak var progBar: UIProgressView!
  
  @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    let handmadeLabel:UILabel = UILabel(frame: CGRect(x: 20, y: 40, width: 300, height: 20))
    handmadeLabel.text = "Code Label"
    view.addSubview(handmadeLabel)
    
    let button:UIButton = UIButton(frame: CGRect(x: 20, y: 100, width: 300, height: 40))
    button.setTitle("Code Button", for: .normal)
    button.backgroundColor = UIColor.lightGray
    button.addTarget(self, action: #selector(buttonPress), for: .touchUpInside)
    view.addSubview(button)
  }


  @IBAction func segmentSelected(_ sender: UISegmentedControl) {
    segmentLabel.text = sender.titleForSegment(at: sender.selectedSegmentIndex)
  }
  
  @objc func buttonPress(){
    print("Button pressed!")
  }

  @IBAction func sliderChanged(_ sender: UISlider) {
    progBar.progress = sender.value
  }
  
  @IBAction func switchChanged(_ sender: UISwitch) {
    if sender.isOn {
      activityIndicator.startAnimating()
    }
    else {
      activityIndicator.stopAnimating()
    }
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()

  }
  
  func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return data.count
  }
  
  func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return data[component].count
  }
  
  func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    return data[component][row]
  }
  
  func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    label.text = data[component][row]
  }
}

