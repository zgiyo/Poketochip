//
//  TempCapsuleView.swift
//  Presentation
//
//  Created by cha_nyeong on 1/23/24.
//

import UIKit
import SnapKit

final class TempCapsuleView: BaseView<EmptyViewModel> {
    
    private let label: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.white
        label.textAlignment = .center
        return label
    }()
    
    internal init(text: String, backgroundColor: UIColor) {
        super.init(frame: .zero)
        
        // 배경색 설정
        self.backgroundColor = backgroundColor
        self.layer.cornerRadius = 17
        
        // UILabel의 텍스트 설정
        label.text = text
        
        // 뷰에 UILabel 추가
        addSubview(label)
        
        // Auto Layout 설정
        label.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(12)
            $0.trailing.equalToSuperview().inset(12)
            $0.top.equalToSuperview().inset(7)
            $0.bottom.equalToSuperview().inset(7)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
