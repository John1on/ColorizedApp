//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Ion on 17.11.2023.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redNumberLabel: UILabel!
    @IBOutlet var greenNumberLabel: UILabel!
    @IBOutlet var blueNumberLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 30
        
        changeColor()
        
    }

    @IBAction func SliderAction(_ sender: UISlider) {
        changeColor()
        
        switch sender {
        case redSlider:
            redNumberLabel.text = String(format: "%.2f", redSlider.value)
        case greenSlider:
            greenNumberLabel.text = String(format: "%.2f", greenSlider.value)
        default:
            blueNumberLabel.text = String(format: "%.2f", blueSlider.value)
        }

    }
    
    private func changeColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green:CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
}

