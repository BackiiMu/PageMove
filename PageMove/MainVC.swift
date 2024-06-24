//
//  ViewController.swift
//  PageMove
//
//  Created by adam on 6/21/24.
//

import UIKit

class MainVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func pushButtonDidTapped(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MovePageVC")
        self.fadePushVC(viewController: vc)
    }
    
    @IBAction func presentButtonDidTapped(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MovePageVC")
        self.fadePresentVC(viewController: vc)
    }
    
}


