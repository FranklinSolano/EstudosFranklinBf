//
//  ViewController.swift
//  navegacaoExercicio
//
//  Created by Franklin  Stilhano on 10/6/22.
//

import UIKit

class ViewController: UIViewController {


    
    @IBOutlet weak var tela02Button: UIButton!
    
  
    @IBOutlet weak var tela03Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configElementos()
        view.backgroundColor = .darkGray
 
    }
    
    func configElementos(){
        tela02Button.setTitle("GoTela02", for: .normal)
        tela02Button.setTitleColor(.green, for: .normal)
        tela02Button.backgroundColor = .darkGray
        tela02Button.clipsToBounds = true
        tela02Button.layer.cornerRadius = 10
        tela02Button.layer.borderColor = UIColor.green.cgColor
        tela02Button.layer.borderWidth = 2
        
    //------
        
        tela03Button.setTitle("GoTela03", for: .normal)
        tela03Button.setTitleColor(.purple, for: .normal)
        tela03Button.backgroundColor = .darkGray
        tela03Button.clipsToBounds = true
        tela03Button.layer.cornerRadius = 10
        tela03Button.layer.borderColor = UIColor.purple.cgColor
        tela03Button.layer.borderWidth = 2
    }


    @IBAction func TappedButton(_ sender: UIButton) {
        let vc:Tela02VC? = UIStoryboard(name: "Tela02VC", bundle: nil).instantiateViewController(withIdentifier: "Tela02VC") as? Tela02VC
        present(vc ?? UIViewController(), animated: true)
        
    }
    
   
    @IBAction func TappedButtonTela03(_ sender: UIButton) {
        let vc:Tela03VC? = UIStoryboard(name: "Tela03VC", bundle: nil).instantiateViewController(withIdentifier: "Tela03VC") as? Tela03VC
        
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    
}

