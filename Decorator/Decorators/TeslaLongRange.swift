//
//  TeslaLongRange.swift
//  Decorator
//
//  Created by Марк Фокша on 09.05.2023.
//

import Foundation

class LongRange: TeslaDecorator {
    required init(decorator: CarProtocol) {
        super.init(decorator: decorator)
    }
    
    override func getTitle() -> String {
        super.getTitle() + "Long Range"
    }
    
    override func getPrice() -> Int {
        super.getPrice() + 10_000
    }
}
