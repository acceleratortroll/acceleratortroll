//
//  ArsenalView.swift
//  acceleratortroll
//
//  Created by Jan Garcia on 15/5/23.
//

import SwiftUI

struct ArsenalMain: View {
  var body: some View {
    HStack {
      Button(action: { trigger_memmove_oob_copy() }) {
        VStack {
          Image(systemName: "exclamationmark.circle")
          Text("Panic 0x00")
        }
      }.padding()
      Button(action: { meorw_exploit() }) {
        VStack {
          Image(systemName: "memorychip")
          Text("MeoRW")
        }
      }.padding()
    }
  }
}

struct ArsenalJump: View {
  var body: some View {
    HStack {
      Button(action: {}) {
        VStack {
          Image(systemName: "0.square.fill")
          Text("Jump 0")
        }
      }.padding()
      Button(action: {}) {
        VStack {
          Image(systemName: "1.square.fill")
          Text("Jump 1")
        }
      }.padding()
      Button(action: {}) {
        VStack {
          Image(systemName: "2.square.fill")
          Text("Jump 2")
        }
      }.padding()
      Button(action: {}) {
        VStack {
          Image(systemName: "3.square.fill")
          Text("Jump 3")
        }
      }.padding()
    }.padding()
  }
}

struct ArsenalView: View {
  var body: some View {
    VStack {
      Text("Arsenal")
        .font(.title)
      Spacer()
      VStack {
        ArsenalMain()
        ArsenalJump()
      }
      Spacer()
    }
  }
}

struct ArsenalView_Previews: PreviewProvider {
  static var previews: some View {
    ArsenalView()
  }
}
