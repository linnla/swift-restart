//
//  HomeView.swift
//  Restart
//
//  Created by Laure Linn on 11/11/21.
//  Copyright © 2021 Cloud Raiders Inc. All rights reserved.
//

import SwiftUI

struct HomeView: View {
  // MARK: - PROPERTY
  
  @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
  
  // MARK: - BODY
  
  var body: some View {
    VStack(spacing: 20){
      Text("Home")
        .font(.largeTitle)
      
      Button(action: {
        isOnboardingViewActive = true
      }) {
        Text("Restart")
      }
    } //: VSTACK
  }
}

// MARK: - PREVIEW
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
