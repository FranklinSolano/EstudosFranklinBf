//
//  ScreenTelaHomeC6Bank.swift
//  cloneAppC6BankViewCode
//
//  Created by Franklin  Stilhano on 1/2/23.
//

import UIKit

class ScreenTelaHomeC6Bank: UIView {

    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Franklin"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        return label
    }()
    
    lazy var helpButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "questionmark"), for: .normal)
        button.tintColor = .white
//        button.tintColor = .white
        // action
        return button
    }()
    
    lazy var notificationButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "ellipsis.bubble.fill"), for: .normal)
        button.tintColor = .white

        // action
        return button
    }()

    lazy var olhoButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "eye.fill"), for: .normal)
        button.tintColor = .white
        // action
        return button
    }()

    lazy var profileButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "person.fill"), for: .normal)
        button.tintColor = .white
        // action
        return button
    }()
    
    lazy var tableView: UITableView = {
        let tv = UITableView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.separatorStyle = .none
        tv.backgroundColor = .black
        return tv
    }()

    
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .black
        configAddView()
        configConstraints()
        
    }
    
    func configTableView(delegate: UITableViewDelegate, dataSource: UITableViewDataSource){
        tableView.delegate = delegate
        tableView.dataSource = dataSource
        
    }
    
    func configAddView(){
        addSubview(nameLabel)
        addSubview(helpButton)
        addSubview(notificationButton)
        addSubview(olhoButton)
        addSubview(profileButton)
        addSubview(tableView)
    }
    
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func configConstraints(){
        NSLayoutConstraint.activate([
        
            nameLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor,constant: 8),
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            helpButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            helpButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -120),
            helpButton.heightAnchor.constraint(equalToConstant: 17),
            helpButton.widthAnchor.constraint(equalToConstant: 17),
            
            notificationButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            notificationButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -90),
            notificationButton.heightAnchor.constraint(equalToConstant: 17),
            notificationButton.widthAnchor.constraint(equalToConstant: 17),
            
            olhoButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            olhoButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -60),
            olhoButton.heightAnchor.constraint(equalToConstant: 20),
            olhoButton.widthAnchor.constraint(equalToConstant: 20),
            
            profileButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            profileButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            profileButton.heightAnchor.constraint(equalToConstant: 17),
            profileButton.widthAnchor.constraint(equalToConstant: 17),
        
            tableView.topAnchor.constraint(equalTo: helpButton.bottomAnchor, constant: 20),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor),
        
        ])
    }
    
}
