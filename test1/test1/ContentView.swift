//
//  ContentView.swift
//  test1
//
//  Created by Sergio Mascarpone on 17.11.23.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: test1Document

    var body: some View {
        TextEditor(text: $document.text)
    }
}

#Preview {
    ContentView(document: .constant(test1Document()))
}
