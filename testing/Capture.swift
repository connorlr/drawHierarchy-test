import Foundation
import UIKit
import SwiftUI

class Capture {
  static func capture<T: View>(swiftuiView: T) {
    let controller = UIHostingController(rootView: swiftuiView)
    if let view = controller.view {
      let pdfRenderer = UIGraphicsPDFRenderer()
      let pdfData = pdfRenderer.pdfData { context in
        context.beginPage()
        view.drawHierarchy(in: view.bounds, afterScreenUpdates: true)
      }
      print(pdfData.base64EncodedString())
    }
  }
}
