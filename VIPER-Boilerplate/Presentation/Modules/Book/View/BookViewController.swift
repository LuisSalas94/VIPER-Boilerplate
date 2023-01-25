//
//  ViewController.swift
//  VIPER-Boilerplate
//
//  Created by Luis Fernando Salas Gave on 24/01/23.
//

import UIKit

protocol BookViewProtocol: AnyObject {
    
}

class BookViewController: UIViewController {
    
    static let identifier: String = "BookViewController"
    
    //MARK: Reference of Presenter
    var presenter: BookPresenterProtocol!

    override func viewDidLoad() {
        super.viewDidLoad()
        //TODO: Fetch BookList from Presenter
        presenter.getBookList()
                
    }
    
}

extension BookViewController: BookViewProtocol {
            
    
}


