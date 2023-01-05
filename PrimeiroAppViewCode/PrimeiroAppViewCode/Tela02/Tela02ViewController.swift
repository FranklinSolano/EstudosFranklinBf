//
//  Tela02ViewController.swift
//  PrimeiroAppViewCode
//
//  Created by Franklin  Stilhano on 12/29/22.
//

import UIKit

class Tela02ViewController: UIViewController {

    var screen: Tela02Screen?
    
    override func loadView() {
        screen = Tela02Screen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    


}
