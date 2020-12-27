//
//  ViewController.swift
//  animation03
//
//  Created by 1 on 24.12.2020.
//

import UIKit

class ViewController: UIViewController {
    var myView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myView = UIView(frame: CGRect(
            x: (view.frame.size.width - 122)/2,
            y: (view.frame.size.height - 122)/2,
            width: 122,
            height: 122
        ))
        myView.backgroundColor = .blue
        view.addSubview(myView)
        animate(myView)
    }
    func animate(_ myView: UIView) {
        UIView.animate (withDuration: 4, animations: {
            myView.layer.cornerRadius = 61
        }, completion: { done in
            if done {
                UIView.animate(withDuration: 4, animations: {
                    myView.layer.cornerRadius = 0
                })
            }
        })
    }
}
