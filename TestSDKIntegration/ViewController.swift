//
//  ViewController.swift
//  TestSDKIntegration
//
//  Created by Testpress on 19/09/24.
//

import UIKit
import CourseKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func presentViewControllerFromSDK(_ sender: Any) {
        let firstVC = TestpressCourse.shared.getMyCoursesViewController()!
        let navigationController = UINavigationController(rootViewController: firstVC)
        navigationController.modalPresentationStyle = .fullScreen
        present(navigationController, animated: true, completion: nil)
    }
}

