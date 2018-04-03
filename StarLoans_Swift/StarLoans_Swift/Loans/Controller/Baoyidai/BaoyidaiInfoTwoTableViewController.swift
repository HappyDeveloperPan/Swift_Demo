//
//  BaoyidaiInfoTwoTableViewController.swift
//  StarLoans_Swift
//
//  Created by iOS Pan on 2018/4/3.
//  Copyright © 2018年 iOS Pan. All rights reserved.
//

import UIKit
import IBAnimatable

class BaoyidaiInfoTwoTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 11
    }

    // MARK: - 控件点击事件
    @IBAction func nextBtnClick(_ sender: AnimatableButton) {
        let vc = BaoyidaiInfoThreeViewController.loadStoryboard()
        navigationController?.pushViewController(vc, animated: true)
    }
}