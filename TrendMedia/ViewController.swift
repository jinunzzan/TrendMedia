//
//  ViewController.swift
//  TrendMedia
//
//  Created by Eunchan Kim on 2022/10/17.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
        
        let nibName = UINib(nibName: "TableViewCellA", bundle: nil)
        tableView.register(nibName, forCellReuseIdentifier: "TableViewCellA")
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    
}

extension ViewController: UITableViewDataSource {
    
   func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let keys = movies.keys.sorted()
        let key = keys[section]
        if let koreanTitle = movies[key] {
            return koreanTitle.count
        }else{
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCellA", for: indexPath)
        
        let keys = movies.keys.sorted()
        let key = keys[indexPath.section]
        guard let koreanTitle = movies[key] else {fatalError()}
        let movies = koreanTitle[indexPath.row]
        
        let imgMovie = cell.viewWithTag(3) as? UIImageView
        imgMovie?.image = UIImage(named: movies.img)
        
        let lblTag = cell.viewWithTag(1) as? UILabel
        lblTag?.text = movies.textTag
        
        let lblEng = cell.viewWithTag(2) as? UILabel
        lblEng?.text = movies.englishTitle
        
        let lblKo = cell.viewWithTag(4) as? UILabel
        lblKo?.text = movies.koreanTitle
        
        let lblDate = cell.viewWithTag(5) as? UILabel
        lblDate?.text = movies.date1
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 80
        
    }
   
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?{
            let headerView = UIView()
            let filmButton = UIButton(frame: CGRect(x: 40, y: 0, width: 60, height: 60))
            
        filmButton.setImage(UIImage(systemName: "film"), for: .normal)
        filmButton.backgroundColor = .green
        filmButton.setTitleColor(.green, for: .normal)

        let tvButton = UIButton(frame: CGRect(x: 170, y: 0, width: 60, height: 60))
        headerView.addSubview(tvButton)
    tvButton.setImage(UIImage(systemName: "display"), for: .normal)
    tvButton.backgroundColor = .green
        
        let bookButton = UIButton(frame: CGRect(x: 300, y: 0, width: 60, height: 60))
        headerView.addSubview(tvButton)
        bookButton.setImage(UIImage(systemName: "book.closed"), for: .normal)
        bookButton.backgroundColor = .green
        
        
        headerView.addSubview(filmButton)
        headerView.addSubview(tvButton)
        headerView.addSubview(bookButton)
            return headerView
        
    }
}
