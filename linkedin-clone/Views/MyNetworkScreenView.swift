//
//  MyNetworkScreenView.swift
//  linkedin-clone
//
//  Created by Telles Ivan on 8/1/23.
//

import SwiftUI

var networkData: [NetworkModel] = [
   .init(id: 0, name: "Marry", role: "SDE at Paytm", mutalConnections: 34, image: "00"),
   .init(id: 1, name: "Peter", role: "Assistant Manager", mutalConnections: 45, image: "01"),
   .init(id: 2, name: "Jenny", role: "SDE at Ginger ", mutalConnections: 67, image: "02"),
   .init(id: 3, name: "Sara", role: "open to work", mutalConnections: 103, image: "03"),
   .init(id: 4, name: "Kia", role: "GET at HCL", mutalConnections: 12, image: "04"),
   .init(id: 5, name: "Shristi", role: "Student", mutalConnections: 78, image: "05"),
   .init(id: 6, name: "Rachel", role: "intern at iNeuron", mutalConnections: 90, image: "00"),
   .init(id: 7, name: "John", role: "HR at Intel", mutalConnections: 34, image: "01"),
   .init(id: 8, name: "Tiya", role: "purchase Engineer", mutalConnections: 50, image: "02"),
   .init(id: 9, name: "Pheobe", role: "Product Manager", mutalConnections: 86, image: "03"),
   .init(id: 10, name: "Monica", role: "Data Analyst", mutalConnections: 55, image: "04"),
   .init(id: 11, name: "Joe", role: "Software Development intern", mutalConnections: 42, image: "05"),
   .init(id: 12, name: "Charel", role: "SDE-II ", mutalConnections: 30, image: "00"),
   .init(id: 13, name: "Chandler", role: "Mobile Developer", mutalConnections: 71, image: "01"),
   .init(id: 14, name: "Max", role: "QA", mutalConnections: 95, image: "02"),
   .init(id: 15, name: "Nancy", role: "Frontend Developer", mutalConnections: 18, image: "03")
   
]

struct MyNetworkScreenView: View {
    var body: some View {
       VStack {
          SeachBarView()
          
          HStack{
             Text("Manage Network")
                .font(.system(size: 18))
             Spacer()
             Image(systemName: "chevron.right")
          }
          .foregroundStyle(.black)
          .padding(.horizontal)
          Rectangle()
             .fill(.gray.opacity(0.2))
             .frame(width: .infinity, height: 5)
             .ignoresSafeArea(.all)
          HStack{
             Text("Invitations")
                .font(.system(size: 18))
             Spacer()
             Image(systemName: "chevron.right")
          }
          .foregroundStyle(.blue)
          .padding()
          Divider()
          ScrollView{
             ForEach(networkData, id: \.id) { network in
                InvitationView(invitation: network)
                if network.id != 15 {
                   Divider()
                }
             }
          }
       }
    }
}

#Preview {
    MyNetworkScreenView()
}
