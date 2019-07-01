//
//  DetailViewController.swift
//  newsapp
//
//  Created by HYEOKBOOK on 02/07/2019.
//  Copyright © 2019 HYEOKBOOK. All rights reserved.
//

import UIKit
import SVProgressHUD

class DetailViewController: UIViewController , UIWebViewDelegate {

    @IBOutlet weak var webVW: UIWebView!
    
    var urlString : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webVW.delegate = self

        let url = URL(string: urlString)
        let request = URLRequest(url: url!)
        
        webVW.loadRequest(request)
        // Do any additional setup after loading the view.
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        SVProgressHUD.dismiss()
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        SVProgressHUD.show()
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
