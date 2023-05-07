//
//  ViewController.swift
//  lesson 4.1- 3 - screen
//
//  Created by Виталий Бородулин on 06.05.2023.
//

import UIKit

class ViewController: UIViewController {
    var yellowLabel = UILabel()
    var buttonToRed = UIButton()
    
   var yellowText = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        creatButtonToRed()
        createYellowLabel()
    }
    
    func createYellowLabel(){
        yellowLabel = UILabel.init(frame: CGRect(x: 80, y: 120, width: 150, height: 40))
        yellowLabel.text = "напиши что-то"
        yellowLabel.textColor = .lightGray
        yellowLabel.backgroundColor = .white
        yellowLabel.textAlignment = .center
        yellowText = "\(yellowLabel.text ?? "")"
        view.addSubview(yellowLabel)
        
    }
    func creatButtonToRed(){
        buttonToRed = UIButton.init(frame: CGRect(x: 100, y: 200, width: 120, height: 30))
        buttonToRed.setTitle("Red", for: .normal)
        buttonToRed.backgroundColor = .systemOrange
        buttonToRed.addTarget(self, action: #selector(buttonToRedTapped), for: .touchDown)
        view.addSubview(buttonToRed)
    }
    @IBAction func buttonToRedTapped(_ sender: UIButton) {
        let vcRed = storyboard?.instantiateViewController(withIdentifier: "RedViewController") as! RedViewController
        vcRed.redText = self.yellowText
        self.navigationController?.pushViewController(vcRed, animated: true)
    
        
    }
    
    
}


