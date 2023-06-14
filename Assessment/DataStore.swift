//
//  DataStoreClient.swift
//  Assessment
//
//  Created by Oluwatobi Omotayo on 14/06/2023.
//

import Foundation

struct DataStore {
	var getUserData: () -> UserData?
	var saveUserData: (UserData) throws -> Void
	
	init(
		getUserData: @escaping () -> UserData?,
		saveUserData: @escaping (UserData) throws -> Void
	) {
		self.getUserData = getUserData
		self.saveUserData = saveUserData
	}
}

extension DataStore {
	static var live: Self {
		let defaults = UserDefaults.standard
		return Self(
			getUserData: {
				guard let data = defaults.data(forKey: userDataKey) else { return nil }
				do {
					let decoder = JSONDecoder()
					let userData = try decoder.decode(UserData.self, from: data)
					return userData
				} catch {
					return nil
				}
			},
			saveUserData: { data in
				let encoder = JSONEncoder()
				let encodedData = try encoder.encode(data)
				defaults.set(encodedData, forKey: userDataKey)
			}
		)
	}
}

fileprivate let userDataKey = "userDataKey"
