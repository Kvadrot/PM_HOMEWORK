//
//  ViewController.swift
//  ex04
//
//  Created by 1 on 27.12.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var giveMeSomeDetails: UIButton!

    @IBOutlet weak var football: UIImageView!

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {

        super.viewDidLoad()
        giveMeSomeDetails.layer.cornerRadius = 8
        football.layer.cornerRadius = 116
        football.backgroundColor = .blue

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var destinationVC: MoreDetailsViewController = segue.destination as! MoreDetailsViewController

        destinationVC.varForLabelText = textField.text!
    }


}

