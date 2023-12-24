//
//  ContentView.swift
//  SwiftUIBottomSheet
//
//  Created by ChungTing on 2023/12/24.
//

import SwiftUI
import CoreData

struct BottomSheetView: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("Title")
                Text("This is a description of the some thing very long long long long, This is a description of the some thing very long long long long This is a description of the some thing very long long long long This is a description of the some thing very long long long long This is a description of the some thing very long long long long This is a description of the some thing very long long long long This is a description of the some thing very long long long long This is a description of the some thing very long long long long This is a description of the some thing very long long long long This is a description of the some thing very long long long long This is a description of the some thing very long long long long This is a description of the some thing very long long long long This is a description of the some thing very long long long long This is a description of the some thing very long long long long This is a description of the some thing very long long long long This is a description of the some thing very long long long long This is a description of the some thing very long long long long This is a description of the some thing very long long long long  This is a description of the some thing very long long long long This is a description of the some thing very long long long long This is a description of the some thing very long long long long This is a description of the some thing very long long long long")
            }
        }
    }
}

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>

    @State var showingBottomSheet = false
    var body: some View {
        VStack {
            Button("Tap") {
                showingBottomSheet.toggle()
            }
            .buttonStyle(.borderedProminent)
        }.padding()
        .sheet(isPresented: $showingBottomSheet) {
            BottomSheetView()
                .presentationDetents([.medium, .large])
                .padding(
                    EdgeInsets(
                        top: 20,
                        leading: 0,
                        bottom: 0,
                        trailing: 0
                    )
                )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
