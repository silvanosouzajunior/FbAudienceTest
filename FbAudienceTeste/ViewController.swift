//
//  ViewController.swift
//  FbAudienceTeste
//
//  Created by Silvano Souza Junior on 11/13/15.
//  Copyright © 2015 Silvano Souza Junior. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let adView = FBAdView.init(placementID: "XXXXX-XXXXX", adSize: kFBAdSizeHeight50Banner, rootViewController: self)
        adView.delegate = self
        
        print(adView)

        adView.loadAd()
        
        self.view.addSubview(adView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController: FBAdViewDelegate {
    func adViewDidLoad(adView: FBAdView) {
        print("AdViewDidLoad")
    }
    
    func adView(adView: FBAdView, didFailWithError error: NSError) {
        print(error)
    }
}
