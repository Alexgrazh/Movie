//
//  MoiveViewController.swift
//  Movie
//
//  Created by Alex Grazhdan on 21.10.2022.
//

import UIKit
import Alamofire


class MoiveViewController: UIViewController {

    
    var mediaArray :[Results] = []
    
    @IBOutlet weak var collectoinView: UICollectionView!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectoinView.dataSource = self
        collectoinView.delegate = self
        collectoinView.collectionViewLayout = UICollectionViewFlowLayout()
        
        let url = "https://api.themoviedb.org/3/trending/movie/week?api_key=3e6e13b4af65d55eed217ca311dfc41e"
        
        AF.request(url).responseJSON { responseJSON in
            let decoder = JSONDecoder()
            guard let respponseData = responseJSON.data else {return}

            do {
                //let filePath = Bundle.main.url(forResource: "MovieData", withExtension: "json")!
                let data = try decoder.decode(TrendingMovies.self, from: respponseData)
                print(data.results?.first?.overview ?? "")
               // let trending = try JSONDecoder().decode(TrendingMovies.self, from: respons.data!)
            
                self.mediaArray = data.results!
                self.collectoinView.reloadData()
               
               
                
            } catch {
                print(error)
            }
        }
        
        
        
    }
    

    

}
extension MoiveViewController : UICollectionViewDataSource{

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mediaArray.count
    }
   
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MoiveCollectionViewCell", for: indexPath) as! MoiveCollectionViewCell
        cell.setup(media: mediaArray[indexPath.row])
        return cell
    }
}

extension MoiveViewController: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 175, height: 275)
    }

    
    

}

extension MoiveViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(mediaArray[indexPath.row].title!)
    }
}


