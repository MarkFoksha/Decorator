//
//  TeslaDecorator.swift
//  Decorator
//
//  Created by Марк Фокша on 09.05.2023.
//

import Foundation

class TeslaDecorator: CarProtocol {
    private let decoratorType: CarProtocol
    
    required init(decorator: CarProtocol) {
        self.decoratorType = decorator
    }
    
    func getTitle() -> String {
        decoratorType.getTitle()
    }
    
    func getPrice() -> Int {
        decoratorType.getPrice()
    }
    
    
}
