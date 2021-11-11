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
      // MARK: - HEADER
      
      Spacer()
      
      ZStack {
        
        CircleGroupView(ShapeColor: .gray, ShapyOpacity: 0.1)
        
        Image("character-2")
          .resizable()
          .scaledToFit()
        .padding()
      }
      
      // MARK: - CENTER
      
      Text("This time thats leads to mastery is dependent on the intensity of our focus.")
        .font(.title3)
        .fontWeight(.light)
        .foregroundColor(.secondary)
        .multilineTextAlignment(.center)
        .padding()
      
      
      // MARK: - FOOTER
      
      Spacer()
      
      Button(action: {
        isOnboardingViewActive = true
      }) {
        Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
          .imageScale(.large)
        Text("Restart")
          .font(.system(.title3, design: .rounded))
          .fontWeight(.bold)
      }//: BUTTON
      .buttonStyle(.borderedProminent)
      .buttonBorderShape(.capsule)
      .controlSize(.large)
    } //: VSTACK
  }
}

// MARK: - PREVIEW
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
