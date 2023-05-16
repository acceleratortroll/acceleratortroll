//
//  RebootModal.swift
//  acceleratortroll
//
//  Created by Jan Garcia on 16/5/23.
//

import SwiftUI

struct RebootModal: View {
  var body: some View {
    ZStack {
      Color.black.opacity(0.4)
        .edgesIgnoringSafeArea(.all)
      
      VStack {
        Text("Rebooting...")
          .font(.headline)
          .padding()
        
        ProgressView()
          .padding()
      }
      .background(.background)
      .cornerRadius(10)
      .padding()
    }
  }
}

struct RebootModal_Previews: PreviewProvider {
  static var previews: some View {
    RebootModal()
  }
}
