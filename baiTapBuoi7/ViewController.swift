//
//  ViewController.swift
//  baiTapBuoi7
//
//  Created by Trương Duy Tân on 08/05/2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    var color:[UIColor] = [.black, .red, .green, .brown, .gray]
    var color1: UIColor = .white
    var color2: UIColor?
    @IBOutlet weak var backgroundColorButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButton()
        
        
    }
    //button setup
    func setupButton(){
        backgroundColorButton.setTitle("Change BackgroundColor", for: .normal)
        backgroundColorButton.tintColor = .white
        backgroundColorButton.backgroundColor = .red
        backgroundColorButton.layer.cornerRadius = 6
        backgroundColorButton.setTitleColor(.white, for: .normal)
        backgroundColorButton.center = self.view.center
        
    }
    
    
    //change color
    @IBAction func changeColor(_ sender: UIButton) {
        repeat{
            color1 = color.randomElement()!
        }while color1 == color2
        color2 = color1
        self.view.backgroundColor = color1
    }
    
    }
    
