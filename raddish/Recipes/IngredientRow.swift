//
//  IngredientRow.swift
//  raddish
//
//  Created by Mira Mookerjee on 11/19/21.
//

import SwiftUI

struct IngredientRow: View {
    var ingredient : String
  var measure: String
    var body: some View {
      HStack {
        Text(measure)
        Text(ingredient)
        .frame(maxWidth: .infinity, alignment: .leading)
      }
      .border(Color.black)
      .cornerRadius(5)
      .padding()
    }
}



