//
//  KasenTableViewCell.swift
//  sampl
//
//  Created by af on 2020/06/24.
//  Copyright © 2020 af. All rights reserved.
//

import UIKit
import PINRemoteImage

class KasenTableViewCell: UITableViewCell {
    
    var nameText: String? {
        didSet {
            nameLabel.text = nameText
        }
    }
    
    var profileImageUrl: String? {
        didSet {
            // TODO use pinremoteimage
            print("profile image is \(profileImageUrl ?? "n/a")")
            profileImageView.pin_setImage(from: URL(string: profileImageUrl ?? ""))
        }
    }
    
    var descriptionText: String? {
        didSet {
            descriptionTextView.text = descriptionText
        }
    }
    
    private let nameLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .blue
        imageView.layer.cornerRadius = 5
        imageView.layer.masksToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill

        return imageView
    }()
    
    private let descriptionTextView: UITextView = {
       let label = UITextView()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
                        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(nameLabel)
        addSubview(descriptionTextView)
        addSubview(profileImageView)
        descriptionTextView.isEditable = false
        
        nameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 32).isActive = true
        nameLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
//        nameLabel.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -8).isActive = true
        nameLabel.heightAnchor.constraint(equalToConstant: 32).isActive = true
        
        descriptionTextView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 32).isActive = true
        descriptionTextView.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 4).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -16).isActive = true
        descriptionTextView.widthAnchor.constraint(equalToConstant: 256).isActive = true
        
        profileImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 8).isActive = true
        profileImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8).isActive = true
        profileImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8).isActive = true
        profileImageView.leadingAnchor.constraint(equalTo: descriptionTextView.trailingAnchor, constant: 8).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
