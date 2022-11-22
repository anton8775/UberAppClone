//
//  RideRequestView.swift
//  UberAppClone
//
//  Created by Антон Яценко on 17.11.2022.
//

import SwiftUI

struct RideRequestView: View {
    var body: some View {
        VStack{
            Capsule()
                .foregroundColor(Color(.systemOrange))
                .frame(width: 48, height: 6)
            // Make Debug
            HStack{
                VStack{
                    Circle()
                        .fill(Color(.systemGray2))
                        .frame(width: 8, height: 8)
                    Rectangle()
                        .fill(Color(.systemGray2))
                        .frame(width: 1, height: 32)
                    Rectangle()
                        .fill(Color(.black))
                        .frame(width: 8, height: 8)
                }
                VStack(alignment: .leading, spacing: 24){
                    HStack{
                        Text("Current location")
                            .font(.system(size: 16))
                            .foregroundColor(.gray)
                        
                        Spacer()
                        
                        Text("13:40")
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundColor(.gray)
                    } .padding(.bottom, 10)
                    
                    HStack{
                        Text("Taras Shevcheko University")
                            .font(.system(size: 16))
                            .foregroundColor(.gray)
                        
                        Spacer()
                        
                        Text("13:55")
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundColor(.gray)
                    } .padding(.bottom, 10)
                }
          }
        }
        
        HStack{
            VStack{
                Circle()
                    .fill(Color(.systemGray2))
                    .frame(width: 8, height: 8)
                Rectangle()
                    .fill(Color(.systemGray2))
                    .frame(width: 1, height: 32)
                Rectangle()
                    .fill(Color(.black))
                    .frame(width: 8, height: 8)
            }
            VStack{
                HStack{
                    Text("Current location")
                        .font(.system(size: 16))
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    Text("13:40")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(.gray)
                } .padding(.bottom, 10)
            }
      } .padding()
    }
}

struct RideRequestView_Previews: PreviewProvider {
    static var previews: some View {
        RideRequestView()
    }
}
