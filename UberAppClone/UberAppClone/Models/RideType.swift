//
//  RideType.swift
//  UberAppClone
//
//  Created by Антон Яценко on 30.11.2022.
//

import Foundation

enum RideType: Int, CaseIterable, Identifiable{
    case uberX
    case uberComfort
    case uberXL
    
    var id: Int { return rawValue }
    
    var description: String{
        switch self{
        case .uberX: return "UberX"
        case .uberComfort: return "UberComfort"
        case .uberXL: return "UberXL"
        }
    }
    
    var imageName: String{
        switch self{
        case .uberX: return "uber-x"
        case .uberComfort: return "uber-comforte"
        case .uberXL: return "uber-xl"
        }
    }
    
    var baseFare: Double{
        switch self{
        case .uberX: return 10
        case .uberComfort: return 30
        case .uberXL: return 15
        }
    }
    
    func computePrice(for distanceInMeters: Double) -> Double{
        let distanceInKilometers = distanceInMeters / 1000
        
        switch self{
        case .uberX: return distanceInKilometers * 1.5 + baseFare
        case .uberComfort: return distanceInKilometers * 2.0 + baseFare
        case .uberXL: return distanceInKilometers * 1.75 + baseFare
        }
    }
}
