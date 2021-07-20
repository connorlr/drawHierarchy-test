import SwiftUI

enum PickerEnum: String, CaseIterable, Identifiable {
  case first
  case second
  case third

  var id: String { self.rawValue }
}

struct ContentView: View {
  @State private var input1 = ""
  @State private var input2 = ""
  @State private var password: String = ""
  @State private var toggle = false
  @State private var pickerOption: PickerEnum = .first

  var body: some View {
    let foo = Section {
      TextField("input1", text: $input1)
      Toggle("toggle", isOn: $toggle)
      Picker("picker", selection: $pickerOption) {
        Text("first").tag(PickerEnum.first)
        Text("second").tag(PickerEnum.second)
        Text("third").tag(PickerEnum.third)
      }
      TextField("input1", text: $input1)
      Toggle("toggle", isOn: $toggle)
      Picker("picker", selection: $pickerOption) {
        Text("first").tag(PickerEnum.first)
        Text("second").tag(PickerEnum.second)
        Text("third").tag(PickerEnum.third)
      }
      TextField("input1", text: $input1)
      Toggle("toggle", isOn: $toggle)
      Picker("picker", selection: $pickerOption) {
        Text("first").tag(PickerEnum.first)
        Text("second").tag(PickerEnum.second)
        Text("third").tag(PickerEnum.third)
      }
    }
    NavigationView {
      Form {
        foo
        TextField("input2", text: $input2)
        SecureField("Password", text: $password)
        Button(action: {
          Capture.capture(swiftuiView: foo)
        }, label: {
          Text("capture")
        })
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
