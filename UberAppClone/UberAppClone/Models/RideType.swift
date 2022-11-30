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
        case .uberXL: return "uber-x"
        }
    }
}
