//
//  SignUpView.swift
//  Assessment
//
//  Created by Oluwatobi Omotayo on 14/06/2023.
//

import SwiftUI

struct SignUpView: View {
	
	@ObservedObject var model: SignUpViewModel
	
	init(model: SignUpViewModel) {
		self.model = model
	}
	
	var body: some View {
		VStack(spacing: 0) {
			Text("Sign Up")
				.font(.largeTitle)
				.padding()
			
			InputField(prompt: "First name", text: self.$model.name)
			InputField(prompt: "Username", text: self.$model.username)
			InputField(prompt: "Email", text: self.$model.email, keyboardType: .emailAddress)
			InputField(prompt: "Phone", text: self.$model.phone, keyboardType: .phonePad)
			
			SecureField("Password", text: self.$model.password)
				.padding(10)
			Divider()
			
			Button(
				action: {
					self.model.signUp()
				},
				label: {
					Text("Sign Up")
						.fontWeight(.medium)
				})
			.buttonStyle(.borderedProminent)
			.controlSize(.large)
			.padding(.top, 30)
			.frame(maxWidth: .infinity)
			.disabled(self.model.disableSignUpButton)
			
			Spacer()
		}
		.padding()
	}
}

#if DEBUG
struct SignUpView_Previews: PreviewProvider {
	static var previews: some View {
		SignUpView(model: .init())
	}
}
#endif
