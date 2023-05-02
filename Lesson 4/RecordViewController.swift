//
//  RecordViewController.swift
//  Lesson 4
//
//  Created by Виталий Бородулин on 22.04.2023.
//

import UIKit

class RecordViewController: UIViewController {

    var buttonBack = UIButton()

    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .black
       
        createButtonBack()
    }
    
    func createButtonBack(){
        buttonBack = UIButton(frame: CGRect(x: 20, y: 60, width: 132, height: 44))
        buttonBack.setTitle("Назад", for: .normal)
        buttonBack.setTitleColor(.black, for: .normal)
        buttonBack.backgroundColor = .white
        view.addSubview(buttonBack)
    }

}
