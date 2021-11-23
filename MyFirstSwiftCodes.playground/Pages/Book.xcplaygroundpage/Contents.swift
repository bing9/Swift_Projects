import UIKit

func imageOfSize(_ size: CGSize, _ whatToDraw:() -> () ) -> UIImage {
    UIGraphicsBeginImageContextWithOptions(size, false, 0)
    whatToDraw()
    let result = UIGraphicsGetImageFromCurrentImageContext()!
    UIGraphicsEndImageContext()
    return result
}

func makeRoundedRectangleMaker(_ sz:CGSize) -> () -> UIImage {
    func f () -> UIImage {
        let im = imageOfSize(sz) {
            let p = UIBezierPath(roundedRect: CGRect(origin: CGPoint.zero, size: sz),
                                 cornerRadius: 8
                            
            )
            p.stroke()
        }
        return im
    }
    return f
}

let maker = makeRoundedRectangleMaker(CGSize(width: 45, height: 20))
// maker()
print(maker())
