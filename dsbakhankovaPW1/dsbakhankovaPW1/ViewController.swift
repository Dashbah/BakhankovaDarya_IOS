//
//  ViewController.swift
//  dsbakhankovaPW1
//
//  Created by Dashbah on 20.09.2022.
//

import UIKit

class ViewController: UIViewController {
    //@IBOutlet var mainView: UIView!
    
    @IBOutlet var views: [UIView]!
    
    // var lightTheme = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var angle = 0.0
        for view in views {
            view.transform = CGAffineTransform(rotationAngle: CGFloat.pi * angle)
            angle += 1 / 4
            view.layer.cornerRadius = 20
        }
    
    }
    
    @IBAction func changeColorButtonPressed(_ sender: Any) {
        let button = sender as? UIButton
        
        button?.isEnabled = false
        button?.alpha = 0.6
        var set = Set<UIColor>()
        
        while set.count < views.count {
            set.insert(
                UIColor(
                    red: .random(in: 0...1),
                    green: .random(in: 0...1),
                    blue: .random(in: 0...1),
                    alpha: 1
                )
            )
        }
        
        UIView.animate(withDuration: 1, animations: {
                for view in self.views {
                    view.layer.cornerRadius = .random(in: 20...50)

                    view.backgroundColor = set.popFirst();
                }
        }) { completion in }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            button?.isEnabled = true
            button?.alpha = 1
        }
    }
}

