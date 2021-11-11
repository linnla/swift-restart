//
//  ContentView.swift
//  Restart
//
//  Created by Laure Linn on 11/11/21.
//

import SwiftUI

struct ContentView: View {
  // MARK: - PROPERTY
  
  // When users first start the application, the very first screen they should see is the onboarding
  @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
  
  // MARK: - BODY
  
  var body: some View {
    ZStack {
      if isOnboardingViewActive {
        OnboardingView()
      } else {
        HomeView()
      }
    }
  }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
