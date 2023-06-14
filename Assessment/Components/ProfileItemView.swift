//
//  ProfileItemView.swift
//  Assessment
//
//  Created by Oluwatobi Omotayo on 14/06/2023.
//

import SwiftUI

struct ProfileItemView: View {
	var title: String
	var value: String
	
	var body: some View {
		VStack(spacing: 0) {
			HStack {
				Text(self.title)
					.fontWeight(.medium)
				Spacer()
				Text(self.value)
					.foregroundColor(.secondary)
			}
			.padding()
			Divider()
		}
	}
}

#if DEBUG
struct ProfileItemView_Previews: PreviewProvider {
	static var previews: some View {
		ProfileItemView(title: "Title", value: "Value")
	}
}
#endif
