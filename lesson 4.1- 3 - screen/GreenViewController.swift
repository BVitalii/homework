//
//  GreenViewController.swift
//  lesson 4.1- 3 - screen
//
//  Created by Виталий Бородулин on 06.05.2023.
//

import UIKit

class GreenViewController: UIViewController {
    
    var greenText = ""
    var greenLabel = UILabel()
    var buttonToView = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        createGreenLAbel()
        creatButtonToView()
    }
    
    func createGreenLAbel(){
        greenLabel = UILabel.init(frame: CGRect(x: 100, y: 150, width: 150, height: 50))
        greenLabel.text = greenText
        greenLabel.backgroundColor = .systemBlue
        greenLabel.textColor = .white
        greenLabel.textAlignment = .center
        view.addSubview(greenLabel)
    }
    
    func creatButtonToView(){
        buttonToView = UIButton.init(frame: CGRect(x: 100, y: 200, width: 120, height: 30))
        buttonToView.setTitle("Red", for: .normal)
        buttonToView.backgroundColor = .systemOrange
        buttonToView.addTarget(self, action: #selector(goNomeTapped), for: .touchDown)
        view.addSubview(buttonToView)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    @IBAction func goNomeTapped(_ sender: UIButton) {
        
        self.navigationController?.popToRootViewController(animated: true)
    }
    

}
