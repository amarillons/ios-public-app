//
//  SecondViewController+UITableViewDelegate+UITableViewDataSource.swift
//  sampl
//
//  Created by af on 2020/06/24.
//  Copyright © 2020 af. All rights reserved.
//

import Foundation
import UIKit

extension SecondViewController: UITableViewDelegate, UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return Utils.shared.kasens.count
    }    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 160
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! KasenTableViewCell

        let kasen = Utils.shared.kasens[indexPath.row]
        cell.nameText = kasen.name
        cell.descriptionText = kasen.description
        
        return cell
    }
    
    
}
