//
//  UINavigation.swift
//  PageMove
//
//  Created by adam on 6/21/24.
//

import UIKit

extension UIViewController {
    
    func fadePushVC(viewController: UIViewController) {
        
        let transition = CATransition().fadeTransition()
        self.view.window?.layer.add(transition, forKey: kCATransition)
        
        self.navigationController?.pushViewController(viewController, animated: false)
    }
    
    func fadePresentVC(viewController: UIViewController, completion: @escaping ()->() = { }) {
        
        let transition = CATransition().fadeTransition()
        self.view.window?.layer.add(transition, forKey: kCATransition)
        
        self.present(viewController, animated: false) {
            completion()
        }
    }
    
    func fadeFullScreenPresentVC(viewController: UIViewController, completion: @escaping ()->() = { }) {
        
        viewController.modalPresentationStyle = .fullScreen
        let transition = CATransition().fadeTransition()
        self.view.window?.layer.add(transition, forKey: kCATransition)
        
        self.present(viewController, animated: false) {
            completion()
        }
    }
    
    func fadeDismissVC(completion: @escaping ()->() = { }) {
        
        let transition = CATransition().fadeTransition()
        self.view.window?.layer.add(transition, forKey: kCATransition)
        
        if let nav = self.navigationController {
            nav.popViewController(animated: false)
            completion()
        }
        else {
            
            self.dismiss(animated: false) {
                completion()
            }
        }
        
    }
}

extension CATransition {
    func fadeTransition() -> CATransition {
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = CATransitionType.fade
        transition.subtype = CATransitionSubtype.fromRight

        return transition
    }
}
