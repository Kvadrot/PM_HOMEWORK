//
//  MoreDetailsViewController.swift
//  ex04
//
//  Created by 1 on 27.12.2020.
//

import UIKit

class MoreDetailsViewController: UIViewController {

    @IBOutlet weak var happyFace: UIImageView!
    
    @IBOutlet weak var labelUserName: UILabel!
    var varForLabelText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        happyFace.layer.cornerRadius = happyFace.frame.size.width/2
        labelUserName.text = varForLabelText
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
