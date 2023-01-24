//
//  Presenter.swift
//  VIPER-Boilerplate
//
//  Created by Luis Fernando Salas Gave on 24/01/23.
//

import Foundation

protocol PresenterProtocol: AnyObject {
    func testing()
}


class Presenter {
    
    private weak var view: FirstViewProtocol?
    private var router: RouterProtocol
    private var interactor: InteractorProtocol
    
    init(view: FirstViewProtocol, router: RouterProtocol, interactor: InteractorProtocol) {
        self.view = view
        self.router = router
        self.interactor = interactor
    }
    
    
}


extension Presenter: PresenterProtocol {
    func testing() {
        print("It's working")
    }
    
    
}
