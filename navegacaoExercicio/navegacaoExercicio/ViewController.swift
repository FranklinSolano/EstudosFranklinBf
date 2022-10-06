//
//  ViewController.swift
//  navegacaoExercicio
//
//  Created by Franklin  Stilhano on 10/6/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mudarTela: UIButton!
    
    func  configElementos(){
        mudarTela.setTitle("GoTela2", for: .normal)
        mudarTela.backgroundColor = .darkGray
        mudarTela.clipsToBounds = true
        mudarTela.layer.cornerRadius = 10
        mudarTela.setTitleColor(.green, for: .normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       configElementos()
    }


    @IBAction func goTela2(_ sender: UIButton) {
        
    }
}

