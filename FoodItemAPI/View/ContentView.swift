//
//  ContentView.swift
//  FoodItemAPI
//
//  Created by Ben Freeman on 2021-10-12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        AsyncImage(url: URL(string: "https://foodish-api.herokuapp.com/images/samosa/samosa20.jpg"))

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
