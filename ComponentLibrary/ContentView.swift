//
//  ContentView.swift
//  ComponentLibrary
//
//  Created by mayur patel on 12/03/2024.
//

import SwiftUI
import SwiftData

// Models

struct Components: Identifiable, Hashable {
    var id = UUID()
    let level: String
    let image: String
}

struct ComponentName: Identifiable, Hashable {
    var id = UUID()
    let name: String
    let image: String
}

// View

struct ContentView: View {
    
    @State private var toggleMenu = false
    
    @State private var searchTerm = ""
    

    let components: [Components] = [
        .init(level: "Button", image: "button.horizontal"),
        .init(level: "List", image: "list.bullet"),
        .init(level: "Dropdown", image: "chevron.down"),
        .init(level: "Checkbox", image: "checkmark.square.fill"),
        .init(level: "Switch", image: "switch.2"),
        .init(level: "Stepper", image: "plus.forwardslash.minus"),
        .init(level: "Sliders", image: "slider.horizontal.3"),
        .init(level: "Links", image: "link"),
    ]

    let componentName: [ComponentName] = [
        .init(name: "Button", image: "button.programmable"),
        .init(name: "Charts", image: "chart.xyaxis.line"),
        .init(name: "Bottom Sheet", image: "chevron.up"),
        .init(name: "Combobox", image: "arrowtriangle.down.square"),
        .init(name: "Input Fields", image: "rectangle.and.pencil.and.ellipsis"),
        .init(name: "Progress Bar", image: "arrow.triangle.2.circlepath.circle"),
        .init(name: "Table", image: "tablecells"),
        .init(name: "Date Picker", image: "calendar.circle"),
    ]
    
    var filterEasyComponents: [Components] {
        searchTerm.isEmpty ? components: components.filter { $0.level.localizedCaseInsensitiveContains(searchTerm) }
    }
    
    var filterAdvComponents: [ComponentName] {
        searchTerm.isEmpty ? componentName: componentName.filter { $0.name.localizedCaseInsensitiveContains(searchTerm) }
    }

    var body: some View {
        ZStack {
            NavigationStack {
                List {
                    Section(header: Text("Easy")
                        .foregroundColor(Color.black)) {
                        ForEach(filterEasyComponents) { component in
                            NavigationLink(destination: detailedView(for: component)) {
                                Image(systemName: component.image)
                                Text(component.level)
                            }
                        }
                    }
                    Section(header: Text("Advanced")
                        .foregroundColor(Color.black)) {
                        ForEach(filterAdvComponents) { componentAdv in
                            NavigationLink(destination: Text(componentAdv.name)) {
                                Image(systemName: componentAdv.image)
                                Text(componentAdv.name)
                            }
                        }
                    }
                }
                .navigationTitle("Components")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button(action: {
                            toggleMenu.toggle()
                        }, label: {
                            Image(systemName: "line.3.horizontal")
                        })
                    }
                }
                .searchable(text: $searchTerm, prompt: "Search Component")
            }
            
            Menu(isShowing: $toggleMenu)
        }
    }
    func detailedView(for component: Components) -> some View {
        switch component.level {
        case "Button":
            return AnyView(ButtonView())
        case "List":
            return AnyView(ListsView())
        case "Dropdown":
            return AnyView(Dropdown())
        case "Checkbox":
            return AnyView(Checkbox())
        case "Switch":
            return AnyView(Switch())
        case "Stepper":
            return AnyView(StepperView())
        case "Sliders":
            return AnyView(sliders())
        case "Links":
            return AnyView(Links())
        default:
            return AnyView(EmptyView())
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
