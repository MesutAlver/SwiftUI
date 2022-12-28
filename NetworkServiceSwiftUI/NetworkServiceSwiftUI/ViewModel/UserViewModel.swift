//
//  UserViewModel.swift
//  NetworkServiceSwiftUI
//
//  Created by mesut alver on 22.12.2022.
//

import Foundation


class UserListViewModel : ObservableObject {
    
    @Published var userList = [UserViewModel]()
    
    let webservice = WebService()
    
    func downloadUsers() async {
        
        do {
            let users =  try await webservice.download(Constants.Urls.usersExtension)
            DispatchQueue.main.async {
                self.userList = users.map(UserViewModel.init)
            }
        } catch {
            print(error)
        }
        
        
    }
    
}



struct UserViewModel {
    
    let user : User
    
    var id : Int {
        user.id
    }
    
    var name : String {
        user.name
    }
    
    var username : String {
        user.username
    }
    
    var emial : String {
        user.email
    }
    
    
}
