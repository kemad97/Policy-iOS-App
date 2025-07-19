//
//  AlternativeHeaderView.swift
//  Policy iOS App
//
//  Created by Kerolos on 19/07/2025.
//

import SwiftUI


struct HeaderView: View {
    
    var body: some View {
        VStack(spacing: 10) {
            HStack {
                Image("app_logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                
                VStack(alignment: .leading) {
                    Text("InsureGuard")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(Color(hex: "002C5F"))
                    
                    
                }
            }
        }
        .padding()
        .background(Color.white)
        .shadow(color: .gray.opacity(0.1), radius: 2, x: 0, y: 2)
    }
}
