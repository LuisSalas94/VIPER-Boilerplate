//
//  Interactor.swift
//  VIPER-Boilerplate
//
//  Created by Luis Fernando Salas Gave on 24/01/23.
//

import Foundation

protocol BookInteractorProtocol: AnyObject {
    func fetchBookList()
   
}

class BookInteractor {
    private var network: NetworkService = NetworkService()
    
    var presenter: BookPresenterProtocol?
   
}


extension BookInteractor: BookInteractorProtocol {
           
     
   func fetchBookList() {
            
    network.getInformation(URL: "https://fernando-bookstore.netlify.app/.netlify/functions/api/books", completion: { result in
        print("RESULTADO DESDE INTERACTOR: ", result)
        //MARK: No logro la conexion entre INTERACTOR Y PRESENTER, La data llega hasta esta capa.
        //pullBookList metodo que que tiene como parametro un array tipo [BookResponse]
        self.presenter?.pullBookList(receivedData: result)
            
     })
       
    }
           
}
