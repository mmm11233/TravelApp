//
//  DestinationDetailScreen.swift
//  TravelApp
//
//  Created by Mariam Joglidze on 14.12.23.
//
import SwiftUI

struct DestinationDetailScreen: View {
    @State  var city: City
    @State private var transportInfo: String?
    @State private var mustSeeInfo: String?
    @State private var hotelsInfo: String?
    @ObservedObject private var citiesViewModel = CitiesViewModel()
    
    
    private func findTransportInfo() -> String? {
        return citiesViewModel.cities.first { $0.transport.contains(city.name) }?.transport
    }
    
    private func findMustSeeInfo() -> String? {
        return citiesViewModel.cities.first { $0.mustSee.contains(city.name) }?.mustSee
    }
    
    private func findHotelsInfo() -> String? {
        return citiesViewModel.cities.first { $0.Hotels.contains(city.name) }?.Hotels
    }
    
    var body: some View {
        VStack {
            Text(city.name)
                .font(.title)
            
            Image(city.cityImage)
                .resizable()
                .scaledToFit()
                .frame(height: 200)
            
            Text(city.info)
                .padding()
            
            Spacer()
            
            HStack {
                Button("Transport") {
                    transportInfo = findTransportInfo()
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
                
                Button("Must See") {
                    mustSeeInfo = findMustSeeInfo()
                }
                .padding()
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(8)
                
                Button("Hotels") {
                    hotelsInfo = findHotelsInfo()
                }
                .padding()
                .background(Color.orange)
                .foregroundColor(.white)
                .cornerRadius(8)
            }
            .padding(.horizontal)
            
            Spacer()
        }
        .navigationTitle(city.name)
        .sheet(isPresented: Binding(
            get: {
                transportInfo != nil || mustSeeInfo != nil || hotelsInfo != nil
            },
            set: { newValue in
                if !newValue {
                    transportInfo = nil
                    mustSeeInfo = nil
                    hotelsInfo = nil
                }
            })) {
                if let info = transportInfo {
                    TransportDetailScreen(transportInfo: info)
                } else if let info = mustSeeInfo {
                    MustSeeDetailScreen(mustSeeInfo: info)
                } else if let info = hotelsInfo {
                    HotelsDetailScreen(hotelsInfo: info)
                }
            }
    }
}





#Preview {
    MainScreenView()
}
