//
//  ViewController.swift
//  animation2
//
//  Created by 1 on 23.12.2020.
//

import UIKit

class ViewController: UIViewController {
    var squareView: UIView!
    var circleView: UIView!
    
    let colorsForSquare: [UIColor] = [
                        .white,
                        .brown,
                        .darkGray,
                        ]
            let colorsForCircle: [UIColor] = [
                        .red,
                        .black,
                        .blue,
                        ]
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        squareView = UIView(frame: CGRect(
            x: (view.frame.size.width-200)/2,
            y: (view.frame.size.height-200)/2,
            width: 200,
            height: 200
        ))
        
        squareView.backgroundColor = .black
        view.addSubview(squareView)

        circleView = UIView(frame: CGRect(
            x: (view.frame.size.width-100)/2,
            y: (view.frame.size.height-100)/2,
            width: 100,
            height: 100
        ))
        
        circleView.backgroundColor = .white
        circleView.layer.cornerRadius = 50
        view.addSubview(circleView)
        animate()
    }
    
    func animate(){
        let timer = Timer.scheduledTimer(
            timeInterval: 0.4,
            target: self,
            selector: #selector(fireTimer),
            userInfo: nil,
            repeats: true)
            print("animate")
    }
    @objc func fireTimer(timer: Timer) {
        if colorsForSquare.count == index{
            timer.invalidate()
        } else {
            squareView.backgroundColor = colorsForSquare[index]
                    circleView.backgroundColor = colorsForCircle[index]
                    index += 1
        }
        
    }
}


