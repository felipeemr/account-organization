//
//  InfoCell.swift
//  account-organization
//
//  Created by Felipe Moraes Rocha on 24/07/23.
//

import UIKit

class InfoCell: UITableViewCell {
    @IBOutlet weak var balanceValueLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var imageBalace: UIImageView!
    
    deinit {
        balanceValueLabel = nil
        titleLabel = nil
        dateLabel = nil
        imageBalace = nil
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    public func render (title: String,
                        balace: String,
                        date: String,
                        balaceImage: String) {
        titleLabel.text = title
        balanceValueLabel.text = balace
        dateLabel.text = date
        imageBalace.image = UIImage(named: balaceImage)
    }
}
