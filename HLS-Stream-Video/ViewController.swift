//
//  ViewController.swift
//  HLS-Stream-Video
//
//  Created by Kelvin Fok on 12/4/18.
//  Copyright © 2018 kelvinfok. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class ViewController: UIViewController {
    
    let avPlayerViewController = AVPlayerViewController()
    var avPlayer: AVPlayer?
    let movieURL = "http://qthttp.apple.com.edgesuite.net/1010qwoeiuryfg/sl.m3u8"

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func playButtonTapped(_ sender: Any) {
        guard let url = URL(string: movieURL) else { return }
        let asset = AVAsset(url: url)
        let playerItem = AVPlayerItem(asset: asset)
        self.avPlayer = AVPlayer(playerItem: playerItem)
        self.avPlayerViewController.player = self.avPlayer
        self.present(self.avPlayerViewController, animated: true) { [weak self] in
            self?.avPlayerViewController.player?.play()
        }
    }
}
