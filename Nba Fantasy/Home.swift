//
//  Home.swift
//  Nba Fantasy
//
//  Created by Vinicius Mangueira Correia on 26/10/17.
//  Copyright © 2017 Vinicius Mangueira Correia. All rights reserved.
//

import UIKit

class Home: UIViewController {
    
    
    @IBOutlet weak var webView: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let url = URL(string: "http://www.nba.com/scores#/") else {
            return
        }
        let request = URLRequest(url: url)
        webView.loadRequest(request)
    }


}
