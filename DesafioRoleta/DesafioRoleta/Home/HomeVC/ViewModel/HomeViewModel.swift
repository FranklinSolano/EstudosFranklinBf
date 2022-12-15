//
//  HomeViewModel.swift
//  DesafioRoleta
//
//  Created by Franklin  Stilhano on 12/15/22.
//

import UIKit

class HomeViewModel {
    
    private var listPerson: [Person] = []
    private var listImage: [String] = ["Image","Image-1","Image-2","Image-3","Image-4","Image-5",]
    private var person: Person?
    
    var isListPersonEmpty: Bool {
        return listPerson.isEmpty
    }
    
    func SortearButton() {
        self.person = listPerson.randomElement()
    }
    
    func checkPersonPayer(indexPath: IndexPath) -> Bool {
      return  self.listPerson[indexPath.row] === self .person
    }
    
    func removeAll(){
        listPerson.removeAll()
    }
    
    func removePerson(indexPath: IndexPath){
        listPerson.remove(at: indexPath.row)
    }
    
    var numberOfRowsInSection: Int {
        if isListPersonEmpty {
            return 1
        } else{
            return listPerson.count
        }
    }
    
    func loadCurrentPerson(indexPath: IndexPath) -> Person {
        return listPerson[indexPath.row]
    }
    
    var heightForRowAt: CGFloat {
        if isListPersonEmpty {
            return 220
        }else {
            return 90
        }
    }
    
    func addPerson(name:String){
        listPerson.append(Person(name: name, image: listImage.randomElement() ?? "" ))
    }
}
