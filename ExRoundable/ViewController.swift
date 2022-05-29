//
//  ViewController.swift
//  ExRoundable
//
//  Created by 김종권 on 2022/05/29.
//

import UIKit

class ViewController: UIViewController {
  private let button: UIButton = {
    let button = UIButton()
    button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    button.backgroundColor = .gray
//    button.layer.cornerRadius =
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  private let label: UILabel = {
    let label = UILabel()
    label.text = "button"
    label.textColor = .white
    label.font = .systemFont(ofSize: 24)
    label.numberOfLines = 1
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  private let circleView: UIView = {
    let view = UIView()
    view.backgroundColor = .orange
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  private let secondView: UIView = {
    let view = UIView()
    view.backgroundColor = .orange
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  private let roundableButton: RoundableButton = {
    let button = RoundableButton()
    button.backgroundColor = .gray
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  private let roundableButtonLabel: UILabel = {
    let label = UILabel()
    label.text = "roundable button"
    label.textColor = .white
    label.font = .systemFont(ofSize: 24)
    label.numberOfLines = 1
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.view.addSubview(self.button)
    self.button.addSubview(self.label)
    self.view.addSubview(self.circleView)
    self.view.addSubview(self.secondView)
    self.view.addSubview(self.roundableButton)
    self.roundableButton.addSubview(self.roundableButtonLabel)
    
    NSLayoutConstraint.activate([
      self.button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
      self.button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
    ])
    NSLayoutConstraint.activate([
      self.label.leftAnchor.constraint(equalTo: self.button.leftAnchor, constant: 16),
      self.label.rightAnchor.constraint(equalTo: self.button.rightAnchor, constant: -16),
      self.label.bottomAnchor.constraint(equalTo: self.button.bottomAnchor, constant: -8),
      self.label.topAnchor.constraint(equalTo: self.button.topAnchor, constant: 8),
    ])
    NSLayoutConstraint.activate([
      self.circleView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 120),
      self.circleView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
      self.circleView.widthAnchor.constraint(equalToConstant: 120),
      self.circleView.heightAnchor.constraint(equalToConstant: 120)
    ])
    NSLayoutConstraint.activate([
      self.secondView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -120),
      self.secondView.heightAnchor.constraint(equalToConstant: 80),
      self.secondView.widthAnchor.constraint(equalToConstant: 120),
      self.secondView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
    ])
    NSLayoutConstraint.activate([
      self.roundableButton.topAnchor.constraint(equalTo: self.circleView.bottomAnchor, constant: 16),
      self.roundableButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
    ])
    NSLayoutConstraint.activate([
      self.roundableButtonLabel.leftAnchor.constraint(equalTo: self.roundableButton.leftAnchor, constant: 16),
      self.roundableButtonLabel.rightAnchor.constraint(equalTo: self.roundableButton.rightAnchor, constant: -16),
      self.roundableButtonLabel.bottomAnchor.constraint(equalTo: self.roundableButton.bottomAnchor, constant: -8),
      self.roundableButtonLabel.topAnchor.constraint(equalTo: self.roundableButton.topAnchor, constant: 8),
    ])
  }
  
  @objc private func didTapButton() {
    
  }
  
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    print(self.button.frame)
    self.button.layer.cornerRadius = self.button.frame.height / 2
    self.circleView.layer.cornerRadius = 60
    self.secondView.layer.cornerRadius = 60
  }
}
