//
//  Configurator.swift
//  VIPER-Boilerplate
//
//  Created by Luis Fernando Salas Gave on 24/01/23.
//

import UIKit

class Configurator {
    class func make() -> UIViewController {
        
        let view = UIStoryboard.init(name: "Main", bundle: Bundle(for: FirstViewController.self)).instantiateViewController(withIdentifier: FirstViewController.identifier) as! FirstViewController
        
        let router: RouterProtocol = Router(currentVC: view)
        let interactor: InteractorProtocol = Interactor()
        let presenter: PresenterProtocol = Presenter(view: view, router: router, interactor: interactor)
        
        view.presenter = presenter
        
        return view
    }
}
