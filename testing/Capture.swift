import Foundation
import UIKit

class Capture {
  static func capture() {
    if let rootView = UIApplication.shared.windows.first?.rootViewController?.view {
      let pdfRenderer = UIGraphicsPDFRenderer()
      let childView = rootView.subviews.first!
      childView.isHidden = true
      pdfRenderer.pdfData {context in
        context.beginPage()
        rootView.drawHierarchy(in: rootView.bounds, afterScreenUpdates: true)
      }
      childView.isHidden = false
    }
  }
}
