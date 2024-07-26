//
//  TALandingView.swift
//  TAApp
//
//  Created by Lakshminaidu Chilakala on 25/07/2024.
//

import SwiftUI

struct TALandingView: View {
    var body: some View {
		ZStack {
			Color.bgColor
			VStack(spacing: .zero) {
				Label("Gotarvel", systemImage: "airplane.departure")
					.foregroundColor(.white)
					.font(.title3)
					.fontWeight(.bold)
				Spacer()
				VStack(alignment: .leading, spacing: 20) {
					Text("Discover Amazing world with Gotravel")
						.font(.largeTitle)
						.fontWeight(.bold)
						.padding(.vertical)
						.padding(.horizontal)
					Text("Experience the thrill of navigating the ever-evolving real estate market, where each transaction")
						.font(.subheadline)
						.fontWeight(.regular)
						.padding(.horizontal)
				}
				.frame(maxWidth: .infinity)
				.background(Color.white)
				VStack {
					Button("Get Started") {

					}
					.padding(.horizontal, 16)
					.frame(maxWidth: .infinity)
					.buttonStyle(AppPrimaryButton())

				}
				.frame(height: 100)
				.background(Color.white)
			}
			.background(Color.appTint)
			.padding(.top, 58)
			.safeAreaPadding(.bottom)
		}
		.ignoresSafeArea()
    }
}

#Preview {
    TALandingView()
}

struct AppPrimaryButton: ButtonStyle {
	func makeBody(configuration: Configuration) -> some View {
		HStack {
			configuration.label
				.foregroundColor(Color.white)
				.fontWeight(.bold)
		}
		.padding()
		.frame(maxWidth: .infinity)
		.background(Color.appTint)
		.cornerRadius(8)
	}
}
