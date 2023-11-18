//
//  test1App.swift
//  test1
//
//  Created by Sergio Mascarpone on 17.11.23.
//

import SwiftUI

@main
struct test1App: App {
    var body: some Scene {
        DocumentGroup(newDocument: test1Document()) { file in
            ContentView(document: file.$document)
        }
    }
}
