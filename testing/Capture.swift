import Foundation
import UIKit

class Capture {
  static func capture() {
    if let rootView = UIApplication.shared.windows.first?.rootViewController?.view {
      let pdfRenderer = UIGraphicsPDFRenderer()
      pdfRenderer.pdfData {context in
        context.beginPage()
        rootView.drawHierarchy(in: rootView.bounds, afterScreenUpdates: true)
      }
    }
  }
}
