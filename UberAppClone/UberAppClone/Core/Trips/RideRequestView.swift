//
//  RideRequestView.swift
//  UberAppClone
//
//  Created by Антон Яценко on 17.11.2022.
//

import SwiftUI

struct RideRequestView: View {
    
    @State private var selectedRideType: RideType = .uberX
    @EnvironmentObject var locationViewModel: LocationSearchViewModel
    
    var body: some View {
        VStack{
            Capsule()
                .foregroundColor(Color(.systemOrange))
                .frame(width: 48, height: 6)
                .padding(.top, 8)
            
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
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundColor(.gray)
                        
                        Spacer()
                        
                        Text("13:40")
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundColor(.gray)
                    } .padding(.bottom, 10)
                    
                    HStack{
                        Text("Taras Shevcheko University")
                            .font(.system(size: 16, weight: .semibold))
                        
                        Spacer()
                        
                        Text("13:55")
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundColor(.gray)
                    }
                } .padding(.leading, 6)
            } .padding()
            Divider()
            
            Text("SUGGESTED RIDES")
                .font(.subheadline)
                .fontWeight(.semibold)
                .padding()
                .foregroundColor(.orange)
            
            ScrollView(.horizontal){
                HStack(spacing: 12){
                    ForEach(RideType.allCases, id: \.self) {type in
                        VStack(alignment: .leading){
                            Image(type.imageName)
                                .resizable()
                                .scaledToFit()
                            VStack(spacing: 4){
                                Text(type.description)
                                    .font(.system(size: 14, weight: .semibold))
                                Text(locationViewModel.computeRidePrice(forType: type).toCurrency())
                                    .font(.system(size: 12))
                            }.padding(8)
                        }
                        .frame(width: 112, height: 140)
                        .background(Color(type == selectedRideType ? .systemOrange : .systemGroupedBackground))
                        .foregroundColor(Color(type == selectedRideType ? .white : .black))
                        .scaleEffect(type == selectedRideType ? 1.05 : 1.0)
                        .cornerRadius(10)
                        .onTapGesture {
                            withAnimation(.spring()){
                                selectedRideType = type
                            }
                        }
                        
                    }
                }
                
            }.padding(.horizontal)
            Divider()
                .padding(.vertical, 8)
            
            HStack(spacing: 12){
                Text("Visa")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(6)
                    .background(.orange)
                    .cornerRadius(4)
                    .foregroundColor(.white)
                    .padding(.leading)
                Text("**** 7857")
                    .fontWeight(.bold)
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .imageScale(.medium)
                    .padding()
            }
            .frame(height: 50)
            .background(Color(.systemGroupedBackground))
            .cornerRadius(10)
            .padding(.horizontal)
            
            Button{
                
            }label: {
                Text("CONFIRM RIDE")
                    .fontWeight(.bold)
                    .frame(width: UIScreen.main.bounds.width - 32, height: 50)
                    .background(.orange)
                    .cornerRadius(10)
                    .foregroundColor(.white)
            }
            
        }
        .padding(.bottom, 24)
        .background(.white)
        .cornerRadius(16)
    }
}

struct RideRequestView_Previews: PreviewProvider {
    static var previews: some View {
        RideRequestView()
    }
}
