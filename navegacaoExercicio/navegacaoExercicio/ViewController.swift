//
//  ViewController.swift
//  navegacaoExercicio
//
//  Created by Franklin  Stilhano on 10/6/22.
//

import UIKit

class ViewController: UIViewController {


    
    
    
  
    @IBOutlet weak var tela03Button: UIButton!
    
    
    @IBOutlet weak var textFieldName: UITextField!
    
    @IBOutlet weak var textFieldSobrenome: UITextField!
    
    var name:String = ""
    var sobrenome:String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        configElementos()
        view.backgroundColor = .darkGray
        textFieldName.text = name
        textFieldSobrenome.text = sobrenome
 
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
    
    func configElementos(){
        
    //------
        
        tela03Button.setTitle("GoTela02", for: .normal)
        tela03Button.setTitleColor(.purple, for: .normal)
        tela03Button.backgroundColor = .darkGray
        tela03Button.clipsToBounds = true
        tela03Button.layer.cornerRadius = 10
        tela03Button.layer.borderColor = UIColor.purple.cgColor
        tela03Button.layer.borderWidth = 2
    }


    
    
   
    @IBAction func TappedButtonTela03(_ sender: UIButton) {
        let vc:Tela03VC? = UIStoryboard(name: "Tela03VC", bundle: nil).instantiateViewController(withIdentifier: "Tela03VC") as? Tela03VC
        
        let fullName = ("\(textFieldName.text ?? "")  \(textFieldSobrenome.text ?? "")")
        vc?.name = fullName
       
        
        
        
        
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
        
        
        
        
        
    }
    
}

