//
//  UserRowView.swift
//  Twitter
//
//  Created by Victor Han on 2022/8/8.
//

import SwiftUI

struct UserRowView: View {
    var body: some View {
        HStack(spacing:12){
            Circle()
               .frame(width: 48, height: 48)
            VStack(alignment:.leading, spacing: 4){
                Text("Victor Han")
                    .font(.subheadline).bold()
                    .foregroundColor(.black)
                    
                Text("Hi")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
            }
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        UserRowView()
    }
}
