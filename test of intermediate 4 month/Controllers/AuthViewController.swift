//
//  ViewController.swift
//  test of intermediate 4 month
//
//  Created by Rahilya Nazaralieva on 26/1/24.
//

import UIKit

class AuthViewController: UIViewController {
    
    private let upLabel: UILabel = {
        let label = UILabel()
        label.text = "Create New Password 🔐"
        label.font = UIFont(name: "Urbanist-Bold", size: 29)
        label.font = .systemFont(ofSize: 29, weight: .bold)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let downLabel: UILabel = {
        let label = UILabel()
        label.text = "Enter your new password. If you forget it, then you have to do forgot password."
        label.font = UIFont(name: "Urbanist-Regular", size: 18)
        label.font = .systemFont(ofSize: 18, weight: .regular)
        label.textColor = .black
        label.numberOfLines = 2
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let passwordLabel: UILabel = {
        let label = UILabel()
        label.text = "Password"
        label.font = UIFont(name: "Urbanist-Bold", size: 16)
        label.font = .systemFont(ofSize: 18, weight: .bold)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let upTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Your password"
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.isSecureTextEntry = true
        
        let rightFirstView = UIButton(frame: CGRect(x: 0, y: 0, width: 24, height: 24))
        rightFirstView.setBackgroundImage(UIImage(systemName: "eye.slash"), for: .normal)
        rightFirstView.isUserInteractionEnabled = true
        rightFirstView.addTarget(self, action: #selector(hideText), for: .touchUpInside)
        rightFirstView.tag = 0
        tf.rightView = rightFirstView
        tf.rightViewMode = .always
        
        tf.tag = 1
        tf.addTarget(self, action: #selector(enabledButton), for: .editingChanged)
        
        return tf
    }()
    
    private let firstBorderView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    private let cofirmPasswordLabel: UILabel = {
        let label = UILabel()
        label.text = "Confirm Password"
        label.font = UIFont(name: "Urbanist-Bold", size: 16)
        label.font = .systemFont(ofSize: 18, weight: .bold)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let downTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Confirm your password"
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.isSecureTextEntry = true
        
        let rightFirstView = UIButton(frame: CGRect(x: 0, y: 0, width: 24, height: 24))
        rightFirstView.setBackgroundImage(UIImage(systemName: "eye.slash"), for: .normal)
        rightFirstView.isUserInteractionEnabled = true
        rightFirstView.addTarget(self, action: #selector(hideText), for: .touchUpInside)
        rightFirstView.tag = 1
        tf.rightView = rightFirstView
        tf.rightViewMode = .always
        
        tf.tag = 0
        tf.addTarget(self, action: #selector(enabledButton), for: .editingChanged)
        return tf
    }()
    
    private let secondBorderView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let checkImg: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "1")
        return img
    }()
    
    private let rememberLabel: UILabel = {
        let label = UILabel()
        label.text = "Remember me"
        label.font = UIFont(name: "Urbanist-SemiBold", size: 18)
        label.font = .systemFont(ofSize: 18, weight: .regular)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let continueButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Continue", for: .normal)
        btn.backgroundColor = .red
        btn.layer.cornerRadius = 20
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
        
    }()
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(upLabel)
        
        continueButton.addTarget(self, action: #selector(continueButtonPressed), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            upLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 24),
            upLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            upLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24)
        ])
        
        view.addSubview(downLabel)
        
        NSLayoutConstraint.activate([
            downLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 68),
            downLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            downLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24)
        ])
        
        view.addSubview(passwordLabel)
        
        NSLayoutConstraint.activate([
            passwordLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 150),
            passwordLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            passwordLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24)
        ])
        
        view.addSubview(upTextField)
        
        NSLayoutConstraint.activate([
            upTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 190),
            upTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            upTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24)
        ])
        
        view.addSubview(firstBorderView)
        
        NSLayoutConstraint.activate([
            firstBorderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 230),
            firstBorderView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            firstBorderView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            firstBorderView.heightAnchor.constraint(equalToConstant: 1)
        ])
        
        
        
        view.addSubview(cofirmPasswordLabel)
        
        NSLayoutConstraint.activate([
            cofirmPasswordLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 250),
            cofirmPasswordLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            cofirmPasswordLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24)
        ])
        
        view.addSubview(downTextField)
        
        NSLayoutConstraint.activate([
            downTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 290),
            downTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            downTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24)
        ])
        
        view.addSubview(secondBorderView)
        
        NSLayoutConstraint.activate([
            secondBorderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 330),
            secondBorderView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            secondBorderView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            secondBorderView.heightAnchor.constraint(equalToConstant: 1)
        ])
        
        
        view.addSubview(secondBorderView)
        
        NSLayoutConstraint.activate([
            secondBorderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 330),
            secondBorderView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            secondBorderView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            secondBorderView.heightAnchor.constraint(equalToConstant: 1)
        ])
        
        view.addSubview(checkImg)
        
        NSLayoutConstraint.activate([
            checkImg.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 390),
            checkImg.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            checkImg.heightAnchor.constraint(equalToConstant: 20),
            checkImg.widthAnchor.constraint(equalToConstant: 20)
        ])
        
        view.addSubview(rememberLabel)
        
        NSLayoutConstraint.activate([
            rememberLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 350),
            rememberLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            rememberLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24)
        ])
        
        view.addSubview(continueButton)
        
        NSLayoutConstraint.activate([
            continueButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 650),
            continueButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            continueButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            continueButton.heightAnchor.constraint(equalToConstant: 58)
        ])
        
        
        
    }
    
    
    
    @objc func hideText(_ sender: UIButton) {
        
        switch sender.tag {
        case 0:
            upTextField.isSecureTextEntry = !upTextField.isSecureTextEntry
        case 1:
            downTextField.isSecureTextEntry = !downTextField.isSecureTextEntry
        default:
            break
            
        }
    }
    
    @objc func enabledButton(_ sender: UITextField) {
        guard let password = upTextField.text, let confirmPassword = downTextField.text else { return }
        
        if password.count >= 6 && confirmPassword.count >= 6 {
            continueButton.isEnabled = true
            continueButton.backgroundColor = .red
        } else {
            continueButton.isEnabled = false
            continueButton.backgroundColor = .darkGray
        }
    }
    
    @objc func continueButtonPressed() {
        guard let password = upTextField.text, let confirmPassword = downTextField.text else { return }
        
        if password.count >= 6 && confirmPassword.count >= 6 {
            navigationController?.pushViewController(ContactListViewController(), animated: true)
        }
    }
    
}

    

    


