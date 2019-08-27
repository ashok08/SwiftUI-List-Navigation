//
//  ContentView.swift
//  List&Navigation
//
//  Created by Ashok on 27/08/19.
//  Copyright © 2019 Ashok. All rights reserved.
//

import SwiftUI

struct Movies: Identifiable{
    var id  = UUID()
    var name = String()
    var image = String()
}

struct ContentView: View {
    
    let movies: [Movies] = [
        Movies(name: "The Lion King (2019)", image: "1"),
        Movies(name: "Aladdin (2019)", image: "2"),
        Movies(name: "The Avengers : End game (2019)", image: "3")]
    
    var body: some View {
        NavigationView {
            List(movies) { movie in
                NavigationLink(destination: DetailsView(index: movie.image)) {
                    VStack(alignment: .leading){
                        Image(movie.image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(10)
                        Text(movie.name)
                            .font(.system(size: 15))
                    }
                }
            }
            .navigationBarTitle(Text("Movies").foregroundColor(Color.black))
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
