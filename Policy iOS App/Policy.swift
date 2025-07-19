//
//  Policy.swift
//  Policy iOS App
//
//  Created by Kerolos on 19/07/2025.
//

import Foundation

enum PolicyStatus: String, Codable {
    case active = "Active"
    case lapsed = "Lapsed"
}

struct Policy: Identifiable, Codable {
    var id = UUID()
    let name: String
    let number: String
    let status: PolicyStatus
    let nextPremiumDue: String
    let startDate: String
    let maturityDate: String
    let sumAssured: Double
    let premiumFrequency: String
    let lastPremiumPaid: String
    let nextPremiumAmount: Double
}
