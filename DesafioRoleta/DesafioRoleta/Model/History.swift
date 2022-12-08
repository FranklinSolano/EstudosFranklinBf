//
//  History.swift
//  DesafioRoleta
//
//  Created by Franklin  Stilhano on 12/7/22.
//

import Foundation

// MARK: - Decodable
// Decodifica, ou seja transforma um tipo de json em um objeto Swift

// MARK: - Encodable
// Codifica - ou seja, transforma um tipo de dado no Swift em JSON

// MARK: - Codable
// Codifica e Decodifica


// MARK: - History
struct History: Codable {
    var totalValue: Double?
    var historyAccountList: [HistoryAccountList]?
}

// MARK: - HistoryAccountList
struct HistoryAccountList: Codable {
    var historyID, date, name: String?
    var price: Double?
    var iconImage: String?
}

