//
//  FeedView.swift
//  Twitter
//
//  Created by Victor Han on 2022/8/7.
//

import SwiftUI

struct FeedView: View {
    @State private var showNewTweetView = false
    var body: some View {
        ZStack(alignment:.bottomTrailing){
            ScrollView{
                LazyVStack{
                    ForEach(0...20,id:\.self){ _ in
                        TweetRowView()
                    }
                }
            }
            
            Button {
                showNewTweetView.toggle()
            } label: {
                Image(systemName: "plus.bubble.fill")
                    .resizable()
//                    .renderingMode(.template)
                    .frame(width:65, height:65)
                    .padding(7)
            }
//            .background(Color(.systemBlue))
//            .foregroundColor(.white)
//            .clipShape(Circle())
            .padding()
            .fullScreenCover(isPresented: $showNewTweetView){
                NewTweetView()
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
