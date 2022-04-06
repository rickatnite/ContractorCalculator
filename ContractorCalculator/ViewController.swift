//
//  ViewController.swift
//  ContractorCalculator
//
//  Created by E Roche on 4/4/22.
//

import UIKit
import Foundation


class ViewController: UIViewController {

    @IBOutlet weak var calcBtnOutlet: UIButton!
    @IBOutlet weak var txtLabor: UITextField!
    @IBOutlet weak var txtMaterials: UITextField!
    @IBOutlet weak var lblSubtotal: UILabel!
    @IBOutlet weak var lblTax: UILabel!
    @IBOutlet weak var lblTotal: UILabel!
    
    @IBAction func btnCalculate(_ sender: Any) {
        var labor:Double? = nil
        labor = Double(txtLabor.text!)
        var materials:Double? = nil
        materials = Double(txtMaterials.text!)
        
        if labor != nil && materials != nil {
            let sub = labor! + materials!
            let tax = sub * 0.05
            let total = sub + tax
            let subTxt = "$\(sub)"
            let taxTxt = "$\(tax)"
            let totTxt = "$\(total)"
            lblSubtotal.text = subTxt
            lblTax.text = taxTxt
            lblTotal.text = totTxt
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

