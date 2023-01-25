//
//  NetworkService.swift
//  VIPER-Boilerplate
//
//  Created by Luis Fernando Salas Gave on 24/01/23.
//

import Foundation

final public class NetworkService {
    
    var presenter: BookPresenterProtocol?
 
    func getInformation(URL url: String, completion: @escaping ([BookResponse]) -> Void) {
        let url = URL(string: url)
        let session = URLSession.shared
        let dataTask = session.dataTask(with: url!) { data, response, error in
            do {
                let result = try JSONDecoder().decode([BookResponse].self, from: data!)
                completion(result)
                
            } catch {
                print("Error")
            }
        }
        dataTask.resume()
    }
    
}

