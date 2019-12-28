//
//  ViewController.swift
//  AnyZoneApp
//
//  Created by Anıl Taşkıran on 23.06.2019.
//  Copyright © 2019 Creabbit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        addBottomSheetView()
    }

    func addBottomSheetView() {
        let bottomSheetVC = BottomSheetViewController()
        
        self.addChild(bottomSheetVC)
        self.view.addSubview(bottomSheetVC.view)
        bottomSheetVC.didMove(toParent: self)
        
        let height = view.frame.height
        let width  = view.frame.width
        bottomSheetVC.view.frame = CGRect(x: 0, y: view.frame.maxY, width: width, height: height)
    }
}

