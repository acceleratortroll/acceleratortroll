//
//  MainView.swift
//  acceleratortroll
//
//  Created by Jan Garcia on 15/5/23.
//

import SwiftUI

struct MainView: View {
  var body: some View {
    VStack {
      VStack {
        Image("acceleratortroll")
          .resizable()
          .frame(width: 64.0, height: 64.0)
          .cornerRadius(25)
        Text("acceleratortroll")
        Text("v0.1.9 (t9)")
      }
      Spacer()
      TabView {
        HomeView()
          .tabItem {
            Image(systemName: "house")
            Text("Home")
          }
        ArsenalView()
          .tabItem {
            Image(systemName: "gear")
            Text("Arsenal")
          }
        InfoView()
          .tabItem {
            Image(systemName: "info")
            Text("Info")
          }
      }.ignoresSafeArea()
    }
    .padding()
  }
}

struct MainView_Previews: PreviewProvider {
  static var previews: some View {
    MainView()
  }
}
