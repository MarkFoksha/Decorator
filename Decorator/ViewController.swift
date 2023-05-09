//
//  ViewController.swift
//  Decorator
//
//  Created by Марк Фокша on 08.05.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var priceLabel: UILabel! {
        didSet {
            priceLabel.text = String(tesla.getPrice()) + "€"
        }
    }
    @IBOutlet weak var carTypeLabel: UILabel! {
        didSet {
            carTypeLabel.text = String(tesla.getTitle())
        }
    }
    
    var tesla: CarProtocol = Tesla3()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func typeControl(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            tesla = Tesla3()
            priceLabel.text = String(tesla.getPrice()) + "€"
            carTypeLabel.text = String(tesla.getTitle())
        case 1:
            tesla = Tesla3()
            tesla = LongRange(decorator: tesla)
            priceLabel.text = String(tesla.getPrice()) + "€"
            carTypeLabel.text = String(tesla.getTitle())
        case 2:
            tesla = Tesla3()
            tesla = TeslaPerformance(decorator: tesla)
            priceLabel.text = String(tesla.getPrice()) + "€"
            carTypeLabel.text = String(tesla.getTitle())
        default:
            break
        }
    }
    
}

