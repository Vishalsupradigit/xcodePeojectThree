//
//  CalenderCode.swift
//  XAppAPICallAFThree
//
//  Created by Vishal Londhe on 02/01/25.
//

//import SwiftUI
//
//struct CalenderCode: View {
//    var body: some View {
//        Text("Calender code")
//    }
//}
//
//#Preview {
//    CalenderCode()
//}


// 1)  basic design

//import SwiftUI
//
//struct CalenderCode: View {
//    @State private var selectedDate = Date()
//
//    var body: some View {
//        DatePicker(
//            "Select a date",
//            selection: $selectedDate,
//            displayedComponents: .date
//        )
//        .datePickerStyle(GraphicalDatePickerStyle())
//        .padding()
//    }
//}
//
//struct CalenderCode_Previews: PreviewProvider {
//    static var previews: some View {
//        CalenderCode()
//    }
//}

///  2)  custom


//import SwiftUI
//
//struct CalenderCode: View {
//    @State private var selectedDate = Date()
//    private let calendar = Calendar.current
//    private let dateFormatter: DateFormatter = {
//        let formatter = DateFormatter()
//        formatter.dateFormat = "MMMM yyyy"
//        return formatter
//    }()
//    
//    private func daysInMonth(for date: Date) -> [Date] {
//        guard let range = calendar.range(of: .day, in: .month, for: date) else { return [] }
//        let startOfMonth = calendar.date(from: calendar.dateComponents([.year, .month], from: date))!
//        return range.compactMap { calendar.date(byAdding: .day, value: $0 - 1, to: startOfMonth) }
//    }
//
//    var body: some View {
//        VStack {
//            Text(dateFormatter.string(from: selectedDate))
//                .font(.title)
//                .padding()
//
//            let days = daysInMonth(for: selectedDate)
//
//            LazyVGrid(columns: Array(repeating: GridItem(), count: 7)) {
//                ForEach(days, id: \.self) { day in
//                    Text("\(calendar.component(.day, from: day))")
//                        .frame(maxWidth: .infinity)
//                        .padding()
//                        .background(calendar.isDate(day, inSameDayAs: selectedDate) ? Color.blue : Color.clear)
//                        .cornerRadius(8)
//                        .onTapGesture {
//                            selectedDate = day
//                        }
//                }
//            }
//        }
//        .padding()
//    }
//}
//
//struct CalenderCode_Previews: PreviewProvider {
//    static var previews: some View {
//        CalenderCode()
//    }
//}


//   3. Interactive Event Calendar


//import SwiftUI
//
//struct CalenderCode: View {
//    @State private var selectedDate = Date()
//    private let calendar = Calendar.current
//    private let events: [Date] = [
//        Calendar.current.date(byAdding: .day, value: 2, to: Date())!,
//        Calendar.current.date(byAdding: .day, value: 5, to: Date())!
//    ]
//    
//    private func isEventDay(_ date: Date) -> Bool {
//        events.contains { calendar.isDate($0, inSameDayAs: date) }
//    }
//
//    var body: some View {
//        VStack {
//            Text("Event Calendar")
//                .font(.largeTitle)
//                .padding()
//
//            CalendarView(selectedDate: $selectedDate, isEventDay: isEventDay)
//        }
//    }
//}
//
//struct CalendarView: View {
//    @Binding var selectedDate: Date
//    let isEventDay: (Date) -> Bool
//
//    private let calendar = Calendar.current
//    
//    private func daysInMonth(for date: Date) -> [Date] {
//        guard let range = calendar.range(of: .day, in: .month, for: date) else { return [] }
//        let startOfMonth = calendar.date(from: calendar.dateComponents([.year, .month], from: date))!
//        return range.compactMap { calendar.date(byAdding: .day, value: $0 - 1, to: startOfMonth) }
//    }
//
//    var body: some View {
//        let days = daysInMonth(for: selectedDate)
//
//        LazyVGrid(columns: Array(repeating: GridItem(), count: 7)) {
//            ForEach(days, id: \.self) { day in
//                VStack {
//                    Text("\(calendar.component(.day, from: day))")
//                        .padding()
//                        .background(calendar.isDate(day, inSameDayAs: selectedDate) ? Color.blue : Color.clear)
//                        .cornerRadius(8)
//
//                    if isEventDay(day) {
//                        Circle()
//                            .fill(Color.red)
//                            .frame(width: 6, height: 6)
//                    }
//                }
//                .onTapGesture {
//                    selectedDate = day
//                }
//            }
//        }
//    }
//}
//
//struct CalenderCode_Previews: PreviewProvider {
//    static var previews: some View {
//        CalenderCode()
//    }
//}


//   4. Vertical Calendar List

import SwiftUI

struct CalenderCode: View {
    private let calendar = Calendar.current

    // Dynamically compute months instead of using an initializer
    private var months: [Date] {
        let currentDate = Date()
        return (0..<12).compactMap { calendar.date(byAdding: .month, value: $0, to: currentDate) }
    }

    var body: some View {
        ScrollView {
            LazyVStack(alignment: .leading, spacing: 16) {
                ForEach(months, id: \.self) { month in
                    VStack(alignment: .leading, spacing: 8) {
                        // Display the month and year title
                        Text(monthTitle(for: month))
                            .font(.headline)
                            .padding(.horizontal)
                        
                        // Get the days in the current month
                        let days = daysInMonth(for: month)
                        
                        LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 8), count: 7), spacing: 8) {
                            // Display days
                            ForEach(days, id: \.self) { day in
                                Text("\(calendar.component(.day, from: day))")
                                    .frame(maxWidth: .infinity, minHeight: 40)
                                    .background(Color.gray.opacity(0.2))
                                    .cornerRadius(8)
                            }
                        }
                        .padding(.horizontal)
                    }
                }
            }
            .padding(.vertical)
        }
    }

    /// Returns the title for the given month in the format "MMMM yyyy".
    private func monthTitle(for date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM yyyy"
        return formatter.string(from: date)
    }

    /// Returns all the days in the given month.
    private func daysInMonth(for date: Date) -> [Date] {
        guard let range = calendar.range(of: .day, in: .month, for: date),
              let startOfMonth = calendar.date(from: calendar.dateComponents([.year, .month], from: date))
        else {
            return []
        }

        return range.compactMap { calendar.date(byAdding: .day, value: $0 - 1, to: startOfMonth) }
    }
}

struct CalenderCode_Previews: PreviewProvider {
    static var previews: some View {
        CalenderCode()
    }
}
