//
//  TAModels.swift
//  TAApp
//
//  Created by Lakshminaidu Chilakala on 26/07/2024.
//

import Foundation

struct Category: Identifiable {
	let id: String
	let name: String
	let image: String
	static let data: [Category] = [
		Category(id: UUID().uuidString, name: "Beach", image: "leaf.fill"),
		Category(id: UUID().uuidString, name: "Mountain", image: "mountain.2"),
		Category(id: UUID().uuidString, name: "Snow", image: "wind.snow"),
		Category(id: UUID().uuidString, name: "Casss", image: "humidity"),
		Category(id: UUID().uuidString, name: "Heart", image: "heart.fill"),
	]
}
