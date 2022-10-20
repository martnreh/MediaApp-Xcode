//
//  ViewController.swift
//  MultimediaApp
//
//  Created by Adrian Martin Hernandez  on 19/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBAction func Navegar(_ sender: UIButton) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let imageViewController = storyBoard.instantiateViewController(withIdentifier: "ImageViewController")
        imageViewController.modalPresentationStyle = .fullScreen
        self.present(imageViewController, animated: true)
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

