/// Copyright (c) 2023 Kodeco Inc.
/// 

import SwiftUI

struct ColorText: View {
  var text: String
  var body: some View {
    Text(text)
      .foregroundColor(Color("TextColor"))
  }
  
}

struct TextViews_Previews: PreviewProvider {
  static var previews: some View {
    ColorText(text: "999")
    ColorText(text: "999").preferredColorScheme(.dark)
  }
}
