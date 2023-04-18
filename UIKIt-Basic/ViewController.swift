//
//  ViewController.swift
//  UIKIt-Basic
//
//  Created by Students on 21.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    private let label: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        
        return label
    }()
    
    // Source of truth
    @IBOutlet weak var someLabel: UILabel!
    @IBOutlet weak var someView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        someView.layer.cornerRadius = 20
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(label)
        
        label.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        label.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        label.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor, constant: 20).isActive = true
        
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            label.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            label.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor, constant: 20)
        ])
    }
    
    @IBAction func showButton(_ sender: Any) {
        let alert = UIAlertController(
            title: "Title",
            message: "Message",
            preferredStyle: .alert)
        let action = UIAlertAction(
            title: "Title Action",
            style: .cancel) { UIAlertAction in
                //
            }
        
        alert.addAction(action)
        self.present(alert, animated: true)
    }
    
}

