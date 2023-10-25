//
//  ContentView.swift
//  ARDemo
//
//  Created by Azhar on 25/10/23.
//

import SwiftUI
import WebKit

struct ContentView: View {
    @State private var showWebView = false
    var body: some View {
        VStack {
            Button {
                showWebView.toggle()
            } label: {
                Text("Launch AR")
            }
            .sheet(isPresented: $showWebView) {
                WebView(url: URL(string: "https://app.aryel.io/798f1555-eb97-42a2-9f2d-e477fb6b4210/veepee-ar")!)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
 
struct WebView: UIViewRepresentable {
 
    var url: URL
 
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
 
    func updateUIView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        webView.load(request)
    }
}
