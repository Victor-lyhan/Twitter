//
//  FeedView.swift
//  Twitter
//
//  Created by Victor Han on 2022/8/7.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        
        ScrollView{
            LazyVStack{
                ForEach(0...20,id:\.self){ _ in
                    TweetRowView()
                }
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
