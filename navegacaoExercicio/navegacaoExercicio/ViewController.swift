//
//  ViewController.swift
//  navegacaoExercicio
//
//  Created by Franklin  Stilhano on 10/6/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mudarTela: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func goTela2(_ sender: UIButton) {
        performSegue(withIdentifier: "goTela2", sender: nil)
    }
}

