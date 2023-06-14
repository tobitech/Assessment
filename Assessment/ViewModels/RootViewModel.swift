//
//  RootViewModel.swift
//  Assessment
//
//  Created by Oluwatobi Omotayo on 14/06/2023.
//

import Foundation

class RootViewModel: ObservableObject {
	var dataStore: DataStore
	@Published var userData: UserData?
	
	var homeModel: HomeViewModel
	var signupModel: SignUpViewModel
	
	init(
		dataStore: DataStore = .live,
		userData: UserData? = nil
	) {
		self.dataStore = dataStore
		self.homeModel = HomeViewModel()
		self.signupModel = SignUpViewModel()
		self.userData = userData
		
		self.getUser()
		
		self.signupModel.signupSuccessful = {[weak self] in
			self?.getUser()
		}
	}
	
	private func getUser() {
		self.userData = self.dataStore.getUserData()
	}
}
