//
//  ContactTableViewCell.swift
//  hw of 4 month
//
//  Created by Islam  EU on 28/1/24.
//

import UIKit

class ContactTableViewCell: UITableViewCell {

    static let identifier = "ContactTableViewCell"
    
    private let personImageView: UIImageView = {
        let view  = UIImageView()
        view.image = UIImage(named: "1")
        view.layer.masksToBounds = true
        view.clipsToBounds = true
        view.backgroundColor = .secondarySystemBackground
        view.contentMode = .scaleAspectFill
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let personNameLabel: UILabel = {
        let view  = UILabel()
        view.text = "Jane Cooper has published a new recipe!"
        view.numberOfLines = 0
        view.textColor = .black
        view.font = .systemFont(ofSize: 18, weight: .medium)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let personActiveLabel:  UILabel = {
        let view  = UILabel()
        view.text = "Today | 09:24 AM"
        view.textColor = #colorLiteral(red: 0.570460856, green: 0.570460856, blue: 0.570460856, alpha: 1)
        view.font = .systemFont(ofSize: 14, weight: .regular)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let publicImageView:  UIImageView = {
        let view  = UIImageView()
        view.image = UIImage(named: "food_1")
        view.layer.cornerRadius = 8
        view.layer.masksToBounds = true
        view.clipsToBounds = true
        view.backgroundColor = .secondarySystemBackground
        view.contentMode = .scaleAspectFill
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let verticalStackView: UIStackView = {
         let view = UIStackView()
         view.alignment = .fill
         view.axis = .vertical
         view.spacing = 6
         view.translatesAutoresizingMaskIntoConstraints = false
         return  view
     }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }
    
    private func setup(){
        setupView()
        setupConstraints()
        
    }
    
    private func setupView() {
        contentView.addSubview(personImageView)
        contentView.addSubview(verticalStackView)
        verticalStackView.addArrangedSubview(personNameLabel)
        verticalStackView.addArrangedSubview(personActiveLabel)
        contentView.addSubview(publicImageView)
    }
    

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            personImageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            personImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
            personImageView.widthAnchor.constraint(equalToConstant: 48),
            personImageView.heightAnchor.constraint(equalToConstant: 48),

            verticalStackView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            verticalStackView.leadingAnchor.constraint(equalTo: personImageView.trailingAnchor, constant: 16),
            verticalStackView.trailingAnchor.constraint(equalTo: publicImageView.leadingAnchor, constant: -12),

            publicImageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            publicImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -24),
            publicImageView.widthAnchor.constraint(equalToConstant: 72),
            publicImageView.heightAnchor.constraint(equalToConstant: 72),
        ])
    }


    
    func configure(with contactList: Contact) {
        personImageView.image = contactList.personImage
        personNameLabel.text = contactList.nameWithActive
        personActiveLabel.text = contactList.personActive
        publicImageView.image = contactList.publickImage
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}


