//
//  HomeViewModel.swift
//  Assessment
//
//  Created by Oluwatobi Omotayo on 14/06/2023.
//

import Foundation

class HomeViewModel: ObservableObject {
	var dataStore: DataStore
	@Published var userData: UserData?
	
	init(
		dataStore: DataStore = .live,
		userData: UserData? = nil
	) {
		self.dataStore = dataStore
		self.userData = userData
	}
	
	func loadUserData() {
		self.userData = self.dataStore.getUserData()
	}
}
