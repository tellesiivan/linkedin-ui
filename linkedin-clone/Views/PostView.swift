//
//  PostView.swift
//  linkedin-clone
//
//  Created by Telles Ivan on 8/1/23.
//

import SwiftUI

struct SocialView {
   var ids: Int
   var image: String
   var title: String
}

var socialView: Array<SocialView> = [
   .init(ids: 1, image: "hand.thumbsup", title: "Like"),
   .init(ids: 2, image: "hand.bubble", title: "Comment"),
   .init(ids: 3, image: "arrow.turn.up.right", title: "Share"),
   .init(ids: 4, image: "paperplane.fill", title: "Send")
]

let samplePost: PostDataModel = PostDataModel(id: 1, image: "02", title: "Wes Cudi", followerCount: 34, profileImage: "1")

struct PostView: View {
   let post: PostDataModel
   
    var body: some View {
       VStack(alignment:.leading, spacing: 10){
          Rectangle()
             .fill(.gray.opacity(0.2))
             .frame(width: .infinity, height: 5)
             .ignoresSafeArea(.all)
          
       
             HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10) {
                Image(post.profileImage)
                   .resizable()
                   .aspectRatio(contentMode: .fit)
                   .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                   .frame(width: 70, height: 70)
                VStack(alignment:.leading, spacing: 2){
                   Text(post.title)
                      .font(.headline)
                      .fontWeight(.medium)
                   Text("\(post.followerCount) Followers")
                      .font(.footnote)
                      .foregroundStyle(.gray.opacity(1.2))
                   Text("2m")
                      .font(.footnote)
                      .foregroundStyle(.gray.opacity(1.2))
                }
                Spacer()
                Image(systemName: "ellipsis")
             }.padding(.horizontal)
          VStack(alignment: .leading) {
             Text("Looking for a new swuift ui course, any recommendations?")
                .font(.system(size: 18))
                .foregroundStyle(.black)
                .padding(8)
             Image(post.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: .infinity, height: .infinity, alignment: .center)
             Divider()
                .padding(.bottom)
             
          }
          
       }
      
    }
}

#Preview {
    PostView(post: samplePost)
}
