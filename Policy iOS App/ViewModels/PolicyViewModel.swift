//
//  PolicyViewModel.swift
//  Policy iOS App
//
//  Created by Kerolos on 19/07/2025.
//

import Foundation
import Combine

class PolicyViewModel: ObservableObject {
    @Published var policies: [Policy] = []
    @Published var isLoading = false
    @Published var error: Error?
    
    init() {
        fetchPolicies()
    }
    
    func fetchPolicies() {
        isLoading = true
        
        // Simulated policy data
        self.policies = [
            Policy(
                name: "Life Insurance Plus",
                number: "POL-001",
                status: .active,
                nextPremiumDue: "31 Dec 2025",
                startDate: "1 Jan 2020",
                maturityDate: "31 Dec 2030",
                sumAssured: 1000000.0,
                premiumFrequency: "Annual",
                lastPremiumPaid: "31 Dec 2024",
                nextPremiumAmount: 50000.0
            ),
            Policy(
                name: "Health Guardian",
                number: "POL-002",
                status: .active,
                nextPremiumDue: "15 Aug 2025",
                startDate: "1 Jan 2022",
                maturityDate: "31 Dec 2027",
                sumAssured: 500000.0,
                premiumFrequency: "Semi-Annual",
                lastPremiumPaid: "15 Feb 2025",
                nextPremiumAmount: 25000.0
            ),
            Policy(
                name: "Retirement Shield",
                number: "POL-003",
                status: .active,
                nextPremiumDue: "N/A",
                startDate: "1 Jan 2015",
                maturityDate: "31 Dec 2025",
                sumAssured: 750000.0,
                premiumFrequency: "Annual",
                lastPremiumPaid: "31 Dec 2024",
                nextPremiumAmount: 0.0
            )
        ]
        
        isLoading = false
    }
}
