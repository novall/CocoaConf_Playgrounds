// Playground - noun: a place where people can play

import UIKit

// Views

let frame = CGRect(x: 0, y: 0, width: 100, height: 100)

var squareView = UIView(frame: frame)

var smallSquare = UIView (frame: CGRectMake(10, 10, 80, 80))

smallSquare.backgroundColor = UIColor.blueColor()
squareView.backgroundColor = UIColor.orangeColor()

squareView

squareView.addSubview(smallSquare)
