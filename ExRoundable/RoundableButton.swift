//
//  RoundableButton.swift
//  ExRoundable
//
//  Created by 김종권 on 2022/05/29.
//

import UIKit

final class RoundableButton: UIButton {
  override func layoutSubviews() {
    super.layoutSubviews()
    self.layer.cornerRadius = min(self.frame.width, self.frame.height) / 2
  }
}
