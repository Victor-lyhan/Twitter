//
//  TweetRowView.swift
//  Twitter
//
//  Created by Victor Han on 2022/8/7.
//

import SwiftUI

struct TweetRowView: View {
    var body: some View {
        VStack(alignment: .leading){
            //profile image + user info + tweet
            HStack(alignment: .top, spacing: 12) {
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color(.systemBlue))
                //user info and tweet caption
                VStack(alignment: .leading, spacing: 4) {
                    HStack{
                        Text("Victor Han")
                            .font(.subheadline).bold()
                        Text("@victorh")
                            .foregroundColor(.gray)
                            .font(.caption)
                        Text("39W")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    // tweet caption
                    Text("Lionel Messi is the best ")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
                
            }
            // action buttons
            HStack{
                Button {
                    // action goes here
                } label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                }
                Spacer()
                
                Button {
                    // action goes here
                } label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.subheadline)
                }
                Spacer()
                
                Button {
                    // action goes here
                } label: {
                    Image(systemName: "heart")
                        .font(.subheadline)
                }
                Spacer()

                Button {
                    // action goes here
                } label: {
                    Image(systemName: "bookmark")
                        .font(.subheadline)
                }


            }
            .padding()
            .foregroundColor(.gray)
            Divider()
        }
        .padding()
    }
}

struct TweetRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetRowView()
    }
}
