//
//  VideoViewController.swift
//  MultimediaApp
//
//  Created by Adrian Martin Hernandez  on 19/10/22.
//

import Foundation
import UIKit
import AVKit
import SwiftUI



class VideoViewController: UIViewController {
    
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBAction func Navegar(_ sender: UIButton) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let imageViewController = storyBoard.instantiateViewController(withIdentifier: "ViewController")
        imageViewController.modalPresentationStyle = .fullScreen
        self.present(imageViewController, animated: true)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.imageTapped))

            // add it to the image view;
            imageView.addGestureRecognizer(tapGesture)
            // make sure imageView can be interacted with by user
            imageView.isUserInteractionEnabled = true
    }
    
    
    @objc func imageTapped(gesture: UIGestureRecognizer) {
        // if the tapped view is a UIImageView then set it to imageview
        if gesture.view is UIImageView {
            print("Image Tapped")
            //Here you can initiate your new ViewController

            }
        
        let ruta =  Bundle.main.path(forResource: "CookingVideo", ofType: "mp4" )
        let player  = AVPlayerViewController()
        let videoUrl = URL(fileURLWithPath: ruta!)
        let video = AVPlayer(url : videoUrl)
        player.player = video
        present(player, animated: true, completion: {
            video.play()
        })
        
        
        }
    
    
   
}
