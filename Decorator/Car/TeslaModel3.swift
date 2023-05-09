//
//  Tesla Model 3.swift
//  Decorator
//
//  Created by Марк Фокша on 08.05.2023.
//

import Foundation

class Tesla3: CarProtocol {
    func getTitle() -> String {
        "Tesla Model 3 "
    }
    
    func getPrice() -> Int {
        35_000
    }
    
    
}
