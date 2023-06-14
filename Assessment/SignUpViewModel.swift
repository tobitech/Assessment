//
//  SignUpViewModel.swift
//  Assessment
//
//  Created by Oluwatobi Omotayo on 14/06/2023.
//

import SwiftUI

class SignUpViewModel: ObservableObject {
	@Published var name: String
	@Published var username: String
	@Published var email: String
	@Published var phone: String
	@Published var password: String
	
	init(
		name: String,
		username: String,
		email: String,
		phone: String,
		password: String
	) {
		self.name = name
		self.username = username
		self.email = email
		self.phone = phone
		self.password = password
	}
}
