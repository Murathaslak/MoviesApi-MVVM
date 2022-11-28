//
//  MovieCell.swift
//  MoviesApi-MVVM
//
//  Created by Osman Murat Haslak on 25.11.2022.
//

import UIKit

final class MovieCell: UICollectionViewCell {
    static let reuseID = "MovieCell"
    
    private var posterImageView: PosterImageView!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureCell()
        configurePosterImageView()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setCell(movie: MovieResult){
        posterImageView.downloadImage(movie: movie )
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        posterImageView.image = nil
        posterImageView.cancelDownloading()
    }
    
    private func configureCell(){
        backgroundColor = .systemGray5
        layer.cornerRadius = 16
        clipsToBounds = true
    }
    
    private func configurePosterImageView(){
        posterImageView = PosterImageView(frame: .zero)
        addSubview(posterImageView)
        

        posterImageView.pinToEdgesOf(view: self)
        
    }
}
