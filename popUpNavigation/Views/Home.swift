//
//  Home.swift
//  popUpNavigation
//
//  Created by Hamideh Sheikh on 5/29/22.
//

import SwiftUI

struct Home: View {
    @State var showPopUp: Bool = false
    
    var body: some View {
        NavigationView {
            Button("Show PopUp") {
                withAnimation {
                    showPopUp.toggle()
                }
            }
            .navigationTitle("Custom PopUp")
            .PopUpNavigationView(horizontalPadding: 40, show: $showPopUp) {
                
                // MARK: popUp Content with navigation
                List {
                    ForEach(tasks) { task in
                        NavigationLink(task.TaskTitle, destination: {
                            Text(task.TaskDescription)
                                .navigationTitle("Destination")
                        })
                    }
                }
                .navigationTitle("PopUp Navigation")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            
                        } label: {
                            Image(systemName: "plus")
                        }
                    }
                    
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button("Close") {
                            showPopUp.toggle()
                        }
                    }
                }
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
