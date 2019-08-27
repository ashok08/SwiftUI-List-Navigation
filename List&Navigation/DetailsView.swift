//
//  DetailsView.swift
//  List&Navigation
//
//  Created by Ashok on 27/08/19.
//  Copyright © 2019 Ashok. All rights reserved.
//

import SwiftUI

struct DetailsView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var index: String
    var body: some View {
        NavigationView(){
            Image("A\(index)")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
        }
        .navigationBarItems(leading: Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }, label: { Image("back").foregroundColor(Color.white)}))
    }
    
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(index: "1")
    }
}
