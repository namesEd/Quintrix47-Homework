//
//  ContentView.swift
//  TodoList
//
//  Created by Edward Kyles on 6/17/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = TodoListViewModel()
    @State var presentSheet = false
    @State var presentUpdate = false
    
    var body: some View {
        NavigationView(){
            VStack {
                List(viewModel.todos, id: \.self) { item in
                    NavigationLink(destination: {
                        VStack {
                            Text(item.description)
                        }
                        .navigationBarItems(trailing: Button(action: {
                            presentUpdate.toggle()
                        }, label: {
                            Image(systemName: "elipsis.circle")
                        }))
                        .sheet(isPresented: $presentUpdate) {
                            UpdateItemView(view_model: viewModel, present_sheet: $presentUpdate)
                        }
                    })
                    { HStack {
                        Text(item.title)
                    }
                    }
                }
            }
        }
        .navigationTitle("Todo's")
        .navigationBarItems(trailing: Button(action: {
            presentSheet.toggle()
        }, label: {
            Image(systemName: "plus")
        }))
        .sheet(isPresented: $presentSheet) {
            AddItemView(presentSheet: $presentSheet,
                        viewModel: viewModel)
        }
    }
}
        
        //        struct ContentView_Previews: PreviewProvider {
        //            static var previews: some View {
        //                ContentView()
        //            }
        //        }
