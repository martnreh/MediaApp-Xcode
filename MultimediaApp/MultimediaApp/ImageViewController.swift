//
//  ImageViewController.swift
//  MultimediaApp
//
//  Created by Adrian Martin Hernandez  on 19/10/22.
//

import Foundation
import UIKit

class ImageViewController: UIViewController {
    
    
    
    @IBAction func Navegar(_ sender: UIButton) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let imageViewController = storyBoard.instantiateViewController(withIdentifier: "VideoViewController")
        imageViewController.modalPresentationStyle = .fullScreen
        self.present(imageViewController, animated: true)
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    
    
    
    
}
