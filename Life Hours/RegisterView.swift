//
//  RegisterView.swift
//  Life Hours
//
//  Created by Oncu Can on 9.01.2023.
//

import SwiftUI

struct RegisterView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        Form {
            Section {
                TextField("Email", text: $email)
                SecureField("Password", text: $password)
            }
            Button(action: register) {
                Text("Register")
            }
        }
    }
    
    func register() {
    }
}


struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
