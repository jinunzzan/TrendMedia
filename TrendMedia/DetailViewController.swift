//
//  DetailViewController.swift
//  TrendMedia
//
//  Created by Eunchan Kim on 2022/10/17.
//

import UIKit

class DetailViewController: UIViewController {
    
    

    @IBOutlet weak var tableView: UITableView!
    
    var movie:Lists?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .white
        let nibName = UINib(nibName: "TableViewCellB", bundle: nil)
        tableView.register(nibName, forCellReuseIdentifier: "TableViewCellB")
        
        tableView.dataSource = self
        tableView.delegate = self
        
//        if let movie = self.movie {
//
//        }
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

extension DetailViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}
