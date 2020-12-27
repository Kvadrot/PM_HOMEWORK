//
//  ViewController.swift
//  zdz03_ex02
//
//  Created by 1 on 22.12.2020.
//

import UIKit

class ViewController: UIViewController {

    let myView = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        myView.backgroundColor = .yellow
        myView.center = view.center
        view.addSubview(myView)

        let button = UIButton(frame: CGRect(x: (view.frame.size.width-50)/2, y: (view.frame.size.height-100), width: 50, height: 50))
        button.backgroundColor = .red
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Start", for: .normal)
        button.addTarget(self, action: #selector(animate), for: .touchUpInside)
        view.addSubview(button)
    }

    @objc func animate() {
        UIView.animate(withDuration: 3,  animations: {
            self.myView.frame = CGRect(x: 0, y: 0, width: 150, height: 150 )
            self.myView.center = self.view.center
        }, completion: { done in
            if done {
                self.myView.frame = CGRect(x: 0, y: 0, width: 50, height: 50 )
                self.myView.center = self.view.center
            }
        })
    }
    
}
