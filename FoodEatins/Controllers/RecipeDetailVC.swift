//
//  RecipeDetailVC.swift
//  FoodEatins
//
//  Created by Apple on 09/08/21.
//

import UIKit

class RecipeDetailVC: UIViewController {

    
    @IBOutlet weak var recipeImage: UIImageView!
    @IBOutlet weak var recipeTitle: UILabel!
    @IBOutlet weak var recipeInstructions: UILabel!
    var selectedRecipe : Recipe!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        recipeImage.image = UIImage(named: selectedRecipe.imageName)
        recipeTitle.text = selectedRecipe.title
        recipeInstructions.text = selectedRecipe.instructions
       
    }
    


}
