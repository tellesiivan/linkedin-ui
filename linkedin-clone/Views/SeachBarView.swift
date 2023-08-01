//
//  SeachBarView.swift
//  linkedin-clone
//
//  Created by Telles Ivan on 7/31/23.
//

import SwiftUI

struct SeachBarView: View {
    var body: some View {
       HStack(alignment: .center) {
          Image("demo")
             .resizable()
             .ignoresSafeArea(.all)
             .aspectRatio(contentMode: .fit)
             .clipShape(.circle)
             .frame(width: 60, height: 60)
//          search bar
          RoundedRectangle(cornerRadius: 4)
             .foregroundStyle(.gray.opacity(0.1))
             .frame(width: 270, height: 40)
             .overlay {
                HStack(spacing: 14){
                   Image(systemName: "magnifyingglass")
                   Text("Search...")
                      .font(.body)
                   Spacer()
                }
                .padding(10)
                .foregroundStyle(.gray.opacity(1.2))
             }
//         Message box
          Image(systemName: "ellipses.bubble.fill")
             .resizable()
             .foregroundStyle(.gray.opacity(0.8))
             .aspectRatio(contentMode: .fit)
             .frame(width: 25, height: 25)
             .padding(10)
       }
       .padding(.top)
    }
}

#Preview {
    SeachBarView()
}
