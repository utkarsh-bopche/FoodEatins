//
//  RecipeCell.swift
//  FoodEatins
//
//  Created by Apple on 06/08/21.
//

import UIKit

class RecipeCell: UICollectionViewCell {
    
    @IBOutlet weak var recipeImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       recipeImage.layer.cornerRadius = 10
    }
    
    func configureCell(recipe: Recipe) {
        recipeImage.image = UIImage(named: recipe.imageName)
    }
}
