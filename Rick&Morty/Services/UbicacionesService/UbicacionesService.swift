//
//  UbicacionesService.swift
//  Rick&Morty
//
//  Created by Andrea Llerena on 3/30/23.
//

import Foundation
import Alamofire


class UbicacionesService{
    static let shared = UbicacionesService()
    
    func Cargar(url: String,completion: @escaping (Welcome8) ->()){
        
        let URL = url
        
        AF.request(URL, method: .get).responseDecodable(of: Welcome8.self) { response in
            print(response)
            switch response.result{
            case .success(let datita):
                print(datita)
            case .failure(let pipi):
                print(pipi)
            }
            if let data = response.value {
                print("= \(data)")
                completion(data)

            }
        }
        
        
        
    }
}
