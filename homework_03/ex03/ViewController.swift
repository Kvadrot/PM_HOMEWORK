//
//  ViewController.swift
//  zdz03_ex03
//
//  Created by 1 on 24.12.2020.
//

import UIKit

class ViewController: UIViewController {
    var circleView: UIView!
    var color: [UIColor] = [
        .yellow,
        .green,
        .orange,
        .blue,
        .red,
        .purple
        
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        circleView = UIView(frame: CGRect(
                                x: (view.frame.size.width-40)/2,
                                y: (view.frame.size.height-40)/2,
                                width: 40,
                                height: 40)
        )
        circleView.layer.cornerRadius = 20
        circleView.backgroundColor = .red
        view.addSubview(circleView)

        let singleTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(someTap))
        singleTapRecognizer.numberOfTapsRequired = 1
        singleTapRecognizer.numberOfTouchesRequired = 1
        view.addGestureRecognizer(singleTapRecognizer)

        let doubleTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(someTap))
        doubleTapRecognizer.numberOfTapsRequired = 2
        doubleTapRecognizer.numberOfTouchesRequired = 1
        view.addGestureRecognizer(doubleTapRecognizer)

        let swipeRightRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(someSwipe))
        swipeRightRecognizer.numberOfTouchesRequired = 1
        swipeRightRecognizer.direction = .right
        view.addGestureRecognizer(swipeRightRecognizer)

        let swipeLeftRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(someSwipe))
        swipeLeftRecognizer.numberOfTouchesRequired = 1
        swipeLeftRecognizer.direction = .left
        view.addGestureRecognizer(swipeLeftRecognizer)

        let swipeUpRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(someSwipe))
        swipeUpRecognizer.numberOfTouchesRequired = 1
        swipeUpRecognizer.direction = .up
        view.addGestureRecognizer(swipeUpRecognizer)

        let swipeDownRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(someSwipe))
        swipeDownRecognizer.numberOfTouchesRequired = 1
        swipeDownRecognizer.direction = .down
        view.addGestureRecognizer(swipeDownRecognizer)

    }

    @objc func someTap(tap: UITapGestureRecognizer?) {
        if let tapped = tap {
            switch tapped.numberOfTapsRequired {
                    case 1:
                        UIView.animate(withDuration: 1.5, animations: {
                                self.circleView.backgroundColor = self.color[4]
                                self.circleView.frame = CGRect(
                                    x: (self.view.frame.size.width-40)/2,
                                    y: (self.view.frame.size.height-40)/2,
                                    width: 40,
                                    height: 40)
                            })
                    case 2:
                        UIView.animate(withDuration: 1.5, animations: {
                                self.circleView.backgroundColor = self.color[4]
                                self.circleView.frame = CGRect(
                                    x: (self.view.frame.size.width-40)/2,
                                    y: (self.view.frame.size.height-40)/2,
                                    width: 40,
                                    height: 40)

                            })
                        print("double tap")
                    default:
                        break
                    }
        }
    }

    @objc func someSwipe(swipe: UISwipeGestureRecognizer?, circleView _: UIView) {

        if let gestureGesture = swipe {
            switch gestureGesture.direction {

            case UISwipeGestureRecognizer.Direction.right:

                UIView.animate(withDuration: 1.5, animations: {
                    self.circleView.backgroundColor = self.color[0]
                    self.circleView.frame = CGRect(
                        x: self.circleView.frame.origin.x+30,
                        y: self.circleView.frame.origin.y,
                        width: 40, height: 40)
                })

            case UISwipeGestureRecognizer.Direction.left:

                UIView.animate(withDuration: 1.5, animations: {
                    self.circleView.backgroundColor = self.color[1]
                    self.circleView.frame = CGRect(
                        x: self.circleView.frame.origin.x-30,
                        y: self.circleView.frame.origin.y,
                        width: 40, height: 40)
                })

            case UISwipeGestureRecognizer.Direction.up:

                UIView.animate(withDuration: 1.5, animations: {
                    self.circleView.backgroundColor = self.color[2]
                    self.circleView.frame = CGRect(
                        x: self.circleView.frame.origin.x,
                        y: self.circleView.frame.origin.y-30,
                        width: 40, height: 40)
                })
            case UISwipeGestureRecognizer.Direction.down:

                    UIView.animate(withDuration: 1.5, animations: {
                    self.circleView.backgroundColor = self.color[3]
                    self.circleView.frame = CGRect(
                        x: self.circleView.frame.origin.x,
                        y: self.circleView.frame.origin.y+30,
                        width: 40, height: 40)
                })
            default: break
            }
        } else {
            print("unwrapping failed, I have no Idea why, fix it")
        }
        print("current circleView.frame = \(circleView.frame)")
    }
}

