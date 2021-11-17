//
//  DayOfWeekView.swift
//  raddish
//
//  Created by Mira Mookerjee on 11/9/21.
//

import SwiftUI

struct RecipeInMealPlanView: View {
    var i: MealItem
    @State var showingSheet: Bool
    @State var showingDetailSheet: Bool
    @ObservedObject var viewModel: ViewModel
  
    var body: some View {
      VStack {
        Button {
          showingDetailSheet.toggle()
        }
        label: {
          AsyncImage(url: URL(string: i.displayimageURL())!,
                     placeholder: { Text("Loading...") })
            .frame(width: 107, height: 115)
            .cornerRadius(15)
          }
        .sheet(isPresented: $showingDetailSheet) {
          RecipeDetailsView(recipe: Recipe(strMeal: i.displayName(), strInstructions: "", strMealThumb: i.displayimageURL()), viewModel: viewModel)
      }
        //Button(Text("Delete"), action: viewModel.deleteMealItem(i))
        Text(i.displayName())
      }
    }
}
