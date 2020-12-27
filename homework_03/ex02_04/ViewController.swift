//
//  ViewController.swift
//  animation04
//
//  Created by 1 on 24.12.2020.
//

import UIKit

class ViewController: UIViewController {
    var transparentView: UIView!
    var blackCircle: UIView!
    var redCircle: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        transparentView = UIView(frame: CGRect(
                                    x:(view.frame.size.width-200)/2,
                                    y:(view.frame.size.height-200)/2,
                                    width: 200,
                                    height: 200)
        )
        view.addSubview(transparentView)
        
        blackCircle = UIView(frame: CGRect(
                            x:(transparentView.frame.size.width-40)/2,
                            y:(transparentView.frame.size.height-10)/2,
                            width: 40,
                            height: 40)
        )
        blackCircle.backgroundColor = .black
        blackCircle.layer.cornerRadius = 20
        transparentView.addSubview(blackCircle)
        
        redCircle = UIView(frame: CGRect(
                            x:(transparentView.frame.size.width-40)/2,
                            y:(transparentView.frame.size.height-70)/2,
                            width: 40,
                            height: 40)
        )
        redCircle.backgroundColor = .red
        redCircle.layer.cornerRadius = 20
        transparentView.addSubview(redCircle)
        let button = UIButton(frame: CGRect(x: (view.frame.size.width - 50)/2, y: (view.frame.size.height-150), width: 50, height: 50))
        button.backgroundColor = .red
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Start", for: .normal)
        button.addTarget(self, action: #selector(animate), for: .touchUpInside)
        view.addSubview(button)
    }
    @objc func animate() {
        UIView.animate(withDuration: 3, animations: {
            self.transparentView.transform = CGAffineTransform(rotationAngle: .pi)
        }, completion: { done in
            if done {
                UIView.animate(withDuration: 3, animations: {
                    self.transparentView.transform = CGAffineTransform(rotationAngle: .pi * -2)
                })
            }
        })
    }
    
    
}

