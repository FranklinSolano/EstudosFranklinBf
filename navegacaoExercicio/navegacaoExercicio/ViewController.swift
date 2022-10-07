//
//  ViewController.swift
//  navegacaoExercicio
//
//  Created by Franklin  Stilhano on 10/6/22.
//

import UIKit

class ViewController: UIViewController {


    
    @IBOutlet weak var tela02Button: UIButton!
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configElementos()
        view.backgroundColor = .darkGray
 
    }
    
    func configElementos(){
        tela02Button.setTitle("GoTela2", for: .normal)
        tela02Button.setTitleColor(.green, for: .normal)
        tela02Button.backgroundColor = .darkGray
        tela02Button.clipsToBounds = true
        tela02Button.layer.cornerRadius = 10
        tela02Button.layer.borderColor = UIColor.green.cgColor
        tela02Button.layer.borderWidth = 2
    }


    @IBAction func TappedButton(_ sender: UIButton) {
        performSegue(withIdentifier: "goTela02", sender: nil)
    }
    
   
    
}

