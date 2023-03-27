//
//  ViewController.swift
//  Project_TestGit
//
//  Created by 蔡濬桔 on 2023/3/27.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemBrown
    }


}

class splitViewController: UISplitViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.viewControllers = [
            UINavigationController(rootViewController: MenuController(style: .plain)),
            UINavigationController(rootViewController: ViewController())
        ]
    }

}

class MenuController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")

    }
    
    private var cellTexts = ["桌號", "經典涮肉", "風味涮肉", "素食區", "附餐區"]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return cellTexts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        print("tableView cell: \(cell)")
        cell.textLabel?.text = cellTexts[indexPath.row]
        cell.accessoryType = .disclosureIndicator
        return cell
    }

}

