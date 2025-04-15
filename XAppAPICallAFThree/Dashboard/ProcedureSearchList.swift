
//  ProcedureSearchList.swift
//  XAppAPICallAFThree
//
//  Created by Vishal Londhe on 13/02/25.
//
//


import SwiftUI

struct ProcedureSearchList: View {
    
    
    @State private var searchText = ""
    @State private var selectedCities: [String] = []
    let cityList = ["Mumbai", "Nashik", "Pune", "Nagpur", "Delhi", "Bangalore", "Chennai", "Kolkata", "Hyderabad", "Visakhapatnam-Andhra"]

    var filteredCities: [String] {
        cityList.filter { city in
            searchText.isEmpty || city.lowercased().contains(searchText.lowercased())
        }
    }
    
    var body: some View {
        
        // Search city Text
        VStack(alignment: .leading, spacing: 16) {
            
            if !selectedCities.isEmpty
            {
              
                ScrollView(.horizontal, showsIndicators: false)
                {
                    VStack(alignment: .leading, spacing: 10)
                    {
                        ForEach(selectedCities, id: \.self) { city in
                            HStack
                            {
                                Text(city)
                                    .padding(.vertical,5)
                                
                                Image(systemName: "xmark.circle.fill")
                                    .foregroundColor(.red)
                                    .onTapGesture {
                                        if let index = selectedCities.firstIndex(of: city)
                                        {
                                            selectedCities.remove(at: index)
                                        }
                                    }
                                    .padding(.leading,7)
                            }
                            .padding(.horizontal, 12)
                            .padding(.vertical, 6)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(20)
                        }
                    }
                }
            }
            
            VStack{
                TextField("Procedure*", text: $searchText)
                    .foregroundColor(.gray)
                    .padding(.leading,5)
                    .padding(.bottom,5)
                Divider()
            }
            
            if !filteredCities.isEmpty && searchText.count > 0 {
                VStack(alignment: .leading) {
                    ForEach(filteredCities, id: \.self) { city in
                        HStack{
                            Text(city)
                                .onTapGesture
                            {
                                if !selectedCities.contains(city)
                                {
                                    selectedCities.append(city)
                                }
                                searchText = ""
                            }
                            Spacer()
                        }
                    }
                }
                .padding()
                .frame(width: 360) // Limit the height of the dropdown
                .background(Color.white)
                .cornerRadius(1)
                .shadow(color: .gray.opacity(0.4), radius: 5, x: 0, y: 2)
            }
            
            
            
           
            Spacer()
            
        }
        .padding()
        .navigationTitle("City Selector")
        
        
    }
}







struct ProcedureSearchList_Previews: PreviewProvider {
    static var previews: some View {
        ProcedureSearchList()
    }
}

