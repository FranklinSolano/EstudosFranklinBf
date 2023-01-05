//
//  ViewController.swift
//  notificationAndProtocool
//
//  Created by Franklin  Stilhano on 11/23/22.
//

import UIKit

class Tela01VC: UIViewController {
    
    
    @IBOutlet weak var imageApple: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configElements()
//        configObeserver()
    }
    
    func configObeserver(){
        NotificationCenter.default.addObserver(self, selector: #selector(upadadeMacbook), name: .macbook, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(upadadeImac), name: .imac, object: nil)
        
    }
    @objc func upadadeImac(){
        nameLabel.text = "Imac das Galaxias"
        view.backgroundColor = .red
        imageApple.image = UIImage(named: "imac_pro")
        
    }
    
    @objc func upadadeMacbook(){
        nameLabel.text = "Macbook Pro"
        view.backgroundColor = .blue
        imageApple.image = UIImage(named: "macbook_pro")
        
    }
    
    func configElements(){
        view.backgroundColor = .black
        nameLabel.text = ""
        imageApple.image = UIImage(named: "apple")
        imageApple.tintColor = .white
        nextButton.setTitle("Clique Aqui", for: .normal)
        nextButton.setTitleColor(.black, for: .normal)
        nextButton.backgroundColor = .white
    }


    @IBAction func tappedNextButton(_ sender: UIButton) {
        let vc:Tela02VC? = UIStoryboard(name: "Tela02VC", bundle: nil).instantiateViewController(withIdentifier: String(describing: Tela02VC.self)) as? Tela02VC
        vc?.delegate = self
        vc?.modalPresentationStyle = .fullScreen
        present(vc ?? UIViewController(), animated: true)
    }
}

extension Tela01VC: Tela02VCProtocool {
    func tappedMacbook() {
        nameLabel.text = "Macbook Pro"
        view.backgroundColor = .blue
        imageApple.image = UIImage(named: "macbook_pro")
    }
    
    func tappedImac() {
        nameLabel.text = "Imac das Galaxias"
        view.backgroundColor = .red
        imageApple.image = UIImage(named: "imac_pro")
    }
    
    
}
