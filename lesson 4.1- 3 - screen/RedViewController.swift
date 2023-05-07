//
//  RedViewController.swift
//  lesson 4.1- 3 - screen
//
//  Created by Виталий Бородулин on 06.05.2023.
//

import UIKit

class RedViewController: UIViewController {

    var redText = ""
    var buttonToGreen = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed
        creatButtonToGreen()
    }
    
    func creatButtonToGreen(){
        buttonToGreen = UIButton.init(frame: CGRect(x: 100, y: 200, width: 120, height: 30))
        buttonToGreen.setTitleColor(.black, for: .normal)
        buttonToGreen.backgroundColor = .green
        buttonToGreen.setTitle("Green", for: .normal)
        buttonToGreen.addTarget(self, action: #selector(buttonToGreenTapped), for: .touchDown)
        view.addSubview(buttonToGreen)
    }
    @IBAction func buttonToGreenTapped(_ sender: UIButton) {
        let vcGreen = storyboard?.instantiateViewController(withIdentifier: "GreenViewController") as! GreenViewController
        vcGreen.greenText = self.redText
        self.navigationController?.pushViewController(vcGreen, animated: true)
    }
    
}
