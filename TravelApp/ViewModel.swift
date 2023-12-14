//
//  ViewModel.swift
//  TravelApp
//
//  Created by Mariam Joglidze on 14.12.23.
//

import Foundation
class CitiesViewModel: ObservableObject {
    
    var city: [City] = [
        City(name: "Madrid", info: "Madrid is the capital and most populous city of Spain. The city has almost 3.4 million inhabitants", cityImage: "madrid"),
        City(name: "Brazil", info: "Population distribution in Brazil. Nowadays, the country has 5,570 cities, with 5,568 municipalities plus the capital (Brasília) ", cityImage: "brazil"),
        City(name: "Sweden", info: "This is a list of cities in modern Sweden that once enjoyed city privileges, thus were entitled to call themselves town", cityImage: "Image"),
        City(name: "New York", info: "NYC is more than twice as populous as Los Angeles, the nation's second-most populous city. ", cityImage: "york"),
        City(name: "Berlin", info: "Berlin is surrounded by the State of Brandenburg and Brandenburg's capital Potsdam is nearby.", cityImage: "Berlin"),
        City(name: "Mexico", info: "Mexico City is the capital and largest city of Mexico, and the most populous city in North America", cityImage: "mexico")
    ]
    
    var cities: [Cities] = [
        Cities(transport: "Bus, Cercanías,Taxis,Electric bikes,Madrid City Tour", mustSee: "Royal Palace, Prado Museum, Plaza Mayor, El Retiro Park,  Palacio de Cristal", Hotels: "Barceló Torre de Madrid, The Madrid EDITION, Axel Hotel Madrid"),
        Cities(transport: "Brazil Taxis and Car Rental, Brazil Water Taxis, Brazil Trains and Buses", mustSee: "Cristo Redentor and Corcovado, Rio de Janeiro, Sugar Loaf, Rio de Janeiro, Iguaçu Falls, Copacabana, Rio de Janeiro", Hotels: "Summerville All Inclusive Resort, Ibis Rio de Janeiro Parque Olímpico, Best Western Premier Maceio, Resort La Torre"),
        Cities(transport: "Bus, Cercanías,Taxis,Electric bikes,Madrid City Tour", mustSee: "Royal Palace, Prado Museum, Plaza Mayor, El Retiro Park,  Palacio de Cristal", Hotels: "Barceló Torre de Madrid, The Madrid EDITION, Axel Hotel Madrid"),
        Cities(transport: "Brazil Taxis and Car Rental, Brazil Water Taxis, Brazil Trains and Buses", mustSee: "Cristo Redentor and Corcovado, Rio de Janeiro, Sugar Loaf, Rio de Janeiro, Iguaçu Falls, Copacabana, Rio de Janeiro", Hotels: "Summerville All Inclusive Resort, Ibis Rio de Janeiro Parque Olímpico, Best Western Premier Maceio, Resort La Torre"),
        Cities(transport: "Bus, Cercanías,Taxis,Electric bikes,Madrid City Tour", mustSee: "Royal Palace, Prado Museum, Plaza Mayor, El Retiro Park,  Palacio de Cristal", Hotels: "Barceló Torre de Madrid, The Madrid EDITION, Axel Hotel Madrid"),
        Cities(transport: "Brazil Taxis and Car Rental, Brazil Water Taxis, Brazil Trains and Buses", mustSee: "Cristo Redentor and Corcovado, Rio de Janeiro, Sugar Loaf, Rio de Janeiro, Iguaçu Falls, Copacabana, Rio de Janeiro", Hotels: "Summerville All Inclusive Resort, Ibis Rio de Janeiro Parque Olímpico, Best Western Premier Maceio, Resort La Torre"),
    ]
}




