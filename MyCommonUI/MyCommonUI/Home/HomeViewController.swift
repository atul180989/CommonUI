//
//  HomeViewController.swift
//  MyCommonUI
//
//  Created by Atul Bhaisare on 1/31/20.
//  Copyright © 2020 Atul Bhaisare. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onClickButtonTapped(_ sender: Any) {
        let viewController =  InitialViewController(nibName: String(describing: InitialViewController.self), bundle: nil)
        navigationController?.pushViewController(viewController, animated: true)
    }
}
