//
//  ContentView.swift
//  XcodeXplore
//
//  Created by Edward Kyles on 6/9/23.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.green, . gray, .white], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea(.all)
            
            VStack (spacing: 20){
                Text("Friday, June 9th")
                    .font(.system(size: 30).bold())
                    .foregroundColor(.white)
                Text("17:16")
                    .font(.system(size: 120).bold())
                    .foregroundColor(.white)
                Spacer()
                
                HStack(alignment: .bottom, spacing: 220) {
                    Button{
                        print("Flashlight")
                    } label: {
                        Image(systemName: "flashlight.on.fill")
                            .resizable()
                            .foregroundColor(.white)
                            .frame(width: 30, height: 50)
                            
                    }
                    
                    Button{
                        print("camera")
                    } label: {
                        Image(systemName: "camera.fill")
                            .resizable()
                            .foregroundColor(.white)
                            .frame(width: 50, height: 45)
                    }
                }
                .padding()
            }
            .padding(50)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
