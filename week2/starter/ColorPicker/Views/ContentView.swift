/// Copyright (c) 2023 Kodeco Inc.
///


import SwiftUI

struct ContentView: View {
  @State private var alertIsVisible: Bool = false
  @State private var redColor: Double = Constants.General.defaultRed
  @State private var greenColor: Double = Constants.General.defaultGreen
  @State private var blueColor: Double = Constants.General.defaultBlue
  @State private var foregroundColor = Color(red: Constants.General.defaultRed/Constants.General.colorDivider, green: Constants.General.defaultGreen/Constants.General.colorDivider, blue: Constants.General.defaultBlue/Constants.General.colorDivider)
  @State private var red = "Red"
  @State private var green = "Green"
  @State private var blue = "Blue"
  
  @Environment(\.verticalSizeClass) var verticalSizeClass
  @Environment(\.horizontalSizeClass) var horizontalSizeClass
  
  var body: some View {
    
    if verticalSizeClass == .regular && horizontalSizeClass == .compact
    {
      VStack {
        Text("Color Picker")
          .font(.largeTitle)
          .bold()
        RoundedRect(fgColor: $foregroundColor)
        SliderwithText(colorName: $red, colorValue: $redColor).tint(.red)
        SliderwithText(colorName: $green, colorValue: $greenColor).tint(.green)
        SliderwithText(colorName: $blue, colorValue: $blueColor).tint(.blue)
        
        SetColorButton(fgColor: $foregroundColor, redColorVal: $redColor, greenColorVal: $greenColor, blueColorVal: $blueColor)
      }
      .padding()
    }
    else {
      
      HStack {
        VStack{
          Text("Color Picker")
            .font(.largeTitle)
            .bold()
          RoundedRect(fgColor: $foregroundColor)
        }
        VStack{
          SliderwithText(colorName: $red, colorValue: $redColor).tint(.red)
          SliderwithText(colorName: $green, colorValue: $greenColor).tint(.green)
          SliderwithText(colorName: $blue, colorValue: $blueColor).tint(.blue)
          
          SetColorButton(fgColor: $foregroundColor, redColorVal: $redColor, greenColorVal: $greenColor, blueColorVal: $blueColor)
        }
      }
      .padding()
    }
  }
}


struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
    ContentView().preferredColorScheme(ColorScheme.dark)
  }
}
