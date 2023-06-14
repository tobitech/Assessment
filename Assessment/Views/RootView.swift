//
//  RootView.swift
//  Assessment
//
//  Created by Oluwatobi Omotayo on 14/06/2023.
//

import SwiftUI

struct RootView: View {
	@ObservedObject var model: RootViewModel
	
	init(model: RootViewModel = .init()) {
		self.model = model
	}
	
	var body: some View {
		if let data = self.model.userData {
			HomeView(model: .init(userData: data))
		} else {
			SignUpView(model: self.model.signupModel)
		}
	}
}

#if DEBUG
struct RootView_Previews: PreviewProvider {
	static var previews: some View {
		RootView()
	}
}
#endif
