//
//  HomeView.swift
//  acceleratortroll
//
//  Created by Jan Garcia on 15/5/23.
//

import SwiftUI

struct HomeView: View {
  @State private var showRebootModal = false
  
  var body: some View {
    ZStack {
      VStack {
        Text("acceleratortroll is a tool that allows you to exploit CVE-2023-28206 and obtain certain privileges on your device. This tool is a work in progress and there are no guarantees that it will work on your device. This tool CANNOT brick your device.")
          .padding()
        
        HStack {
          Button(action: { UIApplication.shared.open(URL(string: "https://www.youtube.com/watch?v=dQw4w9WgXcQ")!, options: [:], completionHandler: nil) }) {
            VStack {
              Image(systemName: "wand.and.stars")
              Text("Jailbreak")
            }
          }
          Button(action: {
            showRebootModal.toggle()
            trigger_memmove_oob_copy()
          }) {
            VStack {
              Image(systemName: "power")
              Text("Reboot")
            }
          }.padding()
          Button(action: { respringBackboard() }) {
            VStack {
              Image(systemName: "repeat")
              Text("Respring")
            }
          }
        }.padding()
        Spacer()
      }
      
      if showRebootModal {
        RebootModal()
          .transition(.opacity)
      }
    }
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
