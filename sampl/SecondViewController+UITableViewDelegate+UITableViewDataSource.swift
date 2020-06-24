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
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)

        switch indexPath.row {
        case 0:
            cell.textLabel?.text = "表示名を変更"
        case 1:
            cell.textLabel?.text = "よくある質問"
        case 2:
            cell.textLabel?.text = "アプリの作者について"
        default:
            print("nothing")
        }
        
        return cell
    }
    
    
}
