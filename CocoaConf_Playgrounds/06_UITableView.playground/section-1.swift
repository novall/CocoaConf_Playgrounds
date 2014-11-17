// Playground - noun: a place where people can play

import UIKit

// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// UITableView
class DataSource: NSObject, UITableViewDataSource
{
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
        
    {
        return 10
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: .Default, reuseIdentifier:nil)
        
        cell.textLabel.text = "Hi CocoaConf!"
        
        cell.textLabel.textColor = UIColor.redColor()
        
        return cell
    }
}

let ds = DataSource()

let tableView = UITableView(frame: CGRect(x: 0, y: 0, width: 320, height: 400))

tableView.dataSource = ds

// Call reload data to see the full table view. Otherwise, the table view will be empty.
tableView.reloadData()
