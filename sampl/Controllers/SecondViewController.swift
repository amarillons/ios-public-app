//
//  SecondViewController.swift
//  sampl
//
//  Created by af on 2020/06/24.
//  Copyright © 2020 af. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    private let tableView: UITableView = {
       let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .blue
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        
        // Do any additional setup after loading the view.
        tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        tableView.register(KasenTableViewCell.self, forCellReuseIdentifier: "cellId")
        tableView.register(UITableViewHeaderFooterView.self, forHeaderFooterViewReuseIdentifier: "headerCellId")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        Utils.shared.fetchKasenData { (dicArray) in

            dicArray?.forEach({ (dictionary) in
                
                let id = dictionary.object(forKey: "id") as? String ?? "0"
                let name = dictionary.object(forKey: "name") as? String ?? "no name"
                let description = dictionary.object(forKey: "description") as? String ?? "description"
                
                let newKasen = Kasen(id: id, name: name, description: description)
                
                Utils.shared.kasens.append(newKasen)
            })
            
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
