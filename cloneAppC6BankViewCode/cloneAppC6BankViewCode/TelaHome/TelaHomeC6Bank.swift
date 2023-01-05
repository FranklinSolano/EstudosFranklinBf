//
//  ViewController.swift
//  cloneAppC6BankViewCode
//
//  Created by Franklin  Stilhano on 1/2/23.
//

import UIKit

class TelaHomeC6Bank: UIViewController {
    
    var screen: ScreenTelaHomeC6Bank?
    
    
    override func loadView() {
        screen = ScreenTelaHomeC6Bank()
        view = screen
        screen?.configTableView(delegate: self, dataSource: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }


}

extension TelaHomeC6Bank: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 0
    }
    
}

