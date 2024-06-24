//
//  MovePageVC.swift
//  PageMove
//
//  Created by adam on 6/21/24.
//

import UIKit

class MovePageVC: UIViewController {

    @IBOutlet weak var popOrDissmissButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if self.navigationController == nil {
            self.popOrDissmissButton.setTitle("Dismiss", for: .normal)
        } else {
            self.popOrDissmissButton.setTitle("Pop", for: .normal)
        }
    }
    
    @IBAction func popOrDismissButtonDidTapped(_ sender: UIButton) {
        self.fadeDismissVC()
    }
    
}
