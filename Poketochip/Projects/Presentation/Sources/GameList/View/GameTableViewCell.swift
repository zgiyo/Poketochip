//
//  GameTableViewCell.swift
//  Presentation
//
//  Created by 마경미 on 25.01.24.
//

import UIKit

import SnapKit
import Kingfisher

final class GameTableViewCell: UITableViewCell {
    static let cellId = "gameTableViewCell"
    
    private let gameImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        return imageView
    }()
    
    private let blurView: UIView = {
        let view = UIView()
        view.alpha = 0.5
        view.layer.backgroundColor = UIColor.black.cgColor
        return view
    }()
    
     private let titleLabel: UILabel = {
         let label = UILabel()
         label.textColor = .white
         return label
     }()
     
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureUI() {
        setAutoLayout()
    }

    private func setAutoLayout() {
        addSubviews(gameImageView, blurView, titleLabel)
        
        gameImageView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        blurView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        titleLabel.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.leading.equalToSuperview().inset(16)
        }
    }
}

extension GameTableViewCell {
    func setCell(_ data: GameModel) {
        titleLabel.text = data.name
        gameImageView.kf.setImage(with: URL(string: data.gameImageURL))
    }
}
