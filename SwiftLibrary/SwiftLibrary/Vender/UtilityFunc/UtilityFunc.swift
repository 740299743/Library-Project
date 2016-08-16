//
//  TbUtilityFunc.swift
//  TOSHIBA_IPHONE
//
//  Created by Skyler on 1/21/16.
//  Copyright © 2016 SK. All rights reserved.
//

import UIKit

class TbUtilityFunc: NSObject {
    
}

//MARK:- extension UITableViewDataSource
extension UITableViewDataSource {
    // return total rows in the tableView
    func UITableViewTotalRows(tableView: UITableView) -> Int {
        let totalSections = self.numberOfSectionsInTableView!(tableView) ?? 1
        var section = 0, total = 0
        while section < totalSections {
            total += self.tableView(tableView, numberOfRowsInSection: section)
            section += 1
        }
        return total
    }
}


