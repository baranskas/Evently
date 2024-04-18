//
//  CustomTabBarView.swift
//  Evently
//
//  Created by Martynas Baranskas on 16/04/2024.
//

import SwiftUI

enum Tab: String, CaseIterable {
    case house
    case search = "magnifyingglass.circle"
    case doc = "arrow.up.square"
    case saved = "bookmark"
}

struct CustomTabBarView: View {
    @Binding var selectedTab: Tab
    private var fillImage: String {
        selectedTab.rawValue + ".fill"
    }
    
    private var tabColor: Color {
        switch selectedTab {
        case .house:
            return .red
        case .search:
            return .yellow
        case .doc:
            return .indigo
        case .saved:
            return .orange
        }
    }
    
    var body: some View {
        VStack {
            HStack {
                ForEach(Tab.allCases, id: \.rawValue) { tab in
                    Spacer()
                    Image(systemName: selectedTab == tab ? fillImage : tab.rawValue)
                        .scaleEffect(selectedTab == tab ? 1.3 : 1.0)
                        .foregroundColor(selectedTab == tab ? tabColor : .gray)
                        .font(.system(size: 22))
                        .onTapGesture {
                            selectedTab = tab
                        }
                    Spacer()
                }
            }
            .frame(width: nil, height: 35)
            .background(Color("SecondaryBackgroundColor"))
            .cornerRadius(10)
        }
    }
}

#Preview {
    CustomTabBarView(selectedTab: .constant(.house))
}
