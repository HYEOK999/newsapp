//
//  ViewController.swift
//  newsapp
//
//  Created by HYEOKBOOK on 02/07/2019.
//  Copyright © 2019 HYEOKBOOK. All rights reserved.
//

import UIKit
import SVProgressHUD
import Alamofire
import Kingfisher

class ViewController: UIViewController {

    @IBOutlet weak var tableVW: UITableView!
    
    private let newsURL = "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=aef344beb1ca424c8b8592dd9bdc6188"
    private var articles = [Aricle]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableVW.delegate = self
        tableVW.dataSource = self
        // Do any additional setup after loading the view.
    }
}

extension ViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}

