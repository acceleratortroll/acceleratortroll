//
//  HomeView.swift
//  acceleratortroll
//
//  Created by Jan Garcia on 15/5/23.
//

import SwiftUI

struct HomeView: View {
  var body: some View {
    VStack {
      Text("acceleratortroll is a tool that allows you to exploit CVE-2023-28206 and obtain certain privileges on your device. This tool is a work in progress and there are no guarantees that it will work on your device. This tool CANNOT brick your device.")
        .padding()
      
      HStack {
        Button(action: {}) {
          VStack {
            Image(systemName: "wand.and.stars")
            Text("Jailbreak")
          }
        }
        Button(action: { trigger_memmove_oob_copy() }) {
          VStack {
            Image(systemName: "power")
            Text("Reboot")
          }
        }.padding()
        Button(action: {}) {
          VStack {
            Image(systemName: "repeat")
            Text("Respring")
          }
        }
      }.padding()
      Spacer()
    }
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
