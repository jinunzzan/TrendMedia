//
//  DetailViewController.swift
//  TrendMedia
//
//  Created by Eunchan Kim on 2022/10/17.
//

import UIKit
import Kingfisher

class DetailViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var movie: Lists?
    
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
}

extension DetailViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let actor = movie?.actors.count else { fatalError() }
        
        return actor
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCellB", for: indexPath) as! TableViewCellB
        
        let actorName = cell.viewWithTag(2) as? UILabel
        
        actorName?.text = "\(movie?.actors[indexPath.row].name ?? "")"
        // actorImg.image.kf.setImage(movie?.actors[indexPath.row].img)
        
        return cell
    }
}
