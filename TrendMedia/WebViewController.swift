//
//  WebViewController.swift
//  TrendMedia
//
//  Created by Eunchan Kim on 2022/10/20.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    var url: String!
    var movie: Lists?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let movieURL = URL(string: url!){
            let request = URLRequest(url: movieURL)
            webView.load(request)
        }
        print("URL: ", url ?? "" as Any)
        
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
