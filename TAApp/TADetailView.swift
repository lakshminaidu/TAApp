//
//  TADetailView.swift
//  TAApp
//
//  Created by Lakshminaidu Chilakala on 25/07/2024.
//

import SwiftUI

struct TADetailView: View {
	@State private var searchtext: String = ""
    var body: some View {
		ScrollView(.vertical) {
			VStack(alignment: .leading, spacing: 16) {
				navbar
				TAImage()
					.frame(height: 250)
				ScrollView(.horizontal, showsIndicators: false) {
					HStack {
						ForEach((0...4), id: \.self) { _ in
							TAImage()
								.frame(width: 100, height: 100)
						}
					}
				}
				VStack(alignment: .leading) {
					HStack {
						VStack(alignment: .leading) {
							Text("Pangandaran Beach")
								.font(.title2)
							Text("Pangandaran, Indonesia")
								.fontWeight(.regular)
								.foregroundColor(Color.gray)
						}
						Spacer()

					    Text("$30")
							.foregroundColor(Color.appTint)
							.font(.title2)
							.fontWeight(.bold)
						Text("/Person")
							.font(.callout)
							.fontWeight(.regular)
							.foregroundColor(Color.gray)
					}
					HStack {
						VStack(alignment: .leading) {
							Label(title: { Text("Open at 3AM") }, icon: {Image(systemName: "clock.fill").foregroundColor(.orange)})
						}
						Color.gray.frame(width: 1, height: 20)
						Spacer()
						VStack {
							Label(title: { Text("Ratings") }, icon: {Image(systemName: "star.fill").foregroundColor(.yellow)})
							Text("4.2 ") + Text("Very good")
						}
						Color.gray.frame(width: 1, height: 20)
						Spacer()
						VStack {
							Label(title: { Text("Saved") }, icon: {Image(systemName: "bookmark.fill").foregroundColor(.appTint)})
							Text("4.2k ") + Text("Saved")
						}
					}
					.padding([.vertical, .horizontal], 8)
					.frame(maxWidth: .infinity)
					.background(Color.gray.opacity(0.4))
					.cornerRadius(10)
					.padding(.bottom)

					HStack {
						Text("Overview")
							.padding(.bottom, 8)
							.overlay(alignment: .bottom) {
								Color.appTint.frame(height: 2)
							}
						Text("Comment")
							.padding(.bottom, 8)
							.overlay(alignment: .bottom) {
								Color.appTint.frame(height: 2).hidden()
							}
						Text("Directions")
							.padding(.bottom, 8)
							.overlay(alignment: .bottom) {
								Color.appTint.frame(height: 2).hidden()
							}
					}
					.foregroundColor(.gray)
					.fontWeight(.regular)
					.font(.title2)
					Text("Experience the thrill of navigating the ever-evolving real estate market, where each transaction presents an opportunity for growth and financial prosperity")
						.foregroundColor(.gray)
						.fontWeight(.regular)
				}
				Spacer()
			}
			.padding()
		}
		.background(Color.white)
		.overlay(alignment: .bottom) {
			VStack {
				Button("BooK Now") {

				}
				.padding(.horizontal, 16)
				.frame(maxWidth: .infinity)
				.buttonStyle(AppPrimaryButton())

			}
			.frame(height: 100)
			.background(Color.white)
		}
    }

	var navbar: some View {
		HStack {
			Image(systemName: "arrow.left")
				.foregroundColor(.blue)
			HStack {
				Image(systemName: "magnifyingglass")
					.resizable()
					.foregroundColor(Color.appTint)
					.frame(width: 30, height: 30)
					.padding(.leading)
				TextField("Search here", text: $searchtext)
					.foregroundColor(.blue)
			}
			.padding(.horizontal, 4)
			.overlay(
					RoundedRectangle(cornerRadius: 24)
						.stroke(Color.gray)
						.frame(height: 48)
				)
			Spacer()
			Image(systemName: "bell")
				.foregroundColor(.blue)

		}
		.frame(height: 48)
	}
}

#Preview {
    TADetailView()
}

struct TAImage: View {
	var body: some View {
		Color.appTint.cornerRadius(8)
	}
}
