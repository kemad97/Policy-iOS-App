//
//  PolicyDetailView.swift
//  Policy iOS App
//
//  Created by Kerolos on 19/07/2025.
//


import SwiftUI

struct PolicyDetailView: View {
    let policy: Policy
    @State private var isExpanded = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            // Basic Policy Information
            HStack {
                VStack(alignment: .leading) {
                    Text(policy.name)
                        .font(.headline)
                        .foregroundColor(.white)
                    
                    Text("Policy No: \(policy.number)")
                        .font(.subheadline)
                        .foregroundColor(.white)
                    
                    HStack {
                        Text("Status:")
                            .foregroundColor(.white)
                        Text(policy.status.rawValue)
                            .foregroundColor(policy.status == .active ? .green : .red)
                    }
                    
                    Text("Next Premium Due: \(policy.nextPremiumDue)")
                        .font(.caption)
                        .foregroundColor(.white)
                }
                Spacer()
            }
            .padding()
            .background(Color(hex: "002C5F"))
            .cornerRadius(10)
            
            // Expandable Details
            if isExpanded {
                VStack(alignment: .leading, spacing: 8) {
                    DetailRow(label: "Start Date", value: policy.startDate)
                    DetailRow(label: "Maturity Date", value: policy.maturityDate)
                    DetailRow(label: "Sum Assured", value: "$\(policy.sumAssured)" )
                    DetailRow(label: "Last Premium Paid", value: policy.lastPremiumPaid)
                    DetailRow(label: "Next Premium Amount", value: "$\(policy.nextPremiumAmount)")
                }
                .padding()
                .transition(.slide)
                .animation(.bouncy, value: isExpanded)
            }
            
            // Read More Button
            Button(action: {
                withAnimation {
                    isExpanded.toggle()
                }
            }) {
                Text(isExpanded ? "Hide Details" : "Read More")
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color(hex: "FF6F61"))
                    .cornerRadius(10)
            }
            .padding()
        }
        .cornerRadius(15)
        .shadow(radius: 5)
    }
}

// Helper View for Detail Rows
struct DetailRow: View {
    let label: String
    let value: String
    
    var body: some View {
        HStack {
            Text(label)
                .foregroundColor(.gray)
            Spacer()
            Text(value)
                .foregroundColor(.black)
        }
    }
}

// Extension for Hex Color
extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }

        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
