//
//  BookListTableViewController.swift
//  Consulta Jerárquica ISBN
//
//  Created by Carlos Mauricio Idárraga Espitia on 4/22/16.
//  Copyright © 2016 Carlos Mauricio Idárraga Espitia. All rights reserved.
//

import UIKit

class BookListTableViewController: UITableViewController {

   var books = [Book]()

   override func viewDidLoad() {
      super.viewDidLoad()
   }

   override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
   }

   override func viewWillAppear(animated: Bool) {
      tableView.reloadData()
   }

   override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
      return 1
   }

   override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

      return books.count
   }

   override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

      let cell = tableView.dequeueReusableCellWithIdentifier("BookCell", forIndexPath: indexPath)

      cell.textLabel?.text = books[indexPath.row].title

      return cell
   }

   override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

      if (sender is UITableViewCell) {

         (segue.destinationViewController as! BookDetailsViewController).book = books[tableView.indexPathForSelectedRow!.row]
      }

      if (sender is UIBarButtonItem) {

         (segue.destinationViewController as! BookSearchViewController).bookList = self
      }
   }
}