//
//  ContentView.swift
//  TravelApp
//
//  Created by Mariam Joglidze on 13.12.23.
//

import SwiftUI

struct MainScreenView: View {
    @State var isAlertShowed = false
    @ObservedObject var citiesViewModel = CitiesViewModel()
    
    
    var travelTips: [String] = ["Brazil", "Mexico", "Vena", "London", "Barcelona", "Rome"]
    
    var body: some View {
        NavigationView {
            List(citiesViewModel.city, id: \.name) { city in
                NavigationLink(destination: DestinationDetailScreen(city: city)) {
                    Text(city.name)
                }
            }
            
            .navigationTitle("Destinations")
            
        }
        Button("Travel Tips") {
            
            isAlertShowed = true
        }.alert(isPresented: $isAlertShowed) {
            
            Alert(
                title: Text(travelTips.randomElement() ?? "nothing"),
                primaryButton: .destructive(
                    Text("ok"),
                    action: {
                        
                    }
                ),
                secondaryButton: .cancel()
            )
            
        }
        Spacer()
    }
    
}


#Preview {
    MainScreenView()
}

