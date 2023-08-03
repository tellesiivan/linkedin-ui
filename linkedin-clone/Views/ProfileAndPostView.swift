//
//  ProfileAndPostView.swift
//  linkedin-clone
//
//  Created by Telles Ivan on 8/2/23.
//

import SwiftUI

struct ProfileAndPostView: View {
   var body: some View {
      VStack(alignment:.leading){
         SeachBarView()
         Divider()
            .padding(.bottom)

         HStack{
            Image(systemName: "square.and.pencil")
            Text("Share a post")
         }
         .padding(.horizontal)
         Divider()
            .padding(.vertical)
         HStack{
            Image(systemName: "photo")
               .foregroundStyle(.blue)
            Text("Photo")
            Spacer()
            Image(systemName: "video.fill")
               .foregroundStyle(.green)
            Text("Video")
            Spacer()
            Image(systemName: "calendar")
               .foregroundStyle(.orange)
            Text("Event")
         }
         .padding(.horizontal)
      }
   }
}

#Preview {
    ProfileAndPostView()
}
