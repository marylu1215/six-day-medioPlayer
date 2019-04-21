//
//  ViewController.swift
//  six-day-medioPlayer
//
//  Created by MacBook Pro on 2019/4/14.
//  Copyright © 2019年 MacBookPro. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation
import MediaPlayer
class ViewController: UIViewController {
    
     var audioPlayer:AVAudioPlayer?
    /** 播放器 */
    var playerVC: AVPlayerViewController?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

     
//         let videoUrl = URL(string: "http://1253125013.vod2.myqcloud.com/6cc001c1vodtranscq1253125013/6ee9a0e65285890787486990990/v.f20.mp4")
//
//        let player = AVPlayer(url: videoUrl!)
//
//         let playerViewController = AVPlayerViewController()
//
//         playerViewController.player = player
//
//         self.present(playerViewController, animated: true) {}
        
        
        
        let button = UIButton()
   // button.setTitle(""<#T##title: String?##String?#>"", for: <#T##UIControl.State#>)
        button.setTitle("play", for: UIControl.State.normal)
        button.setTitleColor(UIColor.yellow, for: UIControl.State.normal)
        button.backgroundColor = UIColor.red
       // [button .addTarget(self, action: #selector(clickbtn:), for: UIControl.Event.touchUpInside)];
        button.addTarget(self, action: #selector(playvedio), for: UIControl.Event.touchUpInside)
        button.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        self.view.addSubview(button)
        
      
    }
   
   //playvedio
   
    @objc func playvedio(){
        let videoUrl = URL(string: "http://1253125013.vod2.myqcloud.com/6cc001c1vodtranscq1253125013/6ee9a0e65285890787486990990/v.f20.mp4")
          let player = AVPlayer(url: videoUrl!)
         let playerViewController = AVPlayerViewController()
         playerViewController.player = player
         self.present(playerViewController, animated: true) {}
        
        
    }
        
    
    

}

