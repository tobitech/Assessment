//
//  HomeViewModel.swift
//  Assessment
//
//  Created by Oluwatobi Omotayo on 14/06/2023.
//

import Foundation

class HomeViewModel: ObservableObject {
	var userData: UserData?
	
	init(
		userData: UserData? = nil
	) {
		self.userData = userData
	}
}
