//
//  Color+Ex.swift
//  TAApp
//
//  Created by Lakshminaidu Chilakala on 25/07/2024.
//

import Foundation
import SwiftUI
import UIKit

extension Color {
	init(hex: String) {
		let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
		var int: UInt64 = 0
		Scanner(string: hex).scanHexInt64(&int)
		let alpha, red, green, blue: UInt64
		switch hex.count {
		case 3: // RGB (12-bit)
			(alpha, red, green, blue) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
		case 6: // RGB (24-bit)
			(alpha, red, green, blue) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
		case 8: // ARGB (32-bit)
			(alpha, red, green, blue) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
		default:
			(alpha, red, green, blue) = (1, 1, 1, 0)
		}

		self.init(
			.sRGB,
			red: Double(red) / 255,
			green: Double(green) / 255,
			blue:  Double(blue) / 255,
			opacity: Double(alpha) / 255
		)
	}

	func uiColor() -> UIColor {
		UIColor(self)
	}
}

extension Color {
	static let bgColor = Color(hex: "F0F0F0")
	static let appTint = Color(hex: "6a93f6")
}
