//
//  DentalChartScreen.swift
//  XAppAPICallAFThree
//
//  Created by Vishal Londhe on 14/02/25.
//




import SwiftUI

struct DentalChartScreen: View {
    
    
    @State private var isOn: Bool = false

  
    
    var body: some View {
        NavigationStack {
            VStack {
                
                HStack {
                    Button(action: {
                    }) {
                        Image(systemName: "xmark")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.gray)
                            .padding(.vertical,10)
                            
                    }
                    
                    Spacer()
                    
                    Text("Dental Chart")
                        .foregroundColor(.black)
                        .font(.system(size: 25))
                    
                    Text("(")
                       
                    Text("04")
                        .padding(.leading,-5)
                        .padding(.trailing,-5)
                    
                    Text(")")
                       
                    
                    Spacer()
                    Spacer()
                    Spacer()
                    
                   
                    
                    
                    // Next button to navigate to the next screen with selected items
                    NavigationLink(destination: Text("Done Screen")) {
                        Text("Done")
                            .foregroundColor(.blue)
                            .font(.system(size: 25))
                            .bold()
                    }
                   // Disable button if no users selected
                }
                .padding(.horizontal)
                
                
                
         
                HStack{
                    Text("Common Procedure?")
                        .font(.system(size: 20))
                        .foregroundColor(Color.blue)
                    
                    Spacer()
                    
                    Spacer()
                    
                    HStack
                    {
                        
                        Text("Multi Select")
                            .foregroundColor(.gray)
                        
                        Toggle(isOn: $isOn) {
                        }
                        .labelsHidden()
                        
                    }
                    .frame(width: 150, height: 40)
            
                 
                }
                .padding(.horizontal)
                
           
                
                
                
             
                // dentel code  start here Teeth Position
                TabView {
                    // First VStack
                    VStack {
                        
                        VStack{
                          
                            HStack{
                               
                                // Top Side
                                HStack
                                {
                                    //  Left Side Teeth
                                    VStack{
                                        //  left One
                                        HStack{
                                            Image("11")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 50, height: 50)
                                            
                                            Text("11")
                                                .padding(.top,5)
                                                .foregroundColor(.gray)
                                                .padding(.top,35)
                                                .padding(.bottom,-45)
                                                .padding(.leading,-35)
                                        }
                                        .padding(.leading,77)
                                        .padding(.bottom,-49)
                                        

                                      
                                        //  left Two
                                        HStack{
                                            Image("12")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 50, height: 50)
                                            
                                            Text("12")
                                                .padding(.top,18)
                                                .padding(.bottom,-50)
                                                .padding(.leading,-25)
                                                .foregroundColor(.gray)
                                                .offset(y: 10)
                                        }
                                //        .padding(.trailing,5)
                                        .padding(.bottom,-29)
                                        
                                        //  left Three
                                        HStack{
                                            Image("13")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 50, height: 50)
                                            
                                            Text("13")
                                                .padding(.top,35)
                                                .padding(.bottom,-35)
                                                .padding(.leading,-10)
                                                .foregroundColor(.gray)
                                        }
                                        .padding(.trailing,50)
                                        .padding(.bottom,-21)
                                        
                                        
                                        //  left Four
                                        HStack{
                                            Image("14")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 50, height: 50)
                                            
                                            Text("14")
                                                .padding(.top,25)
                                                .padding(.bottom,-19)
                                                .padding(.leading,-6)
                                                .foregroundColor(.gray)
                                        }
                                        .padding(.trailing,85)
                                        .padding(.bottom,-21)
                                        
                                        //  left Five
                                        HStack{
                                            Image("15")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 50, height: 50)
                                            
                                            Text("15")
                                                .padding(.top,25)
                                                .foregroundColor(.gray)
                                        }
                                        .padding(.trailing,108)
                                        .padding(.bottom,-17)
                                        
                                        //  left Six
                                        HStack{
                                            Image("16")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 50, height: 50)
                                            
                                            Text("16")
                                                .padding(.top,10)
                                                .foregroundColor(.gray)
                                        }
                                        .padding(.trailing,120)
                                        .padding(.bottom,-15)
                                        
                                        //  left Seven
                                        HStack{
                                            Image("17")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 50, height: 50)
                                            
                                            Text("17")
                                                .padding(.top,10)
                                                .foregroundColor(.gray)
                                        }
                                        .padding(.trailing,125)
                                        .padding(.bottom,-14)
                                        
                                        //  left Eight
                                        HStack{
                                            Image("18")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 50, height: 50)
                                            
                                            Text("18")
                                                .padding(.top,5)
                                                .foregroundColor(.gray)
                                            
                                          
                                        }
                                        .padding(.trailing,119)
                                    }
                               //     .background(.blue)
                                    .padding(.trailing,-52)

                 
                                 
                                        Divider()
                                            .frame(height: 155)
                                            .background(Color.gray)
                                            .padding(.bottom,-125)
                                        
             

                                    //  Right Side Teeth
                                     VStack{
                                        //  Right One
                                        HStack{
                                            Text("21")
                                                .padding(.top,5)
                                                .foregroundColor(.gray)
                                                .padding(.top,35)
                                                .padding(.bottom,-45)
                                                .padding(.trailing,-35)
        //                                        .padding(.leading, -100)
                                                .background(.red)
                                                .offset(x: 10)
                                            
                                            Image("21")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 50, height: 50)
                                            
                                        }
                                        .padding(.trailing,77)
                                        .padding(.bottom,-49)
                                         
                                         

                                        
                                        //  Right Two
                                        HStack{
                                            Text("22")
                                                .padding(.top,40)
                                                .padding(.bottom,-50)
                                                .padding(.trailing,-25)
                                                .foregroundColor(.gray)
                                            
                                            Image("22")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 50, height: 50)
                                             
                                        }
                                     //   .padding(.leading,5)
                                        .padding(.bottom,-29)
                                        
                                        //  Right Three
                                        HStack{
                                            Text("23")
                                                .padding(.top,35)
                                                .padding(.bottom,-35)
                                                .padding(.trailing,-10)
                                                .foregroundColor(.gray)
                                            
                                            Image("23")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 45, height: 45)
                                          
                                        }
                                        .padding(.leading,50)
                                        .padding(.bottom,-21)
                                        
                                        //  Right Four
                                        HStack{
                                            Text("24")
                                                .padding(.top,25)
                                                .padding(.bottom,-19)
                                                .padding(.trailing,-6)
                                                .foregroundColor(.gray)

                                            
                                            Image("24")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 50, height: 50)
                                              
                                        }
                                        .padding(.leading,85)
                                        .padding(.bottom,-21)
                                        
                                        //  Right Five
                                        HStack{
                                            Text("25")
                                                .padding(.top,25)
                                                .foregroundColor(.gray)
                                            
                                            Image("25")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 50, height: 50)
                                            
                                        }
                                        .padding(.leading,108)
                                        .padding(.bottom,-17)
                                        
                                        //  Right Six
                                        HStack{
                                            Text("26")
                                                .padding(.top,10)
                                                .foregroundColor(.gray)
                                            
                                            Image("26")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 50, height: 50)
                                        
                                        }
                                        .padding(.leading,120)
                                        .padding(.bottom,-15)
                                        
                                        //  Right Seven
                                        HStack{
                                            Text("27")
                                                .padding(.top,10)
                                                .foregroundColor(.gray)
                                            
                                            Image("27")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 50, height: 50)
                                              
                                        }
                                        .padding(.leading,125)
                                        .padding(.bottom,-14)
                                        
                                        //  Right Eight
                                        HStack{
                                            Text("28")
                                                .padding(.top,5)
                                                .foregroundColor(.gray)
                                            
                                            Image("28")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 50, height: 50)
                                        
                                        }
                                        .padding(.leading,119)
                                    }
                                 //    .background(.orange)
                                     .padding(.leading,-52)
                                }
                           //     .background(.mint)
                                .padding(.top,-48)
                                
                                      
                                
                            }
                      //      .background(.yellow)
                            
                            HStack{
                                Text("1")
                                    .padding(.horizontal)
                                    .padding(.top,-30)
                                    .font(.system(size: 30))
                                    .foregroundColor(.gray)
                                
                                Text("2")
                                    .padding(.horizontal)
                                    .padding(.top,-30)
                                    .font(.system(size: 30))
                                    .foregroundColor(.gray)
                            }
                            .padding(.top,-40)
                            
                            HStack{
                                
                                VStack{
                                    Divider()
                                        .padding(.leading,1)
                                        .frame(maxWidth : 50)
                                }
                                
                                Button(action: { print("Adult")})
                                {
                                    HStack {
                                        VStack{
                                            Text("Adult")
                                            Text("Swipe for kids")
                                                .foregroundColor(.gray)
                                        }
                                    }
                                    .font(.body)
                                    .frame(maxWidth: 150, minHeight: 55)
                                    .foregroundColor(.black)
                                    //  .background(Color.white)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 25)
                                            .stroke(Color.black, lineWidth: 1)
                                    )
                                }
                                
                                VStack{
                                    Divider()
                                        .padding(.leading,1)
                                        .frame(maxWidth : 50)
                                }
                                
                            }
                            .padding(.top,-35)
                            .padding(.bottom,-20)
                            
                            
                            // Bottom Side
                            
                            HStack{
                               
                               
                                HStack
                                {
                                    //  Left Side Teeth
                                    VStack{
                                      
                                        
                                        //  left Eight
                                        HStack{
                                            Image("48")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 50, height: 50)
                                            
                                            Text("48")
                                                .padding(.top,5)
                                                .foregroundColor(.gray)
                                            
                                          
                                        }
                                        .padding(.trailing,200)
                                        .padding(.bottom,-13)
                                        
                                        
                                        //  left Seven
                                        HStack{
                                            Image("47")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 50, height: 50)
                                            
                                            Text("47")
                                                .padding(.top,10)
                                                .foregroundColor(.gray)
                                        }
                                        .padding(.trailing,185)
                                        .padding(.bottom,-16)
                                        
                                        
                                        //  left Six
                                        HStack{
                                            Image("46")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 50, height: 50)
                                            
                                            Text("46")
                                                .padding(.top,10)
                                                .foregroundColor(.gray)
                                        }
                                        .padding(.trailing,160)
                                        .padding(.bottom,-15)
                                        
                                        
                                        //  left Five
                                        HStack{
                                            Image("45")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 50, height: 50)
                                            
                                            Text("45")
                                                .padding(.top,-20)
                                                .foregroundColor(.gray)
                                        }
                                        .padding(.trailing,135)
                                        .padding(.bottom,-20)
                                        
                                        
                                        //  left Four
                                        HStack{
                                            Image("44")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 50, height: 50)
                                            
                                            Text("44")
                                                .padding(.top,-30)
                                                .padding(.leading,1)
                                                .foregroundColor(.gray)
                                        }
                                        .padding(.trailing,85)
                                        .padding(.bottom,-26)
                                        
                                        
                                        
                                        //  left Three
                                        HStack{
                                            Image("43")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 45, height: 45)
                                            
                                            Text("43")
                                                .padding(.top,-29)
                                                .padding(.leading,10)
                                                .foregroundColor(.gray)
                                        }
                                        .padding(.trailing,25)
                                        .padding(.bottom,-29)
                                        
                                        
                                        //  left Two
                                        HStack{
                                            Image("42")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 45, height: 45)
                                            
                                            Text("42")
                                                .padding(.top,-38)
                                                .padding(.leading,5)
                                                .foregroundColor(.gray)
                                              
                                        }
                                        .padding(.trailing,-15)
                                        .padding(.bottom,-50)
                                        
                                        
                                        //  left One
                                        HStack{
                                            Image("41")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 45, height: 45)
                                            
                                            Text("41")
                                                .padding(.top,5)
                                                .foregroundColor(.gray)
                                                .padding(.top,-35)
                                                .padding(.leading,-10)
                                        }
                                        .padding(.leading,77)
                                        .padding(.bottom,-49)
                                        
                                    }
                             //       .background(.blue)
                                    .padding(.trailing,-92)
                                 
                                    
                                    
                                        Divider()
                                            .frame(height: 155)
                                            .background(Color.gray)
                                            .padding(.top,-100)
                                    
                                    

                                    //  Right Side Teeth
                                     VStack{
                                   
                                        
                                        //  Right Eight
                                        HStack{
                                            Text("38")
                                                .padding(.top,5)
                                                .foregroundColor(.gray)
                                            
                                            Image("38")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 50, height: 50)
                                        
                                        }
                                        .padding(.leading,200)
                                        .padding(.bottom,-13)
                                     
                                         
                                         
                                         //  Right Seven
                                         HStack{
                                             Text("37")
                                                 .padding(.top,10)
                                                 .foregroundColor(.gray)
                                             
                                             Image("37")
                                                 .resizable()
                                                 .scaledToFit()
                                                 .frame(width: 50, height: 50)
                                               
                                         }
                                         .padding(.leading,185)
                                         .padding(.bottom,-16)
                                         
                                         
                                         
                                         
                                         //  Right Six
                                         HStack{
                                             Text("36")
                                                 .padding(.top,10)
                                                 .foregroundColor(.gray)
                                             
                                             Image("36")
                                                 .resizable()
                                                 .scaledToFit()
                                                 .frame(width: 50, height: 50)
                                         
                                         }
                                         .padding(.leading,160)
                                         .padding(.bottom,-15)
                                         
                                         
                                         //  Right Five
                                         HStack{
                                             Text("35")
                                                 .padding(.top,-20)
                                                 .foregroundColor(.gray)
                                             
                                             Image("35")
                                                 .resizable()
                                                 .scaledToFit()
                                                 .frame(width: 50, height: 50)
                                             
                                         }
                                         .padding(.leading,135)
                                         .padding(.bottom,-20)
                                         
                                         
                                         
                                         //  Right Four
                                         HStack{
                                             Text("34")
                                                 .padding(.top,-30)
                                                 .padding(.trailing,1)
                                                 .foregroundColor(.gray)

                                             
                                             Image("34")
                                                 .resizable()
                                                 .scaledToFit()
                                                 .frame(width: 50, height: 50)
                                               
                                         }
                                         .padding(.leading,85)
                                         .padding(.bottom,-26)
                                         
                                         
                                         
                                         
                                         
                                         
                                         //  Right Three
                                         HStack{
                                             Text("33")
                                                 .padding(.top,-29)
                                                 .padding(.trailing,10)
                                                 .foregroundColor(.gray)
                                             
                                             Image("33")
                                                 .resizable()
                                                 .scaledToFit()
                                                 .frame(width: 45, height: 45)
                                           
                                         }
                                         .padding(.leading,25)
                                         .padding(.bottom,-29)
                                    
                                         
                                         
                                         //  Right Two
                                         HStack{
                                             Text("32")
                                                 .padding(.top,-38)
                                                 .padding(.trailing,5)
                                                 .foregroundColor(.gray)
                                             
                                             Image("32")
                                                 .resizable()
                                                 .scaledToFit()
                                                 .frame(width: 45, height: 45)
                                              
                                         }
                                         .padding(.leading,-15)
                                         .padding(.bottom,-50)
                        
                                         
                                         
                                         
                                         //  Right One
                                         HStack{
                                             Text("31")
                                                 .padding(.top,5)
                                                 .foregroundColor(.gray)
                                                 .padding(.top,-35)
                                                 .padding(.trailing,-10)
                                             
                                             Image("31")
                                                 .resizable()
                                                 .scaledToFit()
                                                 .frame(width: 45, height: 45)
                                             
                                         }
                                         .padding(.trailing,77)
                                         .padding(.bottom,-49)
                                         
                                         
                                         
                                    }
                                 //    .background(.orange)
                                     .padding(.leading,-92)
                                }
                               
                                      
                            }
                       //     .background(.orange)
                            
                        }
                      
                        
                    }
                   .frame(maxWidth: .infinity, maxHeight: .infinity)
               //    .background(.mint)
                   .ignoresSafeArea()
                    
                    // Second VStack
                    VStack {
                        Text("Two screen")
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .ignoresSafeArea()
                    .background(.red)
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                // dentel code  End here Teeth Position
              
                
                
                
                
                
               
                
            }
        }
    }
}


#Preview {
    DentalChartScreen()
}
