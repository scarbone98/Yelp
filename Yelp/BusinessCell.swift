//
//  BusinessCell.swift
//  Yelp
//
//  Created by Samuel Carbone on 1/27/18.
//  Copyright © 2018 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {
    
    @IBOutlet weak var categoriesLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var ratingCountLabel: UILabel!
    @IBOutlet weak var ratingImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var thumbImageView: UIImageView!
    
    var business: Business! {
        didSet {
            nameLabel.text = business.name
            if (business.imageURL != nil) {
                thumbImageView.setImageWith(business.imageURL!)
            }
            categoriesLabel.text = business.categories
            addressLabel.text = business.address
            ratingImageView.setImageWith(business.ratingImageURL!)
            distanceLabel.text = business.distance
            ratingCountLabel.text = "\(business.reviewCount!) Reviews"
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        thumbImageView.layer.cornerRadius = 3
        thumbImageView.clipsToBounds = true
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
        // Initialization code
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
