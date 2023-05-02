//
//  GameViewController.swift
//  Lesson 4
//
//  Created by Виталий Бородулин on 22.04.2023.
//

import UIKit

class GameViewController: UIViewController {

    var buttonBack = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemRed
        createButtonBack()
        
    }
    
    func createButtonBack(){
        buttonBack = UIButton(frame: CGRect(x: 20, y: 60, width: 132, height: 44))
        buttonBack.setTitle("Назад", for: .normal)
        buttonBack.setTitleColor(.black, for: .normal)
        buttonBack.backgroundColor = .white
        buttonBack.addTarget(self, action: #selector(buttonBackPressed), for: .touchDown)
        view.addSubview(buttonBack)
    }
    @IBAction func buttonBackPressed(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SettingsViewController") as! SettingsViewController
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
    }
}
