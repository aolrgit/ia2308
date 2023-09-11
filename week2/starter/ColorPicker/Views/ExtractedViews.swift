/// Copyright (c) 2023 Kodeco Inc.
/// 


import SwiftUI


struct SliderwithText : View {
  @Binding var colorName: String
  @Binding var colorValue: Double
  
  var body: some View {
    VStack {
      ColorText(text: colorName)
      HStack {
        Slider(value: $colorValue, in: 0...255)
        Text("\(Int(colorValue.rounded()))")
      }
    }
  }
}

struct RoundedRect : View {
  @Binding var fgColor: Color
  
  var body: some View {
    RoundedRectangle(cornerRadius: Constants.General.roundedRectCornerRadius)
      .fill(fgColor)
      .border(.brown, width: Constants.General.paddingOrWidth)
      .padding()
  }
}

struct SetColorButton : View {
  @Binding var fgColor: Color
  @Binding var redColorVal: Double
  @Binding var greenColorVal: Double
  @Binding var blueColorVal: Double
  
  var body: some View {
    Button("Set Color"){
      fgColor = Color(red: redColorVal / Constants.General.colorDivider, green: greenColorVal / Constants.General.colorDivider, blue: blueColorVal / Constants.General.colorDivider)
    }
    .padding(Constants.General.paddingOrWidth)
    .background(.blue)
    .overlay(
      RoundedRectangle(cornerRadius: Constants.General.buttonCornerRadius)
        .strokeBorder(Color.white, lineWidth: Constants.General.lineWidth)
    )
    .foregroundColor(.white)
    .cornerRadius(Constants.General.buttonCornerRadius)
  }
}

