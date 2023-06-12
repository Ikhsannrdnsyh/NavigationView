//
//  ContentView.swift
//  NavigationView
//
//  Created by Mochamad Ikhsan Nurdiansyah on 12/06/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            firstScreen(image: "house.circle", text: "Home Screen", title: "Home")
            
        }
        
    }
}
struct firstScreen:View{
    let image: String
    let text: String
    let title: String
    
    var body: some View{
        VStack{
            Image(systemName: image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200,
                       height: 200,
                       alignment: .center)
                .padding()
            
            Text(text)
                .font(.system(size: 30, weight: .light, design: .default))
                .padding()
            
            NavigationLink(destination: SecondScreen(), label: {
                    ContinueButton()
                    
            }
            )
        }
        .navigationTitle(title)
        .navigationBarTitleDisplayMode(.inline)
        
    }
}


struct SecondScreen:View{
    var body: some View {
        VStack{
            Image(systemName: "person.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200,
                       height: 200,
                       alignment: .center)
                .padding()
            
            Text("Second Screen")
                .font(.system(size: 30, weight: .light, design: .default))
                .padding()
            
            
        }
        .navigationTitle("profile")
        .navigationBarTitleDisplayMode(.inline)
        
    }
        
    
}


struct ContinueButton: View{
    var body: some View{
        Text("Continue")
            .frame(width: 200, height: 50, alignment: .center)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
    }
}

struct backButton: View{
    var body: some View{
        Text("Back")
            .frame(width: 200, height: 50, alignment: .center)
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(8)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
