//
//  ViewController.swift
//  DesafioLifeCyclo
//
//  Created by Franklin  Stilhano on 10/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var proximaTela: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function)
    }
    override func viewWillAppear(_ animated: Bool) {
        print(#function)
    }

    override func viewDidAppear(_ animated: Bool) {
        print(#function)
    }
    override func viewWillDisappear(_ animated: Bool) {
        print(#function)
    }
    override func viewDidDisappear(_ animated: Bool) {
        print(#function)
    }
}

