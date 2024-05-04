//
//  DeviceViewController.swift
//  TablasArcos
//
//  Created by Mac13 on 13/04/24.
//

import UIKit

class DeviceViewController: UIViewController {
    
    var element: String?

    @IBOutlet var lblElement: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(element!)
        lblElement.text = element!
    }
}
