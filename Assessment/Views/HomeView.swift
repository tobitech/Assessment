//
//  HomeView.swift
//  Assessment
//
//  Created by Oluwatobi Omotayo on 14/06/2023.
//

import SwiftUI

struct HomeView: View {
	var model: HomeViewModel
	
	init(model: HomeViewModel = .init()) {
		self.model = model
	}
	
	var body: some View {
		VStack {
			Text("Welcome!")
				.font(.largeTitle)
				.padding()
			
			ProfileItemView(title: "First name", value: self.model.userData?.name ?? "")
			ProfileItemView(title: "Username", value: self.model.userData?.username ?? "")
			ProfileItemView(title: "Email", value: self.model.userData?.email ?? "")
			ProfileItemView(title: "Phone", value: self.model.userData?.phone ?? "")
			
			Spacer()
		}
	}
}

#if DEBUG
struct HomeView_Previews: PreviewProvider {
	static var previews: some View {
		HomeView()
	}
}
#endif
