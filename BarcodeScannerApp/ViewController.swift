//
//  ViewController.swift
//  BarcodeScannerApp
//
//  Created by Hannah AlAhmed on 9/8/19.
//  Copyright © 2019 Hannah. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, BarcodeScannerDelegate {

    @IBOutlet weak var barcodeField: UITextField!
    
    var barcodeScanner: BarcodeScannerVC!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        barcodeScanner = BarcodeScannerVC()
        barcodeScanner.delegate = self
        barcodeField.delegate = self
    }
    
    func launchBarcodeScannerVC() {
        
        present(barcodeScanner, animated: true, completion: nil)
    }
    
    func getBarcodeValue(barcodeVal: String) {
        barcodeField.text = barcodeVal
    }
    
    @IBAction func scanBarcode(_ sender: Any) {
        
        launchBarcodeScannerVC()
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        return false
    }
}

