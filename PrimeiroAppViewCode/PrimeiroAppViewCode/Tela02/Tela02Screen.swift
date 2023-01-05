//
//  Tela02Screen.swift
//  PrimeiroAppViewCode
//
//  Created by Franklin  Stilhano on 12/29/22.
//

import UIKit



class Tela02Screen: UIView {
    
    
    lazy var switchTeste: UISwitch = {
        let sw = UISwitch()
        sw.translatesAutoresizingMaskIntoConstraints = false
        sw.addTarget(self, action: #selector(tappedSwitch), for: .touchUpInside)
        return sw
    }()
    
    
    @objc func tappedSwitch(sender: UISwitch){
        
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .blue
        addViews()
        configConstraints()
    }
    
    
    func addViews(){
        addSubview(switchTeste)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configConstraints(){
        NSLayoutConstraint.activate([
            
            switchTeste.centerXAnchor.constraint(equalTo: centerXAnchor),
            switchTeste.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            
            
        ])
    }
    
    
}
