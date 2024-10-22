//
//  FirstViewController.swift
//  Base
//
//  Created by Testpress on 19/09/24.
//

import Foundation
import UIKit

public class FirstViewController: UIViewController {
    public override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func redirect(_ sender: Any) {
        let secondVC = SecondViewController()

        present(secondVC, animated: true, completion: nil)
    }
}
