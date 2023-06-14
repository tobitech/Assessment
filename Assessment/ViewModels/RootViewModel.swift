//
//  RootViewModel.swift
//  Assessment
//
//  Created by Oluwatobi Omotayo on 14/06/2023.
//

import Foundation

class RootViewModel {
	var dataStore: DataStore
	var userData: UserData?
	
	init(
		dataStore: DataStore = .live
	) {
		self.dataStore = dataStore
	}
	
	private func getUser() {
		self.userData = self.dataStore.getUserData()
	}
}
