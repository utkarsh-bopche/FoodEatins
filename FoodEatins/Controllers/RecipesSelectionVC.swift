//
//  RecipesSelectionVC.swift
//  FoodEatins
//
//  Created by Apple on 06/08/21.
//

import UIKit

class RecipesSelectionVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
   

    @IBOutlet weak var collectionView: UICollectionView!
    
    var selectedCategory : String!
    var recipes: [Recipe]!
    let data = DataSet()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        recipes = data.getRecipes(forCategoryTitle: selectedCategory)
       
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return recipes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "recipeCell", for: indexPath) as? RecipeCell {
            let recipe = recipes[indexPath.row]
        cell.configureCell(recipe: recipe)
            return cell
        }
        return UICollectionViewCell()
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = view.bounds.width
        let cellDimension = (width/2 )
        return CGSize(width: cellDimension, height: cellDimension)
    }
    
}
