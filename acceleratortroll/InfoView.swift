//
//  InfoView.swift
//  acceleratortroll
//
//  Created by Jan Garcia on 15/5/23.
//

import SwiftUI

struct InfoView: View {
  var body: some View {
    VStack {
      Text("Info")
        .font(.title)
        .padding()
      
      Text("Contributors")
        .font(.headline)
      Text("App by Jan")
      Text("Icon by ifram:3")
      Text("MeoRW exploit by May.")
      Divider()
      
      Text("Credits")
        .font(.headline)
      Text("PoC by Linus Henze")
      Spacer()
    }.padding()
  }
}

struct InfoView_Previews: PreviewProvider {
  static var previews: some View {
    InfoView()
  }
}
