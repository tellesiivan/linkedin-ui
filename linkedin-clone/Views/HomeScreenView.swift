//
//  HomeScreenView.swift
//  linkedin-clone
//
//  Created by Telles Ivan on 8/3/23.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
       VStack {
          ProfileAndPostView()
          FeedView(posts: postData)
       }
      
    }
   
}

#Preview {
    HomeScreenView()
}
