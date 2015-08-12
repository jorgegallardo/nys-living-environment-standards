//
//  DetailViewController.swift
//  Living Environment Standards
//
//  Created by Jorge Gallardo on 8/12/15.
//  Copyright © 2015 Jorge Gallardo. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!
    var segueLabelText: String = ""

    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.

        if let label = self.detailDescriptionLabel {
            label.text = "Item tapped."
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureView()
        detailDescriptionLabel.text = segueLabelText
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}