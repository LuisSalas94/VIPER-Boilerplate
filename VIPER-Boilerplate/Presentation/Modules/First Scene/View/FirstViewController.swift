//
//  ViewController.swift
//  VIPER-Boilerplate
//
//  Created by Luis Fernando Salas Gave on 24/01/23.
//

import UIKit

protocol FirstViewProtocol: AnyObject {
    
}


class FirstViewController: UIViewController {
    
    static let identifier: String = "FirstViewController"
    
    //MARK: Reference of Presenter
    var presenter: PresenterProtocol!

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.testing()
        // Do any additional setup after loading the view.
    }
    
}

extension FirstViewController: FirstViewProtocol {
    
}


