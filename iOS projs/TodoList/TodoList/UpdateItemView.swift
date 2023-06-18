//
//  UpdateItemView.swift
//  TodoList
//
//  Created by Edward Kyles on 6/17/23.
//

import SwiftUI

struct UpdateItemView: View {
    @State var description: String = ""
    
    @ObservedObject var view_model: TodoListViewModel
    @Binding var old_todo: ToDo
    @Binding var present_sheet: Bool
    
    var body: some View {
        VStack {
            TextField("Description", text: $description)
            Spacer()
            Button() {
                view_model.updateTodo(old_todo, description)
                present_sheet.toggle()
            } label: {
                Text("Update")
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
