//
//  CharactersViewController.swift
//  GOW
//
//  Created by Winonito Programmer on 15/03/25.
//

import UIKit

class CharactersViewController: UICollectionViewController {
    
    @IBOutlet weak var cCollectionView: UICollectionView!
    
    // Data source
    let characters: [Character] = [
        Character(name: "Marcus Fenix", image: "marcus_fenix"),
        Character(name: "Dominic Santiago", image: "dominic_santiago"),
        Character(name: "Augustus Cole", image: "augustus_cole"),
        Character(name: "Damon Baird", image: "damon_baird"),
        Character(name: "Anya Stroud", image: "anya_stroud")
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        if let layout = collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .vertical
            layout.minimumLineSpacing = 10
            layout.minimumInteritemSpacing = 10
        }
        
    }
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return characters.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "charactersCell", for: indexPath) as! CharactersCell
        
        let character = characters[indexPath.row]
        cell.cName.text = character.name
        cell.cPoster.image = UIImage(named: character.image)
        return cell
    }
}
