//
//  FirstViewController.swift
//  sampl
//
//  Created by af on 2020/06/24.
//  Copyright © 2020 af. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    private let backgroundView: UIImageView = {
       let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        // https://en.wikipedia.org/wiki/Aurora#/media/File:Aurora_Borealis_and_Australis_Poster.jpg
        view.image = UIImage(named: "aurora.jpg")
        view.contentMode = .scaleAspectFill
        return view
    }()
    
    private let textlabel: UILabel = {
       
        let label = UILabel()
         label.translatesAutoresizingMaskIntoConstraints = false
         label.textAlignment = .center
         label.backgroundColor = .white
         label.layer.masksToBounds = true
         label.layer.cornerRadius = 5
         label.text = "アプリのタイトル"
         return label
    }()
    
    
    private let nextButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(UIColor.white, for: .normal)
        button.setTitleColor(UIColor.blue, for: .highlighted)
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 5
        button.backgroundColor = .blue
        button.setTitle("次の画面へ", for: .normal)
        return button
    }()
    
    @objc private func onPressNextButton () {

        let secondVC = SecondViewController()
        navigationController?.pushViewController(secondVC, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        view.addSubview(backgroundView)
        view.addSubview(nextButton)
        view.addSubview(textlabel)
        view.backgroundColor = .gray
        view.addSubview(nextButton)
        
        nextButton.addTarget(self, action: #selector(onPressNextButton), for: .touchUpInside)
        
        backgroundView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        backgroundView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        backgroundView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        backgroundView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        nextButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -32).isActive = true
        nextButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 32).isActive = true
        nextButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -32).isActive = true
        nextButton.heightAnchor.constraint(equalToConstant: 64).isActive = true
        
        textlabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32).isActive = true
        textlabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 32).isActive = true
        textlabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -32).isActive = true
        textlabel.heightAnchor.constraint(equalToConstant: 64).isActive = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
