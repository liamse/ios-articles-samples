//
//  ClosureLeakViewController.swift
//  NIKMemoryIssues
//
//  Created by esimini on 4/28/26.
//

import UIKit

class Pigeon {
    var completion: (() -> Void)?
    
    func delivered() {
        completion?()
    }

}

class ClosureLeakViewController: UIViewController {
    let pigeon = Pigeon() // Stored property - persists with VC

    
    override func viewDidLoad() {
        super.viewDidLoad()
        pigeon.completion = {
            // This will create a reference cycle by strongly capturing the Pigeon itself.
            print("\(self.pigeon) delivered an envelope!") 
        }
        
        // deliverd
        pigeon.delivered()
    }

}
