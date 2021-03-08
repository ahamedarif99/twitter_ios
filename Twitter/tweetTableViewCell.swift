//
//  tweetTableViewCell.swift
//  Twitter
//
//  Created by Ahamed Arif on 3/3/21.
//  Copyright © 2021 Dan. All rights reserved.
//

import UIKit

class tweetTableViewCell: UITableViewCell {

    var favr:Bool = false
    var tweetID:Int = -1
    
    
    @IBOutlet weak var tweetIMG: UIImageView!
    
    @IBOutlet weak var tweetName: UILabel!
    
    @IBOutlet weak var tweetLBL: UILabel!
    
    @IBOutlet weak var favOutlet: UIButton!
    
    
    @IBAction func favBtn(_ sender: Any) {
        let tobeFvr = !favr
        if (tobeFvr) {
            TwitterAPICaller.client?.favTweet(tweetID: tweetID, success: {
                self.setFavr(true)
            }, failure: { (Error) in
                print("unabale to favorite!")
            })
        } else {
            TwitterAPICaller.client?.unfavTweet(tweetID: tweetID, success: {
                self.setFavr(false)
            }, failure: { (Error) in
                print("unabale to unfavorite!")
            })
        }
    }
    
    
    @IBOutlet weak var retwtOutlet: UIButton!
    
    @IBAction func retwtBtn(_ sender: Any) {
        TwitterAPICaller.client?.reTweet(tweetID: tweetID, success: {
            self.setRetweeted(true)
        }, failure: { (Error) in
            print("retweet failed!")
        })
    }
    
   
    func setFavr(_ isfavr:Bool){
        favr = isfavr
        if (favr){
            favOutlet.setImage(UIImage(named: "favor-icon-red"), for: UIControl.State.normal)
        } else {
            favOutlet.setImage(UIImage(named: "favor-icon"), for: UIControl.State.normal)
        }
    }
    
    func setRetweeted(_ isRetweeted:Bool) {
        if (isRetweeted){
            retwtOutlet.setImage(UIImage(named: "retweet-icon-green"), for: UIControl.State.normal)
            retwtOutlet.isEnabled = false
        } else {
            retwtOutlet.setImage(UIImage(named: "retweet-icon"), for: UIControl.State.normal)
            retwtOutlet.isEnabled = true
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
