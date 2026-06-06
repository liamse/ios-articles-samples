//
//  LeakyViewController.swift
//  NIKMemoryIssues
//
//  Created by esimini on 4/26/26.
//

import UIKit

protocol ViewControllerDelegate: AnyObject {
    // Delegate methods go here
}


class LeakyViewController: UIViewController, ViewControllerDelegate {
    var viewModel: LeakyViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Create ViewModel and pass self
        viewModel = LeakyViewModel(view: self)
    }
    
}

class LeakyViewModel {
    var view: ViewControllerDelegate?
    
    init(view: ViewControllerDelegate?) {
        self.view = view  // ⚠️ Strong reference - creates a cycle!
    }
}
