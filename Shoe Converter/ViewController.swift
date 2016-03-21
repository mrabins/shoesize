//
//  ViewController.swift
//  Shoe Converter
//
//  Created by Mark Rabins on 3/20/16.
//  Copyright © 2016 edu.self. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet weak var mensShoeConversionLabel: UILabel!
    @IBOutlet weak var womansShoeConversionLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    
    @IBOutlet weak var mensTextField: UITextField!
    @IBOutlet weak var womansTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        view.backgroundImage = UIImage(UIImage.named: "background")
        
        mensTextField.placeholder = "Enter US Shoe Size Here:"
        mensTextField.keyboardType = UIKeyboardType.NumberPad
        mensShoeConversionLabel.text = "Men's Shoe Conversion"
        mensTextField.textColor = UIColor.redColor()
        
        womansTextField.placeholder = "Enter US Shoe Size Here:"
        womansTextField.keyboardType = UIKeyboardType.NumberPad
        womansShoeConversionLabel.text = "Woman's Shoe Conversion"
        womansTextField.textColor = UIColor.redColor()
        
        detailLabel.text = "Please enter Men's Shoe Size as whole numbers. Woman's shoes size may be entered as half sizes"
        detailLabel.textColor = UIColor.darkGrayColor()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func convertMensShoeSizeButtonPressed(sender: UIButton) {
        let sizeFromTextField = Int(mensTextField.text!)!
        let conversionConstant = 30
        let mensConvertedSize = sizeFromTextField + conversionConstant
        mensShoeConversionLabel.text = "\(mensConvertedSize) in European Shoe Size"
        
    }
    
    @IBAction func convertWomensShoeSizeButtonPressed(sender: UIButton) {
        let sizeFromTextField = Double(womansTextField.text!)!
        let conversionConstant = 30.5
        let womensConvertedSize = sizeFromTextField + conversionConstant
        womansShoeConversionLabel.text = "\(womensConvertedSize) in European Shoe Size"
    }


}

