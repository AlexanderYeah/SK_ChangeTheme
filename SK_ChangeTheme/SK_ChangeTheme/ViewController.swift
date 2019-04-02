//
//  ViewController.swift
//  SK_ChangeTheme
//
//  Created by coder on 2019/4/2.
//  Copyright © 2019 AlexanderYeah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 默认第一套
        ChangeTheme.swiftTheme(.theme1);
        
                                
        tableview.register(UINib.init(nibName: "MyCell", bundle: nil), forCellReuseIdentifier:"MyCell");
        tableview.delegate = self;
        tableview.dataSource = self;
        tableview.rowHeight = 50;
        
    }
    
    // 切换第一套皮肤
    @IBAction func theme1BtnClick(_ sender: UIButton) {
        ChangeTheme.swiftTheme(.theme1);
 
        
    }
    
    // 切换第二套皮肤
    @IBAction func theme2BtnClick(_ sender: UIButton) {
        ChangeTheme.swiftTheme(.theme2);
 
    }
    
    // 切换第三套皮肤
    @IBAction func theme3BtnClick(_ sender: UIButton) {
        
        ChangeTheme.swiftTheme(.theme3);
 
    }
    
    
    
}


extension ViewController:UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as! MyCell;
        
        return cell;
    }
    
    
    
}
