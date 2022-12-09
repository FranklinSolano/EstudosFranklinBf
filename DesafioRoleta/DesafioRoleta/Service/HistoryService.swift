//
//  HistoryService.swift
//  DesafioRoleta
//
//  Created by Franklin  Stilhano on 12/7/22.
//

import UIKit

protocol HistoryServiceProtocol: GenericService {
    func getHistoryFromJson(completion: @escaping completion<History?>)
    func getHistoryURLSession(completion: @escaping completion<History?>)
}

class HistoryService: HistoryServiceProtocol {
    func getHistoryURLSession(completion: @escaping completion<History?>) {
        
        let urlString: String = "https://run.mocky.io/v3/719a42df-ab83-4c00-b287-9395a8a45ebc"
        guard let url = URL(string: urlString) else { return }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
        
            guard let dataResult = data else { return }
            
            guard let response = response as? HTTPURLResponse else { return }
            
            if response.statusCode == 200 {
                do {
                    let history: History = try JSONDecoder().decode(History.self, from: dataResult)
                
                    completion(history,nil)
                } catch  {
                    completion(nil, error)
                }
            } else {
                print("Deu ruim")
                completion(nil, error)
            }
        }
        task.resume()
    }
    
    
    func getHistoryFromJson(completion: @escaping completion<History?>){
        if let url = Bundle.main.url(forResource: "history", withExtension: "json"){
            do {
                let data = try Data(contentsOf: url)
                let history: History = try JSONDecoder().decode(History.self, from: data)
                completion(history,nil)
            } catch  {
                completion(nil, error)
            }
        }
    }
    

}


// Exemplo de Arquitetura MVVM

// Tela Home

// HomeViewController
// HomeViewModel
// HomeService -> OBS: Caso seja necessario  Essa classe deve conter (HomeServiceProtocol) -> OBS: Depende da Arquitetura



// Tela Profile

// ProfileViewController
// ProfileViewModel
// ProfileService -> OBS: Caso seja necessario   Essa classe deve conter (ProfileServiceProtocol) -> OBS: Depende da Arquitetura






