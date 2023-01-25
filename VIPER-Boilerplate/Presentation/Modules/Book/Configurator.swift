//
//  Configurator.swift
//  VIPER-Boilerplate
//
//  Created by Luis Fernando Salas Gave on 24/01/23.
//

import UIKit

class Configurator {
    class func make() -> UIViewController {
        
        let view = UIStoryboard.init(name: "Main", bundle: Bundle(for: BookViewController.self)).instantiateViewController(withIdentifier: BookViewController.identifier) as! BookViewController
        
        let router: BookRouterProtocol = BookRouter(currentVC: view)
        let interactor: BookInteractorProtocol = BookInteractor()
        let presenter: BookPresenterProtocol = BookPresenter(view: view, router: router, interactor: interactor)
        
        view.presenter = presenter
        
        return view
    }
}
