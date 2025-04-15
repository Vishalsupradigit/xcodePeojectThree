//
//  V9_IntroScreen.swift
//  XAppAPICallAFThree
//
//  Created by Vishal Londhe on 02/12/24.
//

import SwiftUI

struct OnBoardModel: Identifiable {
    var id = UUID()
    var title: String
    var des: String
    var image: String
}

extension OnBoardModel {
    static var onBoardData: [OnBoardModel] {
        [
            OnBoardModel(title: "First UIScreen", des: "My First UIScreen", image: "cddown"),
            OnBoardModel(title: "Second UIScreen", des: "My Second UIScreen", image: "virtus"),
            OnBoardModel(title: "Third UIScreen", des: "My Third UIScreen", image: "skoda"),
        ]
    }
}

struct V9_IntroScreen: View {
    var data = OnBoardModel.onBoardData
    
    init ()
    {
        UIPageControl.appearance().currentPageIndicatorTintColor = .red
        UIPageControl.appearance().pageIndicatorTintColor  = .green
    }
    
    @State var currentPage = 0

    var body: some View {
        VStack {
            TabView(selection: $currentPage) {
                ForEach(data.indices, id: \.self) { index in
                    VStack {
                        Image(data[index].image)
                            .resizable()
                            .frame(height: 300)

                        Text(data[index].title)
                            .font(.title)
                            .foregroundColor(.black)
                            .padding()

                        Text(data[index].des)
                            .font(.headline)
                            .foregroundColor(.black)
                            .padding()
                    }
                    .tag(index) // Assign tag to each page
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .always))
            .padding()
            
            HStack{
                
                 
                Spacer()
                
                Button{
                    withAnimation{
                        if currentPage < data.count-1 {
                            currentPage += 1
                        }
                    }
                }label: {
                    Image(systemName: currentPage == data.count ? "checkmark.circle" :
                    "chevron.right.circle" )
                    .frame(width: 40, height: 40, alignment: .center)
                }
                
            }.padding()
                .foregroundColor(.primary)
        }
    }
}

#Preview {
    V9_IntroScreen()
}
