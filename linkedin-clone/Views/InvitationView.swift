//
//  InvitationView.swift
//  linkedin-clone
//
//  Created by Telles Ivan on 7/31/23.
//

import SwiftUI

let invitationExample: NetworkModel = NetworkModel(id: 3, name: "Wes", role: "SD at Mahalo Banking", mutalConnections: 32, image: "01")

struct InvitationView: View {
   let invitation: NetworkModel
   
    var body: some View {
       HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 5) {
          Image(invitation.image)
             .resizable()
             .aspectRatio(contentMode: .fit)
             .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
             .frame(width: 80, height: 80)
          VStack(alignment:.leading, spacing: 4){
             Text(invitation.name)
                .font(.headline)
                .fontWeight(.medium)
             Text(invitation.role)
                .font(.system(size: 16))
                .foregroundStyle(.gray.opacity(2.4))
             Text("\(invitation.mutalConnections) Mutual Connections")
                .font(.system(size: 16))
                .foregroundStyle(.gray.opacity(2.4))
          }
          HStack(spacing:10){
             Image(systemName: "multiply.circle")
                .font(.system(size: 26))
                .foregroundStyle(.gray.opacity(2.4))
             Image(systemName: "checkmark.circle")
                .font(.system(size: 26))
                .foregroundStyle(.blue.opacity(2.4))
          }
          .padding(.horizontal)
       }
       .frame(width: .infinity, height: .infinity)
       .padding(.vertical)
    }
}

#Preview {
    InvitationView(invitation: invitationExample)
}
