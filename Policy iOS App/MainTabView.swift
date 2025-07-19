//
//  MainTabView.swift
//  Policy iOS App
//
//  Created by Kerolos on 19/07/2025.
//


import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                .tag(0)
            
            PolicyListView()
                .tabItem {
                    Image(systemName: "doc.text")
                    Text("Policies")
                }
                .tag(1)
            
            ClaimsView()
                .tabItem {
                    Image(systemName: "shield")
                    Text("Claims")
                }
                .tag(2)
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
                .tag(3)
        }
        .accentColor(Color(hex: "002C5F")) // Highlight color for selected tab
    }
}

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Home Screen")
            }
            .navigationTitle("Home")
        }
    }
}

struct ClaimsView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Claims Screen")
            }
            .navigationTitle("Claims")
        }
    }
}

struct ProfileView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Profile Screen")
            }
            .navigationTitle("Profile")
        }
    }
}

