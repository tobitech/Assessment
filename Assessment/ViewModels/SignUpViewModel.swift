//
//  SignUpViewModel.swift
//  Assessment
//
//  Created by Oluwatobi Omotayo on 14/06/2023.
//

import SwiftUI

class SignUpViewModel: ObservableObject {
	var dataStore: DataStore
	
	@Published var disableSignUpButton: Bool
	
	@Published var name: String {
		didSet {
			self.validateForm()
		}
	}
	@Published var username: String {
		didSet {
			self.validateForm()
		}
	}
	@Published var email: String {
		didSet {
			self.validateForm()
		}
	}
	@Published var phone: String {
		didSet {
			self.validateForm()
		}
	}
	@Published var password: String {
		didSet {
			self.validateForm()
		}
	}
	
	init(
		dataStore: DataStore = .live,
		disableSignUpButton: Bool = true,
		name: String = "",
		username: String = "",
		email: String = "",
		phone: String = "",
		password: String = ""
	) {
		self.dataStore = dataStore
		self.disableSignUpButton = disableSignUpButton
		self.name = name
		self.username = username
		self.email = email
		self.phone = phone
		self.password = password
	}
	
	func signUp() {
		do {
			let data = UserData(
				name: self.name,
				username: self.username,
				email: self.email,
				phone: self.phone,
				password: self.password
			)
			try self.dataStore.saveUserData(data)
		} catch {
			print(error.localizedDescription)
		}
	}
	
	private func validateForm() {
		let isFormValid = !self.name.isEmpty
		&& !self.username.isEmpty
		&& !self.email.isEmpty
		&& !self.phone.isEmpty
		&& !self.password.isEmpty
		
		self.disableSignUpButton = !isFormValid
	}
}
