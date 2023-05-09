//
//  TeslaPerformance.swift
//  Decorator
//
//  Created by Марк Фокша on 09.05.2023.
//

import Foundation

class TeslaPerformance: TeslaDecorator {
    required init(decorator: CarProtocol) {
        super.init(decorator: decorator)
    }
    
    override func getPrice() -> Int {
        super.getPrice() + 12_000
    }
    
    override func getTitle() -> String {
        super.getTitle() + "Performance"
    }
}
