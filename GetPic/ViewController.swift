//
//  ViewController.swift
//  GetPic
//
//  Created by USER on 11/3/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var avatar: UIImageView!
        
    @IBAction func getImage(_ sender: Any){
        // наш урл https://picsum.photos/200
        let url = URL(string: "https://picsum.photos/200")
        URLSession.shared.downloadTask(with: url!) {localUrl, responce, error in
            let data = try? Data(contentsOf: localUrl!)
            let image = UIImage(data: data!)
            DispatchQueue.main.async {
                self.avatar.image = image
            }
        }.resume()
    }
}

