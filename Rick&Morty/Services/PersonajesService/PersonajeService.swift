//
//  PersonajeService.swift
//  Rick&Morty
//
//  Created by Andrea Llerena on 3/23/23.
//

import Foundation
import Alamofire


class PersonajeService{
    static let shared = PersonajeService()
    
    func Cargar(url: String,completion: @escaping (Welcome) ->()){
        
        let URL = url
        
        AF.request(URL, method: .get).responseDecodable(of: Welcome.self) { response in
            print(response)
            switch response.result{
            case .success(let datita):
                print(datita)
            case .failure(let pipi):
                print(pipi)
            }
            if let data = response.value {
                print(data)
                completion(data)

            }
        }
        
        
        
    }
}





