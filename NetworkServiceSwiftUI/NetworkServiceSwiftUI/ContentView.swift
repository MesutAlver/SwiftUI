//
//  ContentView.swift
//  NetworkServiceSwiftUI
//
//  Created by mesut alver on 22.12.2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var userListViewModel : UserListViewModel
    init() {
        self.userListViewModel = UserListViewModel()
    }
    var body: some View {
        
        List(userListViewModel.userList,id: \.id) { user in
            VStack {
                Text(user.name)
            }
        }.task {
           await userListViewModel.downloadUsers()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
