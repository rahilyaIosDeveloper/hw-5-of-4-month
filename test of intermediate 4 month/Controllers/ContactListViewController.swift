//
//  SecondViewController.swift
//  test of intermediate 4 month
//
//  Created by Rahilya Nazaralieva on 28/1/24.
//

import UIKit

class ContactListViewController: UIViewController {
    
    private var contactList: [Contact] = []
 
    private let contactListTableView: UITableView = {
        let view  = UITableView()
        view.separatorStyle = .singleLine
        view.register(ContactTableViewCell.self, forCellReuseIdentifier: ContactTableViewCell.identifier)
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func  setup() {
        setupView()
        setupContacts()
    }
    
    private func setupView() {
        title = "Notification"
        view.backgroundColor = .systemBackground
        navigationItem.largeTitleDisplayMode = .automatic
        view.addSubview(contactListTableView)
        contactListTableView.delegate = self
        contactListTableView.dataSource = self
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        contactListTableView.frame = view.bounds
    }
    
    private func setupContacts() {
        let contact1 = Contact(personImage:  UIImage(named: "1")!,
                               nameWithActive: "Jane Cooper has \npublished a new recipe!",
                               personActive: "Today | 09:24 AM",
                               publickImage:  UIImage(named: "food_1")!)
        
        let contact2 = Contact(personImage: UIImage(named: "2")!,
                               nameWithActive: "Rochel has commented \non your recipe",
                               personActive: "1 day ago | 14:43 PM",
                               publickImage: UIImage(named: "food_2")!)
        
        let contact3 = Contact(personImage: UIImage(named: "3")!,
                               nameWithActive: "Brad Wigington liked \nyour comment",
                               personActive: "1 day ago | 09:29 AM",
                               publickImage: UIImage(named: "food_3")!)
        
        let contact4 = Contact(personImage: UIImage(named: "4")!,
                               nameWithActive: "Marci Winkles has \npublished a new recipe!",
                               personActive: "2 day ago | 09:29 AM",
                               publickImage: UIImage(named: "food_4")!)
        
        let contact5 = Contact(personImage: UIImage(named: "5")!,
                               nameWithActive: "Aileen has commented \non your recipe",
                               personActive: "3 day ago | 09:29 AM",
                               publickImage: UIImage(named: "food_5")!)
        
        let contact6 = Contact(personImage: UIImage(named: "7")!,
                               nameWithActive: "George has commented \non your recipe",
                               personActive: "4 day ago | 09:29 AM",
                               publickImage: UIImage(named: "food_7")!)
        
        let contact7 = Contact(personImage: UIImage(named: "6")!,
                               nameWithActive: "Tyra Ballentine has \npublished a new recipe!",
                               personActive: "5 day ago | 09:29 AM",
                               publickImage: UIImage(named: "food_6")!)
        
        contactList = [contact1, contact2, contact3, contact4, contact5, contact6, contact7]
    }
    
    
}

extension ContactListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = contactListTableView.dequeueReusableCell(withIdentifier: ContactTableViewCell.identifier, for: indexPath) as! ContactTableViewCell
        cell.selectionStyle = .none
        cell.configure(with: contactList[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
}
