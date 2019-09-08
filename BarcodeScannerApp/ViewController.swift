//
//  ViewController.swift
//  BarcodeScannerApp
//
//  Created by Hannah Abdalla on 9/8/19.
//  Copyright © 2019 Hannah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var barcodeField: UITextField!
    var barcodeScanner: BarcodeScannerVC!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        barcodeScanner = BarcodeScannerVC()
    }
    
    @IBAction func scanBarcode(_ sender: Any) {
        
        launchBarcodeScannerVC()
    }
    
    func launchBarcodeScannerVC() {
        
        present(barcodeScanner, animated: true, completion: nil)
        while navigationController?.topViewController != self {}
        barcodeField.text = barcodeScanner.barcodeValue
    }
}

