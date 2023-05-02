//
//  ViewController.swift
//  Lesson 4
//
//  Created by Виталий Бородулин on 22.04.2023.
//

import UIKit

class ViewController: UIViewController {

    var settingsButton = UIButton()
    var recordsButton = UIButton()
    var gameButton = UIButton()
    
    
    var vc = UIViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureSettingsButton()
        configureRecordsButton()
        configureGameButton()
    }

    func configureSettingsButton() {
        settingsButton = UIButton(frame: CGRect.init(x: 150, y: 100, width: 100, height: 100))
        settingsButton.setTitle("Settings", for: .normal)
        settingsButton.backgroundColor = .systemGray
        settingsButton.addTarget(self, action: #selector(settingsButtomPressed), for: .touchDown)
        view.addSubview(settingsButton)
        
    }
    
    func configureRecordsButton() {
        recordsButton = UIButton(frame: CGRect.init(x: 150, y: 250, width: 100, height: 100))
        recordsButton.setTitle("Records", for: .normal)
        recordsButton.backgroundColor = .systemGray
        recordsButton.addTarget(self, action: #selector(recordsButtomPressed), for: .touchDown)
        view.addSubview(recordsButton)
    }
    
    func configureGameButton() {
        gameButton = UIButton(frame: CGRect.init(x: 150, y: 400, width: 100, height: 100))
        gameButton.setTitle("Game", for: .normal)
        gameButton.backgroundColor = .systemGray
        gameButton.addTarget(self, action: #selector(gameButtomPressed), for: .touchDown)
        view.addSubview(gameButton)
    }
    
    @IBAction func gameButtomPressed(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "GameViewController") as! GameViewController
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
    }
    
    @IBAction func recordsButtomPressed(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "RecordViewController") as! RecordViewController
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
    }
    
    @IBAction func settingsButtomPressed(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SettingsViewController") as! SettingsViewController
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
    }
    
    
}

