//
//  AddItemView.swift
//  TodoList
//
//  Created by Edward Kyles on 6/17/23.
//

import SwiftUI
struct AddItemView: View {
    
    @State var title: String = ""
    @State var description: String = ""
    @Binding var presentSheet: Bool
    @ObservedObject var viewModel: TodoListViewModel
    
    
    var body: some View {
        VStack{
            TextField("Title", text: $title)
            TextField("Description", text: $description)
            
            Spacer()
            Button {
                viewModel.addTodo(ToDo(title:  title, description: description))
                presentSheet.toggle()
            } label: {
                Text ("Add")
            }
        }
        .padding()
    }
}

//struct AddItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        AddItemView()
//    }
//}
