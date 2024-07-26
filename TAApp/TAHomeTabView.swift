//
//  TALoginView.swift
//  TAApp
//
//  Created by Lakshminaidu Chilakala on 25/07/2024.
//

import SwiftUI

struct TAHomeTabView: View {
    var body: some View {
		TabView {
			TADicoveryView()
				.tabItem { Label("Discovery", systemImage: "house") }
				.id("1")

			TADetailView()
				  .tabItem { Label("Category", systemImage: "circle.grid.2x2") }
				  .id("2")

			TASavediew()
				  .tabItem { Label("Saved", systemImage: "bookmark") }
				  .id("3")

			TAProfileView()
				  .tabItem { Label("Profile", systemImage: "person") }
				  .id("4")
			}
		    .accentColor(Color.appTint)
    }
}

#Preview {
	TAHomeTabView()

}

struct TACategoryView: View {
	var body: some View {
		Text("Category")
	}
}
struct TASavediew: View {
	var body: some View {
		Text("Saved")
	}
}
struct TAProfileView: View {
	var body: some View {
		Text("ProfileView")
	}
}
