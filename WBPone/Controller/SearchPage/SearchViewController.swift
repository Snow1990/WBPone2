//
//  SearchViewController.swift
//  WBPone
//
//  Created by SN on 15/7/24.
//  Copyright (c) 2015年 Snow. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    
    // MARK:- Properties
    
    // MARK:- UI Elements
    
    // MARK:- Init
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUIElements()
        resetContentFrame()
    }
    
    func setupUIElements() {
        self.view.backgroundColor = Constants.backgroundColor
    }
    
    // MARK: Update Frame
    func resetContentFrame() {
        
    }
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}

