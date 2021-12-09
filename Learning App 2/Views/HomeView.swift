//
//  ContentView.swift
//  Learning App 2
//
//  Created by PM JavaScript - Ja'kobe Stumon on 12/3/21.
//

import SwiftUI

struct HomeView: View
{
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View
    {
        NavigationView
        {
            VStack (alignment: .leading)
            {
                Text("What do you want to do today")
                    .padding(.leading, 20)
                
                ScrollView
                {
        
                    LazyVStack
                    {
                
                        ForEach(model.modules)
                        { module in
                    
                            VStack (spacing:20)
                            {
                                // Learning Card
                                HomeViewRow(image: module.content.image, title: "Learn\(module.category)", description: module.content.description, count: "\(module.content.lessons.count) Lessons", time: module.content.time)
                        
                        
                                // Test card
                                HomeViewRow(image: module.test.image, title: "\(module.category)Test", description: module.test.description, count: "\(module.test.questions.count) Lessons", time: module.test.time)
                                
                            }//end VStack
                           
                            
                        }//end ForEach
           
                    }//end LazyVStack
                    .padding()

                }//end ScrollView
                
            }//end VStack
            .navigationTitle("Get started")
            
        }//end NavView
        
       
    
        
    }//end body
    
}//end HomeView

    

struct ContentView_Previews: PreviewProvider
{
    static var previews: some View
    {
        HomeView()
            .environmentObject(ContentModel())
    }
}

