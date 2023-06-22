//
//  UpdateItemView.swift
//  TodoList
//
//  Created by Edward Kyles on 6/17/23.
//

import SwiftUI

struct UpdateItemView: View {
    
    @State var title: String = ""
    @State var description: String = ""
    @Binding var present_sheet: Bool
    
    @ObservedObject var view_model: TodoListViewModel

    
    var body: some View {
        VStack {
            TextField("Title", text: $title)
            TextField("Description", text: $description)
            
            Spacer()
            Button() {
                if view_model.updateTodo {
                    view_model.updateSelectedTodo(title: title, description: description)
                } else {
                    view_model.addTodo(ToDo(title: title, description: description))
                }
                present_sheet.toggle()
            } label: {
                Text(view_model.updateTodo ? "Update" : "Add")
            }
        }
        .padding()
    }
}

//struct UpdateItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        UpdateItemView()
//    }
//}
