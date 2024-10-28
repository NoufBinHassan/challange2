//
//  SwiftUIView.swift
//  challange2
//
//  Created by Nouf Bin Hassan on 24/10/2024.
//

import SwiftUI

struct SwiftUIView: View {
    @State private var circle2Color: Color = .black
    @State private var count = 10 // State variable to hold the count
    @State private var count2 = 2 // State variable to hold the count
    @State private var circleColor = Color.orange // Variable to hold the circle color
    @State private var boxColor = Color(red: 193/255, green: 221/255, blue: 255/255)
    @State private var displayText = "Log Today as learned"


    var body: some View {
        //VStack
        VStack {
        Text("Wednesday,11 SEP")
                .foregroundColor(.gray) // Change text color to gray
                .padding(.leading, -180)
                
            //HStack of text and emoji
            HStack{
           Text("Learning Swift")
                    .foregroundColor(.white) // Change text color to white
                    .bold()
                    .font(.system(size: 32))
           //emoji
                NavigationLink{lastpage()}label: {
                    //add code here
                    //ZStack of circle and emoji
                         ZStack{
                             Circle()
                                 .fill(Color(red: 44/255, green: 44/255, blue: 46/255))
                                 .frame(width: 150, height: 60)
                             Text("🔥")
                             //change size of emoji
                                 .font(.system(size: 40))
                         }//end of ZStack of circle and emoji
                }

                
            }//end of HStack of text and emoji
            //HStack of september and arrows
            //vsatck of rec
            VStack{
                //HStack of september and arrows
                HStack{
                    Text("September 2024")
                    //chnage color to white
                        .foregroundColor(.white) // Change text color to white
                    //move to left
                        .padding(.leading,-170)
                    //make text bold
                        .bold()
                    Image(systemName: "arrow.right")
                        .foregroundColor(.orange)
                        .padding(.leading,-40)
                }// end of HStack of september and arrows
                //HStack of days
                HStack{
                    //inside it you will have VStack of days and numbers
                    VStack{
                        Text("SUN")
                            .foregroundColor(.white)
                        //ZStack of nube
                        ZStack{
                            //circle under number
                            Circle()
                                .fill(.orange)
                                .frame(width: 44, height: 44)
                                .opacity(0.5)
                            Text("1")
                                .foregroundColor(.white)
                        }
                    }//end of VStack
                    VStack{
                        Text("MON")
                            .foregroundColor(.white)
                        ZStack{
                            Circle()
                                .fill(.blue)
                                .frame(width: 44, height: 44)
                                .opacity(0.5)
                            Text("2")
                                .foregroundColor(.blue)
                        }
                    }//end of VStack
                    VStack{
                        Text("TUE")
                            .foregroundColor(.white)
                        ZStack{
                            Circle()
                                .fill(.blue)
                                .frame(width: 44, height: 44)
                                .opacity(0.5)
                            Text("3")
                                .foregroundColor(.blue)
                        }
                    }//end of VStack
                    VStack{
                        Text("WED")
                            .foregroundColor(.white)
                        ZStack{
                            Circle()
                                .fill(circle2Color)
                                .frame(width: 44, height: 44)
                            Text("4")
                                .foregroundColor(.white)
                        }
                    }//end of VStack
                    VStack{
                        Text("THU")
                            .foregroundColor(.white)
                        ZStack{
                            Circle()
                                .fill(.black)
                                .frame(width: 44, height: 44)
                            Text("5")
                                .foregroundColor(.white)
                        }
                    }//end of VStack
                    VStack{
                        Text("FRI")
                            .foregroundColor(.white)
                        ZStack{
                            Circle()
                                .fill(.black)
                                .frame(width: 44, height: 44)
                            Text("6")
                                .foregroundStyle(.white)
                        }
                    }//end of VStack
                    VStack{
                        Text("SAT")
                            .foregroundColor(.white)
                        ZStack{
                            Circle()
                                .fill(.black)
                                .frame(width: 44, height: 44)
                            Text("7")
                                .foregroundStyle(.white)
                        }
                    }//end of VStack
                    }//end of HStack of days
                //HStack of circles of numbers

                //HStack of day freezed and day streak
                HStack{
                    //VStack of 10 and day streak
                    VStack{
                     Text("\(count)🔥 ")
                            .foregroundColor(.white)
                            .bold()
                            .font(.system(size: 25))
                        Text("Day Streak")
                            .foregroundColor(.gray)
                        
                    } //end of VStack of 10 and day streak
                    //move to left
                    .padding(.leading)
                    //VStack of 2 and day freezed
                    VStack{
                     Text("\(count2)🧊")
                            .foregroundColor(.white)
                            .bold()
                            .font(.system(size: 25))
                        Text("Day freezed")
                            .foregroundColor(.gray)
                    }//end of VStack of 2 and day freezed
                    .padding(.leading,100)
                }
            }//end of vstack of rec
            //border
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.gray, lineWidth: 3)
                    .frame(width: 400, height: 170) // Custom size for the shape
            )
            //ZStack of circle
            ZStack{
                //circle of log today as learned
                Circle()
                    .fill(circleColor )
                    .frame(width: 320, height: 320)
                    .onTapGesture {
                        // Change Circle 2 color on Circle 1 tap
                        circle2Color = circle2Color == .black ? .orange : .black
                        count += 1 // Increment count on tap
                        circleColor = .gray // Change color on tap
                        //update text
                        displayText = "Day Learned!"
                        
                    }
                
                Text(displayText)
                    .font(.system(size: 50))
                    .bold()
            }//end of ZStack of circle
            //ZStack of rectangle
            ZStack{
                RoundedRectangle(cornerRadius:8)
                    .fill(boxColor)
                    .frame(width: 151, height: 52)
                    .onTapGesture {
                            // Change Circle color on Box tap
                            circle2Color = circle2Color == .black ? .blue : .black
                        count2 += 1 // Increment count on tap
                        circleColor = .gray // Change color on tap
                        boxColor = Color.gray
                        //update text
                        displayText = "Day Freezed!"
                        
                        }
                Text("Freeze Day")
                    .foregroundColor(Color(uiColor: UIColor(red: 10/255, green: 132/255, blue: 255/255, alpha: 100)))
            }//end of ZStack of rectangle
        }//end of VStack
         //black wallpaper
            .frame(maxWidth:.infinity,maxHeight: .infinity)
            .background(Color.black)
            .ignoresSafeArea()
        
    }
}

#Preview {
    SwiftUIView()
}
