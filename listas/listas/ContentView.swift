//
//  ContentView.swift
//  listas
//
//  Created by MAC on 24/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationLink(destination: EmptyView {} ) 
        VStack{
        List {
            Text("I ❤️ Pet List").multilineTextAlignment(.center)
                .font(.headline)
        
            Image("5C0539CD-D63D-4A84-8F52-B35F8D07CD5F_4_5005_c").resizable()
                .clipShape(Circle())
                .frame(height: 250)
            Text("Pet").multilineTextAlignment(.center)
            ForEach(animalGroups) { animalGroup in
                Section(header: Text(animalGroup.groupName)) {
                    ForEach(animalGroup.animals) { animal in
                        Text(animal.name)
                        
                    }
                }
            }
    
            Button("see more"){
                
            }
          
        
            
            }
        
        
        }
    
    
    }

    
    
struct Animal: Identifiable {
    var id = UUID()
    var name : String
}
    struct AnimalGroup: Identifiable {
        var id = UUID()
        var groupName : String
        var animals : [Animal]
    }
    
    let animalGroups = [
        AnimalGroup(groupName: "Pets", animals: [
            Animal(name: "Dog"),
            Animal(name: "Cat"),
            Animal(name: "Parrot"),
            Animal(name: "Mouse")
        ]),
        AnimalGroup(groupName: "Farm", animals: [
            Animal(name: "Cow"),
            Animal(name: "Horse"),
            Animal(name: "Goat"),
            Animal(name: "Sheep"),
        ]),
        AnimalGroup(groupName: "Critters", animals: [
            Animal(name: "Firefly"),
            Animal(name: "Spider"),
            Animal(name: "Ant"),
            Animal(name: "Squirrel"),
        ])
    ]

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



}

