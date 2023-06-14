//
//  DataStoreClient.swift
//  Assessment
//
//  Created by Oluwatobi Omotayo on 14/06/2023.
//

import Foundation

struct DataStoreClient {
	var signUp: () -> ()
	
	init(signUp: @escaping () -> Void) {
		self.signUp = signUp
	}
}
