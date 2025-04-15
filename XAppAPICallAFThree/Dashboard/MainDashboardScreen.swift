//
//  MainDashboardScreen.swift
//  XAppAPICallAFThree
//
//  Created by Vishal Londhe on 26/11/24.
//

import SwiftUI

struct MainDashboardScreen: View {
    var body: some View {
       
        NavigationView{
            ZStack{
                Color.white
                    .ignoresSafeArea()
                
                ScrollView{
                    VStack{
                        
                        HStack(spacing: 20) {
                            
                            NavigationLink(destination: CoreDataExample())
                            {
                                Text("CoreData")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .frame(width: 170, height: 100)
                                    .background(Color.blue)
                                    .cornerRadius(10)
                                    .padding(.vertical)
                            }
                            
                            NavigationLink(destination: ToolBarScreen())
                            {
                                Text("-o-")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .frame(width: 170, height: 100)
                                    .background(Color.orange)
                                    .cornerRadius(10)
                                    .padding(.vertical)
                            }
                        }
                        
                        
                        HStack(spacing: 20) {
                            
                            NavigationLink(destination: UserListView())
                            {
                                Text("List View")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .frame(width: 170, height: 100)
                                    .background(Color.red)
                                    .cornerRadius(10)
                                    .padding(.vertical)
                            }
                            
                            NavigationLink(destination: ToolBarScreen())
                            {
                                Text("ToolBar")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .frame(width: 170, height: 100)
                                    .background(Color.yellow)
                                    .cornerRadius(10)
                                    .padding(.vertical)
                            }
                        }
                        
                        VStack{
                            Text("Programming Simplifid")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .frame(width: 340, height: 70)
                                .background(Color.blue)
                                .cornerRadius(10)
                            
                            Text("By jayant-kumar")
                                .font(.subheadline)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .frame(width: 200, height: 40)
                                .background(Color.yellow)
                                .cornerRadius(10)
                        }
                        
                        HStack(spacing: 20) {
                            NavigationLink(destination: V1_Introduction())
                            {
                                Text("V1")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .frame(width: 170, height: 100)
                                    .background(Color.pink)
                                    .cornerRadius(10)
                                    .padding(.vertical)
                            }
                            
                            NavigationLink(destination: V2_ButtonMaking())
                            {
                                Text("V2")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .frame(width: 170, height: 100)
                                    .background(Color.green)
                                    .cornerRadius(10)
                                    .padding(.vertical)
                            }
                        }
                        
                        HStack(spacing: 20) {
                            NavigationLink(destination: V3_LoginScreen())
                            {
                                Text("V3")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .frame(width: 170, height: 100)
                                    .background(Color.orange)
                                    .cornerRadius(10)
                                    .padding(.vertical)
                            }
                            
                            NavigationLink(destination: V4_NavigationLink())
                            {
                                Text("V4")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .frame(width: 170, height: 100)
                                    .background(Color.mint)
                                    .cornerRadius(10)
                                    .padding(.vertical)
                                
                            }
                        }
                        
                        HStack(spacing: 20) {
                            NavigationLink(destination: V5_AllStack())
                            {
                                Text("V5")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .frame(width: 170, height: 100)
                                    .background(Color.black)
                                    .cornerRadius(10)
                                    .padding(.vertical)
                            }
                            
                            
                            NavigationLink(destination: V6_BottomTab())
                            {
                                Text("V6")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .frame(width: 170, height: 100)
                                    .background(Color.brown)
                                    .cornerRadius(10)
                                    .padding(.vertical)
                            }
                        }
                        
                        HStack(spacing: 20) {
                            NavigationLink(destination: V7_BottomSheeth())
                            {
                                Text("V7")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .frame(width: 170, height: 100)
                                    .background(Color.gray)
                                    .cornerRadius(10)
                                    .padding(.vertical)
                            }
                            
                            
                            NavigationLink(destination: V8_ToggleMaking())
                            {
                                Text("V8")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .frame(width: 170, height: 100)
                                    .background(Color.cyan)
                                    .cornerRadius(10)
                                    .padding(.vertical)
                            }
                        }
                        
                        
                        HStack(spacing: 20) {
                            NavigationLink(destination: V9_IntroScreen())
                            {
                                Text("V9")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .frame(width: 170, height: 100)
                                    .background(Color.purple)
                                    .cornerRadius(10)
                                    .padding(.vertical)
                            }
                            
                            
                            NavigationLink(destination: V10_CheckBox())
                            {
                                Text("V10")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .frame(width: 170, height: 100)
                                    .background(Color.blue)
                                    .cornerRadius(10)
                                    .padding(.vertical)
                            }
                        }
                        
                        HStack(spacing: 20) {
                            NavigationLink(destination: V11_Revision())
                            {
                                Text("V11")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .frame(width: 170, height: 100)
                                    .background(Color.yellow)
                                    .cornerRadius(10)
                                    .padding(.vertical)
                            }
                            
                            
                            NavigationLink(destination: UserListView())
                            {
                                Text("V12")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .frame(width: 170, height: 100)
                                    .background(Color.red)
                                    .cornerRadius(10)
                                    .padding(.vertical)
                            }
                        }
                        
                        
                        HStack(spacing: 20) {
                            NavigationLink(destination: ListTypesInIOS())
                            {
                                Text("V13")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .frame(width: 170, height: 100)
                                    .background(Color.pink)
                                    .cornerRadius(10)
                                    .padding(.vertical)
                            }
                            
                            
                            NavigationLink(destination: Text("Demo"))
                            {
                                Text("V14")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .frame(width: 170, height: 100)
                                    .background(Color.mint)
                                    .cornerRadius(10)
                                    .padding(.vertical)
                            }
                        }
                        
                        
                        HStack(spacing: 20) {
                            NavigationLink(destination: SimpleList())
                            {
                                Text("Simple List")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .frame(width: 170, height: 100)
                                    .background(Color.pink)
                                    .cornerRadius(10)
                                    .padding(.vertical)
                            }
                            
                            
                            NavigationLink(destination: SectionedList())
                            {
                                Text("Sectioned List")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .frame(width: 170, height: 100)
                                    .background(Color.mint)
                                    .cornerRadius(10)
                                    .padding(.vertical)
                            }
                        }
                        
                        HStack(spacing: 20) {
                            NavigationLink(destination: CustomListCells())
                            {
                                Text("Custom List Cells (UserRow)")
                                    .font(.caption)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .frame(width: 170, height: 100)
                                    .background(Color.pink)
                                    .cornerRadius(10)
                                    .padding(.vertical)
                            }
                            
                            
                            NavigationLink(destination: ListwithDeleteAction())
                            {
                                Text("List with Delete Action")
                                    .font(.caption)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .frame(width: 170, height: 100)
                                    .background(Color.mint)
                                    .cornerRadius(10)
                                    .padding(.vertical)
                            }
                        }
                        
                        HStack(spacing: 20) {
                            NavigationLink(destination: LazyVGridScreen())
                            {
                                Text("LazyVGrid (Custom Layout)")
                                    .font(.caption)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .frame(width: 170, height: 100)
                                    .background(Color.pink)
                                    .cornerRadius(10)
                                    .padding(.vertical)
                            }
                            
                            
                            NavigationLink(destination: LazyVGridScreenVertical())
                            {
                                Text("LazyVGrid Vertical")
                                    .font(.title)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color.white)
                                    .frame(width: 170, height: 100)
                                    .background(Color.mint)
                                    .cornerRadius(10)
                                    .padding(.vertical)
                            }
                        }
                        
                        
                        
                        HStack(spacing: 20) {
                            
                           
                            
                            NavigationLink(destination: LazyVGridNavigate())
                            {
                                Text("LazyVGrid (Navigate)")
                                    .font(.caption)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .frame(width: 170, height: 100)
                                    .background(Color.pink)
                                    .cornerRadius(10)
                                    .padding(.vertical)
                            }
                            
                           
                            
                            NavigationLink(destination: AleartDailog())
                            {
                                Text("Aleart Dailog")
                                    .font(.title)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color.white)
                                    .frame(width: 170, height: 100)
                                    .background(Color.mint)
                                    .cornerRadius(10)
                                    .padding(.vertical)
                            }
                        }
                        
                        
                       
                        
                        HStack(spacing: 20) 
                        {
                            
                            NavigationLink(destination: AleartDailogCutom())
                            {
                                Text("Custom aleart")
                                    .font(.caption)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .frame(width: 170, height: 100)
                                    .background(Color.pink)
                                    .cornerRadius(10)
                                    .padding(.vertical)
                            }
                            
                            NavigationLink(destination: CheckOne())
                            {
                                Text("Calender")
                                    .font(.title)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color.white)
                                    .frame(width: 170, height: 100)
                                    .background(Color.mint)
                                    .cornerRadius(10)
                                    .padding(.vertical)
                            }
                        }
                        
                        
                        HStack(spacing: 20)
                        {
                            
                            NavigationLink(destination: CaseHistoryView())
                            {
                                Text("Case History")
                                    .font(.caption)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .frame(width: 170, height: 100)
                                    .background(Color.pink)
                                    .cornerRadius(10)
                                    .padding(.vertical)
                            }
                            
                            NavigationLink(destination: TwoButtonToggle())
                            {
                                Text("TwoButtonToggle")
                                    .font(.title)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color.white)
                                    .frame(width: 170, height: 100)
                                    .background(Color.mint)
                                    .cornerRadius(10)
                                    .padding(.vertical)
                            }
                        }
                        
                        HStack(spacing: 20)
                        {
                            
                            NavigationLink(destination: EditTextScren())
                            {
                                Text("Edit Text Screen")
                                    .font(.caption)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .frame(width: 170, height: 100)
                                    .background(Color.pink)
                                    .cornerRadius(10)
                                    .padding(.vertical)
                            }
                            
                            NavigationLink(destination: UploadPhoto())
                            {
                                Text("Upload Photo")
                                    .font(.title)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color.white)
                                    .frame(width: 170, height: 100)
                                    .background(Color.mint)
                                    .cornerRadius(10)
                                    .padding(.vertical)
                            }
                        }
                        
                        HStack(spacing: 20)
                        {
                            
                            NavigationLink(destination: ProcedureSearchList())
                            {
                                Text("Search List")
                                    .font(.caption)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .frame(width: 170, height: 100)
                                    .background(Color.orange)
                                    .cornerRadius(10)
                                    .padding(.vertical)
                            }
                            
                            NavigationLink(destination: DentalChartScreen())
                            {
                                Text("Dental Chart")
                                    .font(.title)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color.white)
                                    .frame(width: 170, height: 100)
                                    .background(Color.blue)
                                    .cornerRadius(10)
                                    .padding(.vertical)
                            }
                        }
                        
                    }
                }
                
                
            }
            .navigationBarHidden(true)
        }
        
    }
}

#Preview {
    MainDashboardScreen()
}
