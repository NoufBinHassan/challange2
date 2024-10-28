//
//  lastpage.swift
//  challange2
//
//  Created by Nouf Bin Hassan on 28/10/2024.
//

import SwiftUI

struct lastpage: View {
    @State private var noteText = ""
    @State private var buttonColor1: Color = Color(red: 44/255, green: 44/255, blue: 46/255)
    @State private var buttonColor2: Color = Color(red: 44/255, green: 44/255, blue: 46/255)
    @State private var buttonColor3: Color = Color(red: 44/255, green: 44/255, blue: 46/255)
    var body: some View {
     
//VStack
        VStack{
            Text("I want to learn")
                .foregroundColor(.white)
                .bold()
                .padding(.leading,-170)
                .padding(.top,-200)
            //textfeild
            ZStack(alignment: .leading) {
                if noteText.isEmpty {
                    Text("Swift")
                        .foregroundColor(.gray) // Set your custom placeholder color here
                }
                TextField("", text: $noteText)
                    .foregroundColor(.black) // This color applies to the entered text
            }//end of textfeild
            .padding(.top,-150)
               Text("I want to learn it in a ")
                .foregroundColor(.white)
                .bold()
                .padding(.top,-100)
                .padding(.leading,-170)
            //Hstack for week, month ,year
            HStack{
                
                
                //first box
                Button(action: {
                    // Change the color when clicked
                    buttonColor1 = Color(red: 255/255, green: 159/255, blue: 10/255)
                }) {
                    Text("Weak")
                        .foregroundColor(.black)
                        .padding()
                        .background(buttonColor1) // Set button's background color
                        .cornerRadius(10)
                    
                }
                //end of first box
                
                
                //second box
                
                Button(action: {
                    // Change the color when clicked
                    buttonColor2 = Color(red: 255/255, green: 159/255, blue: 10/255)
                }) {
                    Text("Month")
                        .foregroundColor(.black)
                        .padding()
                        .background(buttonColor2) // Set button's background color
                        .cornerRadius(10)
                    
                }
                //end of 2nd box
                
                //3rd box
                
                Button(action: {
                    // Change the color when clicked
                    buttonColor3 = Color(red: 255/255, green: 159/255, blue: 10/255)
                }) {
                    Text("Weak")
                        .foregroundColor(.black)
                        .padding()
                        .background(buttonColor3) // Set button's background color
                        .cornerRadius(10)
                    
                }
                //end of 3rd box
                
                
            }//end of Hstack for week, month ,year
            .padding(.leading,-120)
            .padding(.top,-70)
        }
        //black wallpaper
        .frame(maxWidth:.infinity,maxHeight: .infinity)
        .background(Color.black)
        .ignoresSafeArea()
        }
        
    }


#Preview {
    lastpage()
}
