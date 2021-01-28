//
//  ViewController.swift
//  Color Slider
//
//  Created by Nelly Cheung on 27/1/2021.
//

import UIKit

class ViewController: UIViewController {
    
    //Mark: Outlets
    
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //Mark: Actions
    
    @IBAction func changeColorComponent(){
        if self.redSlider == nil {
            return
        }
        
        
        let r: CGFloat = CGFloat(self.redSlider.value)
        let g: CGFloat = CGFloat(self.greenSlider.value)
        let b: CGFloat = CGFloat(self.blueSlider.value)
                
        
        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 255)
        
    }
    
    @IBAction func changeLabelFigure(){
                
        self.redLabel.text = "\(self.redSlider.value)"
        self.greenLabel.text = "\(self.greenSlider.value)"
        self.blueLabel.text = "\(self.blueSlider.value)"
        
    }

}

