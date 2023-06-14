//
//  InputField.swift
//  Assessment
//
//  Created by Oluwatobi Omotayo on 14/06/2023.
//

import SwiftUI

struct InputField: View {
	var prompt: String
	@Binding var text: String
	var keyboardType: UIKeyboardType = .default
	
	var body: some View {
		VStack(spacing: 0) {
			TextField(prompt, text: self.$text)
				.padding(10)
				.keyboardType(self.keyboardType)
				.autocorrectionDisabled()
				.textInputAutocapitalization(.never)
			Divider()
		}
		.frame(height: 50)
	}
}

#if DEBUG
struct InputField_Previews: PreviewProvider {
	static var previews: some View {
		InputField(prompt: "Enter a name", text: .constant("Tobi"))
			.previewLayout(.fixed(width: 393, height: 60))
	}
}
#endif
