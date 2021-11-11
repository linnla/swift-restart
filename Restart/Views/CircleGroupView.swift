//
//  CircleGroupView.swift
//  Restart
//
//  Created by Laure Linn on 11/11/21.
//  Copyright © 2021 Cloud Raiders Inc. All rights reserved.
//

import SwiftUI

struct CircleGroupView: View {
  // MARK: - PROPERTY.
  
  @State var ShapeColor: Color
  @State var ShapyOpacity: Double
  
  // MARK: BODY
  
  var body: some View {
    ZStack {
      Circle()
        .stroke(ShapeColor.opacity(ShapyOpacity), lineWidth: 40)
        .frame(width: 260, height: 260, alignment: .center)
      Circle()
        .stroke(ShapeColor.opacity(ShapyOpacity), lineWidth: 80)
        .frame(width: 260, height: 260, alignment: .center)
    } //: ZSTACK
  }
}

// MARK: PREVIEW

struct CircleGroupView_Previews: PreviewProvider {
  static var previews: some View {
    ZStack {
      Color("ColorBlue")
        .ignoresSafeArea(.all, edges: .all)
      CircleGroupView(ShapeColor: .white, ShapyOpacity: 0.2)
    }
  }
}
