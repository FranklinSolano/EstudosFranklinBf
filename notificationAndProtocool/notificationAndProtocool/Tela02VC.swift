//
//  Tela02VC.swift
//  notificationAndProtocool
//
//  Created by Franklin  Stilhano on 11/23/22.
//

import UIKit

protocol Tela02VCProtocool: AnyObject {
    func tappedMacbook()
    func tappedImac()
}

class Tela02VC: UIViewController {
    
    
    @IBOutlet weak var opcionLabel: UILabel!
    
    @IBOutlet weak var macbookButton: UIButton!
    
    @IBOutlet weak var imacButton: UIButton!
    
    
    weak var delegate:Tela02VCProtocool?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configElements()
    }
    
    func configElements(){
        view.backgroundColor = .black
        opcionLabel.text = "Opções"
        opcionLabel.textColor = .yellow
    }
    
    
    @IBAction func tappedMacbookButton(_ sender: UIButton) {
        //        NotificationCenter.default.post(name: .macbook, object: nil)
        delegate?.tappedMacbook()
        dismiss(animated: true)
    }
    
    
    @IBAction func tappedImacButton(_ sender: UIButton) {
        //        NotificationCenter.default.post(name: .imac, object: nil)
        delegate?.tappedImac()
        dismiss(animated: true)
    }
    
}

