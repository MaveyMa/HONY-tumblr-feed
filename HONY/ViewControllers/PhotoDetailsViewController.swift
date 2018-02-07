//
//  PhotoDetailsViewController.swift
//  HONY
//
//  Created by Mavey Ma on 2/7/18.
//  Copyright © 2018 Mavey Ma. All rights reserved.
//

import UIKit

class PhotoDetailsViewController: UIViewController {
  @IBOutlet weak var detailsImageView: UIImageView!
  
  var post: [String: Any]!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    if let photos = post["photos"] as? [[String: Any]] {
      let photo = photos[0]
      let originalSize = photo["original_size"] as! [String: Any]
      let urlString = originalSize["url"] as! String
      let url = URL(string: urlString)
      detailsImageView.af_setImage(withURL: url!)
    }
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  
}
