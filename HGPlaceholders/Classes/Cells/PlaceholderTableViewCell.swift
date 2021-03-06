//
//  PlaceholderTableViewCell.swift
//  Pods
//
//  Created by Hamza Ghazouani on 20/07/2017.
//
//

import UIKit

/// The default cell used for table view placeholders (takes the size of the table view)
open class PlaceholderTableViewCell: UITableViewCell {
   
    var onActionButtonTap: (() -> Void)?
    
    // MARK: Properties 
    
    @IBOutlet weak var titleLabel: UILabel?
    @IBOutlet weak var subtitleLabel: UILabel?
    @IBOutlet weak var placeholderImageView: UIImageView?
    @IBOutlet weak var actionButton: UIButton?
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView?
    
    var cellView: UIView {
        return self
    }
    
    //  MARK: - User interaction
    
    @IBAction func sendPlaceholderAction(_ sender: Any) {
        onActionButtonTap?()
        print("Placeholder action button tapped")
    }
    
    func disableActionButton(disable: Bool) {
        if disable {
            actionButton!.backgroundColor = UIColor(red:0.46, green:0.51, blue:0.55, alpha:0.3)
            actionButton!.isUserInteractionEnabled = false
        }
        else {
            actionButton!.backgroundColor = UIColor(red:0.18, green:0.49, blue:0.82, alpha:1.0)
            actionButton!.isUserInteractionEnabled = true
        }
    }
}

extension PlaceholderTableViewCell: NibLoadable {}
extension PlaceholderTableViewCell: Reusable {}
extension PlaceholderTableViewCell: CellPlaceholding {}


