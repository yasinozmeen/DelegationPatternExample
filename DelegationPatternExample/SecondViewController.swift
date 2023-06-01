//
//  SecondViewController.swift
//  DelegationPatternExample
//
//  Created by Kadir Yasin Özmen on 1.06.2023.
//

import UIKit.UIView
import SnapKit

    // MARK: - Protocol creating
protocol TextDeliveryProtocol: AnyObject {
    func firstTextDelivery(_ text: String?)
    func secondTextDelivery(_ text: String?)
}


class SecondViewController: UIViewController {

    // MARK: - UI Elements
    private let firstTF: UITextField = {
       let tf = UITextField()
        tf.borderStyle = .roundedRect
        tf.placeholder = "Please enter anything"
        return tf
    }()
    private let secondTF: UITextField = {
        let tf = UITextField()
        tf.borderStyle = .roundedRect
        tf.placeholder = "Please enter anything"
        return tf
    }()
    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("Back to first page", for: .normal)
        button.tintColor = .label
        button.backgroundColor = .blue
        button.layer.cornerRadius = 5
        button.isUserInteractionEnabled = true
        button.addTarget(self, action: #selector(didTapped), for: .touchUpInside)
        return button
    }()
    
    // MARK: - Properties
    
    weak var delegate: TextDeliveryProtocol?
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        view.backgroundColor = .systemGray5
    }
    
    // MARK: - Functions
    func configure() {
        view.addSubview(firstTF)
        view.addSubview(secondTF)
        view.addSubview(button)
        
        setupFirstTF()
        setupSecondTF()
        setupButton()
    }
    
    // MARK: - Actions
    @objc func didTapped (){
        self.delegate?.firstTextDelivery(firstTF.text)
        self.delegate?.secondTextDelivery(secondTF.text)
        navigationController?.popViewController(animated: true)
    }
    
}

// MARK: - SecondVC Snapkit Park
extension SecondViewController {
    
    func setupFirstTF() {
        firstTF.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-100)
            make.width.equalTo(200)
        }
    }
    
    func setupSecondTF() {
        secondTF.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-60)
            make.width.equalTo(200)
        }
    }
    
    func setupButton() {
        button.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-20)
            make.width.equalTo(200)
        }
    }
}


    
