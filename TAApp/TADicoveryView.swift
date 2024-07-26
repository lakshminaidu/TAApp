//
//  File.swift
//  TAApp
//
//  Created by Lakshminaidu Chilakala on 25/07/2024.
//

import Foundation
import SwiftUI

struct TADicoveryView: View {
	@State private var serachtext: String = "helldfsdsdfsdfsdfsdfsdfo"
	@State private var selectedItem = "Mountain"
	@State private var categories = Category.data
	@State private var showDetail: Bool = false
	var body: some View {
		NavigationStack {
			ZStack(alignment: .topLeading) {
				ScrollView(.vertical) {
					VStack(spacing: .zero) {
						headerView
							.background(Color.appTint)
						VStack {
							chipsContainer
							smallTilesCarousalView
						}
						.padding()
						.background(Color.bgColor)
					}
				}
				.background(Color.bgColor)
			}
			.ignoresSafeArea(edges: .top)
			.navigationBarTitleDisplayMode(.inline)
		}
	}

	private var headerView: some View {
		VStack(alignment: .leading) {
			Color.appTint.frame(height: 58)
			HStack {
				HStack {
					Circle()
						.fill(Color.appTint)
						.padding(.horizontal, 5)
						.overlay {
							Image(systemName: "person")
						}
					Text("Welcome Hello")
						.padding()
						.font(.title2)
				}
				.foregroundColor(.white)
				.background(Color.white.opacity(0.5).cornerRadius(30))
				Spacer()
				Image(systemName: "bell.circle.fill")
					.resizable()
					.frame(width: 50)
					.foregroundColor(Color.white.opacity(0.5))
			}
			.frame(height: 50)
			Text("Discover Your Next Trip Destination")
				.font(.title2)
				.foregroundColor(.white)
				.fontWeight(.bold)
				.padding(.vertical)
			searchbarContiner
		}
		.padding()
		.frame(maxWidth: .infinity)
	}

	private var searchbarContiner: some View {
		HStack {
			Rectangle()
				.fill(Color.white)
				.cornerRadius(30)
				.overlay {
					HStack {
						Image(systemName: "magnifyingglass")
							.resizable()
							.foregroundColor(Color.appTint)
							.frame(width: 30, height: 30)
							.padding(.leading)

						TextField("Search here", text: $serachtext)
							.foregroundColor(.blue)
						Text("Search")
							.font(.subheadline)
							.padding()
							.foregroundColor(.white)
							.background(Color.appTint)
							.cornerRadius(30)

					}
					.padding(.horizontal, 4)
				}
			Image(systemName: "line.2.horizontal.decrease.circle.fill")
				.resizable()
				.frame(width: 60)
				.foregroundColor(Color.white)
		}
		.frame(height: 60)
	}

	private var chipsContainer: some View {
		VStack(alignment: .leading) {
			Text("Top Categories")
				.font(.title3)
				.fontWeight(.bold)
			ScrollView(.horizontal, showsIndicators: false) {
				HStack {
					ForEach(categories, id: \.id) {
						if $0.name == selectedItem {
							Label($0.name, systemImage: $0.image)
								.padding()
								.font(.subheadline)
								.fontWeight(.bold)
								.foregroundColor(.white)
								.background(Color.appTint.cornerRadius(30))
						} else {
							Label($0.name, systemImage: $0.image)
								.padding()
								.font(.subheadline)
								.fontWeight(.bold)
								.foregroundColor(.gray)
								.background(Color.white.cornerRadius(30))
						}
					}
				}
			}
			.frame(height: 30)
			.padding(.vertical)
			largeTilesCarousalView
		}
		.frame(maxHeight: .infinity)
	}
	private var largeTilesCarousalView: some View {
		ScrollView(.horizontal) {
			HStack {
				ForEach(Category.data, id: \.id) { _ in
					VStack(alignment: .center, spacing: 10) {
						Color.appTint
							.frame(height: 150, alignment: .center)
							.clipShape(RoundedRectangle(cornerRadius: 12))
						VStack(alignment: .leading, spacing: 4) {
							Text("pantis Jatis")
								.lineLimit(2)
							    .font(.subheadline)
								.foregroundColor(.black)
								.frame(maxWidth: .infinity, alignment: .leading)
							Label("asdfsf", image: "mappin")
							Spacer()
							HStack {
								Text("$23.5/night").foregroundColor(.blue).fontWeight(.bold)
								Spacer()
								Label("4.8", image: "star.fill").padding(.trailing, 4)
							}
						}
						.padding(.horizontal, 4)
						.background(Color.white)
						.offset(y: -20)

					}
					.padding(8)
					.background(Color.white.clipShape(RoundedRectangle(cornerRadius: 8)))
					.frame(width: 250)
				}
			}
		}
	}

	private var smallTilesCarousalView: some View {
		VStack(alignment: .leading) {
			HStack {
				Text("Popular Destinations")
					.font(.title3)
					.fontWeight(.bold)
				Spacer()
				Button(action: {}, label: {
					HStack {
						Text("See All")
						Image(systemName: "chevron.forward")
					}
				})
			}
			ScrollView(.horizontal) {
				HStack {
					ForEach(Category.data, id: \.id) { _ in
						HStack(alignment: .center, spacing: 10) {
							ZStack(alignment: .topLeading) {
								Color.appTint
									.frame(width: 100, height: 100, alignment: .center)
									.clipShape(RoundedRectangle(cornerRadius: 12))
							}
							VStack(alignment: .leading, spacing: 4) {
								Text("pantis Jatis")
									.lineLimit(2)
								.font(.subheadline)
									.foregroundColor(.black)
									.frame(maxWidth: .infinity, alignment: .leading)
								Label("asdfsf", image: "mappin")
								Spacer()
								HStack {
									Text("$23.5/night").foregroundColor(.blue).fontWeight(.bold)
									Spacer()
									Image(systemName: "bookmark")
								}
							}
							.frame(
								width: 200,
								height: 100,
								alignment: .top
							)
						}
						.overlay(alignment: .topTrailing) {
							Label("4.8", image: "star.fill").padding(.trailing, 4)
						}
						.padding(8)
						.background(Color.white.clipShape(RoundedRectangle(cornerRadius: 8)))
					}
				}
			}
		}
		.padding(.vertical)
	}

	func setupNavgationLinks() -> some View {
		Group {
			NavigationLink("") {
				TADetailView()
			}
		}
	}
}

#Preview {
	TAHomeTabView()
}
