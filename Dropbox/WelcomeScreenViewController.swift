//
//  WelcomeScreenViewController.swift
//  Dropbox
//
//  Created by Jeremy Friedland on 5/20/16.
//  Copyright © 2016 Jeremy Friedland. All rights reserved.
//

import UIKit

class WelcomeScreenViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var WelcomeScroll: UIScrollView!
    @IBOutlet weak var PageDots: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        WelcomeScroll.contentSize = CGSize(width: 960, height: 568)
        WelcomeScroll.delegate = self
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func scrollViewDidEndDecelerating(WelcomeScroll: UIScrollView!) {
        // Get the current page based on the scroll offset
        var page : Int = Int(round(WelcomeScroll.contentOffset.x / 320))
        
        // Set the current page, so the dots will update
        PageDots.currentPage = page
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
