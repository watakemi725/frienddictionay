//
//  ProfileViewController.swift
//  FriendDictionary
//
//  Created by Takemi Watanuki on 2017/04/20.
//  Copyright © 2017年 Takemi Watanuki. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet var nameLabel:UILabel!
    
    @IBOutlet weak var scrollView : UIScrollView!
    
    // 7. SecondViewに渡す文字列
    var selectRow: Int!
    
    
    let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate //AppDelegateのインスタンスを取得
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        nameLabel.text = appDelegate.friendsNameArray[appDelegate.selectedRowApp] as String
        
        scrollView.contentSize = CGSize(width: 320,height: self.view.bounds.height + 100)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
