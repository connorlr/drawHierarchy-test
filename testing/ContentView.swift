import SwiftUI

struct ContentView: View {
  @State private var input1 = ""
  @State private var input2 = ""
  @State private var password: String = ""

  var body: some View {
    VStack {
      Form {
        TextField("input1", text: $input1)
        TextField("input2", text: $input2)
        SecureField("Password", text: $password)
        Button(action: {
          Capture.capture()
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
