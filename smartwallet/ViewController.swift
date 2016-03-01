//
//  ViewController.swift
//  smartwallet
//
//  Created by Md. Tahmid Mozaffar on 2/20/16.
//  Copyright © 2016 rcmapps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var _currentView:UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var mainview = MainView();
        
        let orientation = UIApplication.sharedApplication().statusBarOrientation
        self.setUpViewForOrientation(orientation)

    }
    
    override func awakeFromNib() {
        
        

    }
    
    override func willRotateToInterfaceOrientation(toInterfaceOrientation: UIInterfaceOrientation, duration: NSTimeInterval) {
        
        setUpViewForOrientation(toInterfaceOrientation)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func setUpViewForOrientation(orientation: UIInterfaceOrientation) ->Void{
        
        //_currentView.removeFromSuperview()
        if(UIInterfaceOrientationIsLandscape(orientation))
        {
            self.view.addSubview(mainview)
            //_currentView = _landscapeView
        }
        else
        {
            self.view.addSubview(_portraitView)
            //_currentView = _portraitView
        }
    }
    
    

    @IBAction func AddExpense(sender: UIButton) {
    }
}

