//
//  StateAndBindingView.swift
//  PassingData
//
//  Created by Edward Kyles on 6/11/23.
//

import SwiftUI

struct StateAndBindingView: View {
    @State var change = false
    
    var body: some View {
        NavigationView {
            VStack {
                GlobeView(change: $change)
            }
            .navigationTitle("Globe")
        }

    }
}

struct GlobeView: View {

    @Binding var change: Bool
    var body: some View{
        VStack {
            Image(systemName: "globe")
                .resizable()
                .frame(width: 200, height: 200)
                .foregroundColor(.accentColor)
                .onTapGesture {
                    change.toggle()
                }
                .preferredColorScheme(change ? .dark: .light)
        }
        .padding()
    }
}

struct StateAndBindingView_Previews: PreviewProvider {
    static var previews: some View {
        StateAndBindingView()
    }
}
