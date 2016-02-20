import Foundation
import UIKit
import Macaw

class FifthPageCustomView: MacawView {

    var roundedRect: RoundRect!
    
    required init?(coder aDecoder: NSCoder) {
        let screenSize: CGRect = UIScreen.mainScreen().bounds

        let rect = RoundRect(
            rect: Rect(x: Double(screenSize.width / 2) - 50, y: Double(screenSize.height / 2) - 50, w: 100, h: 100),
            rx: 5,
            ry: 5
        )
        
        let rectShape = Shape(
            form: rect,
            fill: Color.rgb(255, g: 0, b: 0)
        )
        
        self.roundedRect = rect
        super.init(node: rectShape, coder: aDecoder)
    }

    required init?(node: Node, coder aDecoder: NSCoder) {
        super.init(node: node, coder: aDecoder)
    }
}