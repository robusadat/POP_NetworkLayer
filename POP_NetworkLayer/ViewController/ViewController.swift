//
//  ViewController.swift
//  POP_NetworkLayer
//
//  Created by Sadat on 10/6/22.
//

import UIKit

class MainViewController: UIViewController {

    var networkManager: NetworkManager!
    
    init(networkManager: NetworkManager) {
        super.init(nibName: nil, bundle: nil)
        self.networkManager = networkManager
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        networkManager.getNewMovies(page: 1) { movies, error in
            print(movies as Any)
        }
    }


}

