import UIKit
import GLKit
import QuartzCore
import OpenGLES

class ViewController: UIViewController, GLKViewDelegate {

    var glView: GLKView!

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor(patternImage: UIImage(named: "check")!)

        glView = GLKView(frame: view.bounds, context: EAGLContext(API: .OpenGLES2))
        glView.layer.opaque = false
        glView.delegate = self
        view.addSubview(glView)

        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: "toggleOn"))
    }

    func toggleOn() {
        glView.hidden = !glView.hidden
    }

    func glkView(view: GLKView, drawInRect rect: CGRect) {
        glClearColor(1, 0, 0, 0.5)
        glClear(GLbitfield(GL_COLOR_BUFFER_BIT))
    }

}

