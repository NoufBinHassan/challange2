//
//  ContentView.swift
//  challange2
//
//  Created by Nouf Bin Hassan on 20/10/2024.
//

import SwiftUI

struct ContentView: View {
    @State var noteText = ""
    @State private var buttonColor1: Color = Color(red: 44/255, green: 44/255, blue: 46/255)
    @State private var buttonColor2: Color = Color(red: 44/255, green: 44/255, blue: 46/255)
    @State private var buttonColor3: Color = Color(red: 44/255, green: 44/255, blue: 46/255)
    // Initial color
    var body: some View {
        NavigationView{
            //start of code
            
            //VStack
            VStack{
                //ZStack of circle and emoji
                ZStack{
                    Circle()
                        .fill(Color(red: 44/255, green: 44/255, blue: 46/255))
                        .frame(width: 118, height: 118)
                    Text("🔥")
                    //change size of emoji
                        .font(.system(size: 60))
                }//end of ZStack of circle and emoji
                .padding(.top,-150)
                //.padding(.top,-200)
                
                Text("Hello Learner!")
                    .font(.system(size: 32))
                    .bold()
                    .foregroundColor(.white) // Change text color to white
                    .padding(.leading, -150)
                Text("This app will help you learn everyday")
                    .foregroundColor(Color(red: 72/255, green: 72/255, blue: 74/255)) // Custom RGB color
                    .padding(.leading, -80)
                Text("I want to learn")
                    .padding(.all)
                    .foregroundColor(.white) // Change text color to white
                    .padding(.leading, -190)
                //textfeild
                ZStack(alignment: .leading) {
                    if noteText.isEmpty {
                        Text("Swift")
                            .foregroundColor(.gray) // Set your custom placeholder color here
                    }
                    TextField("", text: $noteText)
                        .foregroundColor(.black) // This color applies to the entered text
                }//end of textfeild
                    .padding(.leading)
                Text("I want to learn it in a ")
                    .foregroundColor(.white) // Change text color to white
                    .padding(.leading, -170)
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
                .padding(.leading,-150)
                //start
                //ZStack of start box
                NavigationLink{SwiftUIView()}label: {
                    //write code here
                    ZStack{
                        RoundedRectangle(cornerRadius:8)
                            .fill(Color(red: 255/255, green: 159/255, blue: 10/255))
                            .frame(width: 151, height: 52)
                        //Hstack of start and arrow
                        HStack{
                            Text("Start")
                            Image(systemName: "arrow.right")
                        }// end of Hstack of start and arrow
                    }//end of ZStack of start box
                }

                .padding()
                
                
                
            }//end of VStack
            //black wallpaper
            .frame(maxWidth:.infinity,maxHeight: .infinity)
            .background(Color.black)
            .ignoresSafeArea()
            
            
            //.padding()
        }
    }
}

#Preview {
    ContentView()
}
