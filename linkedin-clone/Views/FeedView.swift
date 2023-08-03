//
//  FeedView.swift
//  linkedin-clone
//
//  Created by Telles Ivan on 8/2/23.
//

import SwiftUI

var postData: [PostDataModel] = [
   .init(id: 0, image: "0", title: "iNeuron", followerCount: 4066, profileImage: "00"),
   .init(id: 1, image: "1", title: "Learnyst", followerCount: 2345, profileImage: "01"),
   .init(id: 2, image: "2", title: "Synopsys inc", followerCount: 1235, profileImage: "02"),
   .init(id: 3, image: "3", title: "Skill-Lync", followerCount: 908, profileImage: "03"),
   .init(id: 4, image: "4", title: "Intel", followerCount: 1234, profileImage: "04"),
   .init(id: 5, image: "5", title: "HP", followerCount: 567, profileImage: "05"),
   .init(id: 6, image: "6", title: "JungleWorks", followerCount: 346, profileImage: "00")
]

struct FeedView: View {
   let posts: Array<PostDataModel>
   
    var body: some View {
       ScrollView(.vertical, showsIndicators: false) {
          VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/){
             ForEach(posts, id: \.id) { post in
                PostView(post: post)
                HStack(alignment:.center, spacing:45) {
                   ForEach(socialView, id:\.ids) { social in
                      VStack(spacing:8){
                         Image(systemName: social.image)
                         Text(social.title)
                      }
                      .foregroundStyle(.black.opacity(0.8))
                      .font(.subheadline)
                      .padding(EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0))
                   }
                }
             }
          }
       }
    }
}

#Preview {
    FeedView(posts: postData)
}
