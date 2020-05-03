//
//  ViewController.swift
//  ColorRandom-Bike
//
//  Created by Tai-Yun Chen on 2020/5/1.
//  Copyright © 2020 Jack Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // Outlet設定
    @IBOutlet weak var alphaSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var bikeImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // Action設定 - 4個Slider控制
    @IBAction func colorSliderChange(_ sender: Any) {
        bikeImageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
    }
    
    // Action設定 - 隨機按鈕
    @IBAction func randomColor(_ sender: Any) {
        // Slider變數變化
        redSlider.value = Float.random(in: 0...1)
        greenSlider.value = Float.random(in: 0...1)
        blueSlider.value = Float.random(in: 0...1)
        alphaSlider.value = Float.random(in: 0.5...1)
        
        bikeImageView.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: CGFloat.random(in: 0.5...1))
    }
    
}

