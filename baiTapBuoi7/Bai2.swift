//
//  Bai2.swift
//  baiTapBuoi7
//
//  Created by Trương Duy Tân on 08/05/2023.
//

import UIKit

class Bai2: UIViewController {

    
    @IBOutlet weak var changeImageButton: UIButton!
    
    @IBOutlet weak var image: UIImageView!
    
    var picNames: [UIImage] = [
        UIImage(named: "img1")!,
        UIImage(named: "img2")!,
        UIImage(named: "img3")!,
        UIImage(named: "img4")!,
        UIImage(named: "img5")!
    ]
    var pic1:UIImage = UIImage(named: "img1")!
    var pic2: UIImage?
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
      
    }
    
    
    func setupUI(){
        changeImageButton.setTitle("Change", for: .normal)
        changeImageButton.backgroundColor = .red
        changeImageButton.layer.cornerRadius = 6
        changeImageButton.center = self.view.center
        changeImageButton.tintColor = .white
        
    }
    
    
    
    @IBAction func imageChange(_ sender: UIButton) {
        var picNameRandom = picNames.randomElement()
        repeat{
            pic1 = picNames.randomElement()!
        }while pic1 == pic2
        pic2 = pic1
        image.image = pic1
    }
    
}
