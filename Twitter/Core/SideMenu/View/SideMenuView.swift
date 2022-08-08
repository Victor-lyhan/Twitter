//
//  SideMenuView.swift
//  Twitter
//
//  Created by Victor Han on 2022/8/8.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        VStack(alignment:.leading, spacing: 32) {
            VStack(alignment:.leading){
                Circle()
                    .frame(width: 48, height: 48)
                VStack(alignment:.leading, spacing:4){
                    Text("Victor Han")
                        .font(.headline)
                    Text("@Messi")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                
                UserStatsView()
                    .padding(.vertical)
            }
            .padding(.leading)
            
            ForEach(SideMenuViewModel.allCases, id: \.rawValue) { option in
                HStack(spacing:16){
                    Image(systemName: option.imageName)
                        .font(.headline)
                        .foregroundColor(.gray)
                    Text(option.title)
                        .font(.subheadline)
                    Spacer()
                }
                .frame(height:40)
                .padding(.horizontal)
            }
            
            Spacer()
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
