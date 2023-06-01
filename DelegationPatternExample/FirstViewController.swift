//
//  ViewController.swift
//  DelegationPatternExample
//
//  Created by Kadir Yasin Özmen on 1.06.2023.
//

import UIKit.UIView
import SnapKit

final class FirstViewController: UIViewController {
    
    // MARK: - UI Elements
    private let firstLabel: UILabel = {
        let label = UILabel()
        label.text = "Please Touch"
        label.textAlignment = .center
        label.textColor = .label
        return label
    }()
    private let secondLabel: UILabel = {
        let label = UILabel()
        label.text = "Bottom Button"
        label.textAlignment = .center
        label.textColor = .label
        return label
    }()
    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("Go to Second Page", for: .normal)
        button.tintColor = .label
        button.backgroundColor = .blue
        button.layer.cornerRadius = 5
        button.isUserInteractionEnabled = true
        button.addTarget(self, action: #selector(buttonDidTapped), for: .touchUpInside)
        return button
    }()
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray5
        configure()
    }
    
    // MARK: - Functions
    func configure (){
        view.addSubview(firstLabel)
        view.addSubview(secondLabel)
        view.addSubview(button)
        
        setupFirstLabel()
        setupButton()
        setupSecondLabel()
    }
    
    // MARK: - Actions
    @objc func buttonDidTapped() {
        navigationController?.pushViewController(SecondViewController(), animated: true)
    }
}

// MARK: - FirstView SnapKit Part
extension FirstViewController{
    
    func setupFirstLabel() {
        firstLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(view.bounds.height * -0.2)
            make.width.equalTo(200)
        }
    }
    
    func setupSecondLabel() {
        secondLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalTo(firstLabel.snp.centerY).offset(view.bounds.height * 0.03)
            make.width.equalTo(200)
        }
    }
    
    func setupButton() {
        button.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalTo(secondLabel.snp.centerY).offset(view.bounds.height * 0.1)
            make.width.equalTo(200)
        }
    }
}

