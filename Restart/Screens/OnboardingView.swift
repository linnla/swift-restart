//
//  OnboardingView.swift
//  Restart
//
//  Created by Laure Linn on 11/11/21.
//  Copyright © 2021 Cloud Raiders Inc. All rights reserved.
//

import SwiftUI

struct OnboardingView: View {
  // MARK: - PROPERTY
  
  @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
  
  // MARK: - BODY
  
  var body: some View {
    VStack(spacing: 20){
      Text("Onboarding")
        .font(.largeTitle)
      
      Button(action: {
        isOnboardingViewActive = false
      }) {
        Text("Start")
      }
    } //: VSTACK
  }
}

// MARK: - PREVIEW

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
