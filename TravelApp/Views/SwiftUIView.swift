//
//  SwiftUIView.swift
//  TravelApp
//
//  Created by Mariam Joglidze on 14.12.23.
//

import SwiftUI

struct TransportDetailScreen: View {
    @Environment(\.presentationMode) var presentationMode
    var transportInfo: String?
    
    var body: some View {
        VStack {
            Text(transportInfo ?? "Empty transportInfo")
                .padding()
                .navigationTitle("Transport Information")
            
            Button("Go to Main Screen") {
                presentationMode.wrappedValue.dismiss()
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
            .padding()
        }
    }
}

struct MustSeeDetailScreen: View {
    @Environment(\.presentationMode) var presentationMode
    var mustSeeInfo: String?
    
    var body: some View {
        VStack {
            Text(mustSeeInfo ?? "Empty mustSeeInfo")
                .padding()
                .navigationTitle("Must See Information")
            
            Button("Go to Main Screen") {
                presentationMode.wrappedValue.dismiss()
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
            .padding()
        }
    }
}

struct HotelsDetailScreen: View {
    @Environment(\.presentationMode) var presentationMode
    var hotelsInfo: String?
    
    var body: some View {
        VStack {
            Text(hotelsInfo ?? "Empty hotelsInfo")
                .padding()
                .navigationTitle("Hotels Information")
            
            Button("Go to Main Screen") {
                presentationMode.wrappedValue.dismiss()
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
            .padding()
        }
    }
}

