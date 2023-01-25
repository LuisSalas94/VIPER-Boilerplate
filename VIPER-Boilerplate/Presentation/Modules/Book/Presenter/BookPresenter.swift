//
//  Presenter.swift
//  VIPER-Boilerplate
//
//  Created by Luis Fernando Salas Gave on 24/01/23.
//

import Foundation

protocol BookPresenterProtocol: AnyObject {
    func getBookList()
    func pullBookList(receivedData: [BookResponse])
     
}

class BookPresenter {
    
    private weak var view: BookViewProtocol?
    private var router: BookRouterProtocol
    private var interactor: BookInteractorProtocol
    
        
    init(view: BookViewProtocol, router: BookRouterProtocol, interactor: BookInteractorProtocol) {
        self.view = view
        self.router = router
        self.interactor = interactor
    }
        
}


extension BookPresenter: BookPresenterProtocol {
       
   
    func pullBookList(receivedData: [BookResponse]) {
        print("Data recibida en PRESENTER", receivedData)
        
    }
          
    
    func getBookList() {
        //TODO: Fetch BookList from INTERACTOR
        interactor.fetchBookList()
    }
    
  
          
}
