//
//  LocationSearchResultCell.swift
//  UberAppClone
//
//  Created by Антон Яценко on 06.11.2022.
//

import SwiftUI

struct LocationSearchResultCell: View {
    var body: some View {
        HStack{
            Image(systemName: "mappin.circle.fill")
                .resizable()
                .foregroundColor(.orange)
                .accentColor(.white)
                .frame(width: 40, height: 40)
            VStack(alignment: .leading, spacing: 3){
                Text("McDonalds")
                    .font(.body)
                Text("Paladina 7-a, Kyiv")
                    .font(.system(size: 15))
                    .foregroundColor(.gray)
                Divider()
            }
                .padding(.leading, 8)
                .padding(.vertical, 8)
        } .padding(.leading)
    }
}

struct LocationSearchResultCell_Previews: PreviewProvider {
    static var previews: some View {
        LocationSearchResultCell()
    }
}
