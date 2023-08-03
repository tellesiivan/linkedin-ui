//
//  TabView.swift
//  linkedin-clone
//
//  Created by Telles Ivan on 8/3/23.
//

import SwiftUI

struct TabSectionView: View {
    var body: some View {
       TabView {
         	HomeScreenView()
             .tabItem {
                Image(systemName: "house.fill")
                Text("Home")
             }
          	MyNetworkScreenView()
             .tabItem {
                Image(systemName: "person.fill")
                Text("MyNetwork")
             }
          Text("Post")
             .tabItem {
                Image(systemName: "plus.app.fill")
                Text("Post")
             }
          Text("Notifications")
             .tabItem {
                Image(systemName: "bell.badge.fill")
                Text("Notifications")
             }
          Text("Jobs")
             .tabItem {
                Image(systemName: "briefcase.fill")
                Text("Jobs")
             }
       }
    }
}

#Preview {
   TabSectionView()
}
