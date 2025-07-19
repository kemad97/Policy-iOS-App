//
//  PolicyListView.swift
//  Policy iOS App
//
//  Created by Kerolos on 19/07/2025.
//


import SwiftUI

struct PolicyListView: View {
    @StateObject private var viewModel = PolicyViewModel()
    
    var body: some View {

            VStack {
                HeaderView()

                if viewModel.isLoading {
                    ProgressView("Loading Policies...")
                } else {
                    List(viewModel.policies) { policy in
                        PolicyDetailView(policy: policy)
                            .listRowSeparator(.hidden)
                    }
                    .listStyle(PlainListStyle())
                }
            }
          
        }
}

struct PolicyListView_Previews: PreviewProvider {
    static var previews: some View {
        PolicyListView()
    }
}
