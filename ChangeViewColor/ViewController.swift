//
//  ViewController.swift
//  ChangeViewColor
//
//  Created by Павел Ткачев on 22.08.2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var viewColor: UIView!
    
    @IBOutlet var labelRed: UILabel!
    @IBOutlet var labelGreen: UILabel!
    @IBOutlet var labelBlue: UILabel!
    
    @IBOutlet var sliderRed: UISlider!
    @IBOutlet var sliderGreen: UISlider!
    @IBOutlet var sliderBlue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewColor.layer.cornerRadius = 10
        labelRed.text = String(sliderRed.value)
        labelGreen.text = String(sliderGreen.value)
        labelBlue.text = String(sliderBlue.value)
    }
    
    func changeColor() {
        viewColor.backgroundColor = UIColor(red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: 1)
    }

    @IBAction func sliderRedAction() {
        labelRed.text = String(round(sliderRed.value * 100) / 100)
        changeColor()
    }
    @IBAction func sliderGreenAction() {
        labelGreen.text = String(round(sliderGreen.value * 100) / 100)
        changeColor()
    }
    @IBAction func sliderBlueAction() {
        labelBlue.text = String(round(sliderBlue.value * 100) / 100)
        changeColor()
    }
  
}

