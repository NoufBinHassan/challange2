//
//  testcircle.swift
//  challange2
//
//  Created by Nouf Bin Hassan on 27/10/2024.
//

import SwiftUI

struct testcircle: View {
    // State variable to control the color of the circle
    @State private var circleColor: Color = .blue

    var body: some View {
        VStack(spacing: 40) {
            // Box (Rectangle)
            Rectangle()
                .fill(Color.gray)
                .frame(width: 100, height: 100)
                .onTapGesture {
                    // Change Circle color on Box tap
                    circleColor = circleColor == .blue ? .orange : .blue
                }
            
            // Circle with color bound to state variable
            Circle()
                .fill(circleColor)
                .frame(width: 100, height: 100)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#Preview {
    testcircle()
}
