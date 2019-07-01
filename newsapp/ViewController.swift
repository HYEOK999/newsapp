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
    private var articles = [Article]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableVW.delegate = self
        tableVW.dataSource = self
        self.getData()
        // Do any additional setup after loading the view.
    }
    
    func getData(){
        let newsToURL = URL(string: newsURL)
        let request = URLRequest(url: newsToURL!)
        SVProgressHUD.show()
        
        Alamofire.request(request).responseData { (result) in
            switch result.result {
            case .failure(let error) :
                print(error)
                SVProgressHUD.dismiss()
                break
            case .success(let value) :
                self.articles = self.parseJsonData(data:value)
                
                OperationQueue.main.addOperation {
                    self.tableVW.reloadData()
                }
                SVProgressHUD.dismiss()
                break
                
            }
        }
    }
    
    func parseJsonData(data : Data) -> [Article]{
        var articles = [Article]()
        
        let decoder = JSONDecoder()
        
        do{
            let aricleDataStore = try decoder.decode(ArticleDataStore.self, from: data)
            articles = aricleDataStore.articles
        }catch(let err){
            print(err)
        }
        
        return articles
    }
}

extension ViewController : UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}

