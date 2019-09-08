//
//  ViewController.swift
//  BarcodeScannerApp
//
//  Created by Hannah Abdalla on 9/8/19.
//  Copyright © 2019 Hannah. All rights reserved.
//

import UIKit

class ViewController: UIViewController, BarcodeScannerDelegate {

    @IBOutlet weak var barcodeField: UITextField!
    var barcodeScanner: BarcodeScannerVC!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        barcodeScanner = BarcodeScannerVC()
        barcodeScanner.delegate = self
    }
    
    @IBAction func scanBarcode(_ sender: Any) {
        
        launchBarcodeScannerVC()
    }
    
    func launchBarcodeScannerVC() {
        
        present(barcodeScanner, animated: true, completion: nil)
    }
    
    func getBarcodeValue(barcodeVal: String) {
        barcodeField.text = barcodeVal
    }
}

