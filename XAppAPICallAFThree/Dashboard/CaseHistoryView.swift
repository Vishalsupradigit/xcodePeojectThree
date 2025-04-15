//
//  CaseHistoryView.swift
//  XAppAPICallAFThree
//
//  Created by Vishal Londhe on 03/02/25.



import SwiftUI

struct CaseHistoryView: View {
    
    struct CaseHistory: Identifiable {
        let id: Int
        let date: String
        let relativeTime: String
        let title: String
        let description: String
    }
    
    let historyData: [CaseHistory] = [
        CaseHistory(id: 1, date: "18 Aug 2021", relativeTime: "(Yesterday)", title: "No patients recorded", description: "Reduced flatulence, Appetite increased, general feeling of well-being."),
        CaseHistory(id: 2, date: "31 Jul 2021", relativeTime: "(Almost 2 weeks back)", title: "No patients recorded", description: "Loose motions stopped, better sleep, flatulence, bloating of stomach reduced."),
        CaseHistory(id: 3, date: "18 Jul 2021", relativeTime: "(Almost 3 weeks back)", title: "No patients recorded", description: "Anorexia, malaise, loose motions, insomnia, flatulence, belching."),
        CaseHistory(id: 4, date: "01 Jun 2021", relativeTime: "(2 months back)", title: "No patients recorded", description: "Reduced flatulence, Appetite increased, general feeling of well-being.")
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(alignment: .leading, spacing: 20) {
                    ForEach(historyData.indices, id: \.self) { index in
                        NavigationLink(destination: CaseDetailView(caseHistory: historyData[index])) {
                            TimelineCardView(caseHistory: historyData[index], isLast: index == historyData.count - 1)
                        }
                        .buttonStyle(PlainButtonStyle()) // Removes default button styling
                    }
                }
                .padding(.horizontal)
                .padding(.top, 10)
            }
        }
    }
}

// MARK: - Detail View
struct CaseDetailView: View {
    let caseHistory: CaseHistoryView.CaseHistory

    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Text(caseHistory.date)
                .font(.headline)
                .foregroundColor(.blue)

            Text(caseHistory.relativeTime)
                .font(.subheadline)
                .foregroundColor(.gray)

            Text(caseHistory.title)
                .font(.title)
                .bold()

            Text(caseHistory.description)
                .font(.body)
                .foregroundColor(.black)

            Spacer()
        }
        .padding()
        .navigationTitle("Case Details")
    }
}

// MARK: - Timeline Card View
struct TimelineCardView: View {
    let caseHistory: CaseHistoryView.CaseHistory
    let isLast: Bool

    var body: some View {
        HStack {
            VStack {
                Divider()
                    .frame(width: 2, height: 59)
                    .background(Color.blue)
                    .padding(.top, -10)
                
                Circle()
                    .fill(Color.blue)
                    .frame(width: 20, height: 20)
                    .padding(.top, -9)
                    .padding(.bottom, -9)
                    
                Divider()
                    .frame(width: 2, height: 59)
                    .background(Color.red)
                    .padding(.bottom, -10)
            }

            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Text("\(caseHistory.date) \(caseHistory.relativeTime)")
                        .font(.subheadline)
                        .foregroundColor(.blue)
                        .bold()
                    
                    Spacer()
                    
                    Image(systemName: "figure.stand")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.red)
                        .padding(.vertical, 10)
                }
                
                Text(caseHistory.title)
                    .font(.headline)
                    .bold()
                    .foregroundColor(.black)
                    .padding(.vertical, 5)
            }
            .padding()
            .background(Color.white)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.blue, lineWidth: 2)  // Adds blue border with 2 point thickness
            )
        }
    }
}

// MARK: - Preview
#Preview {
    CaseHistoryView()
}
