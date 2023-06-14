//
//  SignUpView.swift
//  Assessment
//
//  Created by Oluwatobi Omotayo on 14/06/2023.
//

import SwiftUI

struct SignUpView: View {
	var body: some View {
		VStack(spacing: 0) {
			InputField(prompt: "First name", text: .constant(""))
			InputField(prompt: "Username", text: .constant(""))
			InputField(prompt: "Email", text: .constant(""))
			InputField(prompt: "Phone", text: .constant(""))
			
			SecureField("Password", text: .constant(""))
				.padding(10)
			Divider()
			
			Button(
				action: {
					//
				},
				label: {
					Text("Sign Up")
						.fontWeight(.medium)
				})
			.buttonStyle(.borderedProminent)
			.controlSize(.large)
			.padding(.top, 30)
			.frame(maxWidth: .infinity)
			
			Spacer()
		}
		.padding()
		.navigationTitle("Sign Up")
	}
}

struct SignUpView_Previews: PreviewProvider {
	static var previews: some View {
		NavigationView {
			SignUpView()
		}
	}
}
