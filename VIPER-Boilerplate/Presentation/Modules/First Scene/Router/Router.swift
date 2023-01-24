//
//  Router.swift
//  VIPER-Boilerplate
//
//  Created by Luis Fernando Salas Gave on 24/01/23.
//

import UIKit

protocol RouterProtocol: AnyObject {
    
}

class Router {
    var currentVC: UIViewController
    init(currentVC: UIViewController) {
        self.currentVC = currentVC
    }
}


extension Router: RouterProtocol {
    
}
