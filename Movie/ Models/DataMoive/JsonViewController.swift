//
//  JsonViewController.swift
//  Movie
//
//  Created by Alex Grazhdan on 26.10.2022.
//

import UIKit
import Alamofire

class JsonViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = "https://api.themoviedb.org/3/trending/movie/week?api_key=3e6e13b4af65d55eed217ca311dfc41e"
        
        AF.request(url).responseJSON { respons in
            do {
                let filePath = Bundle.main.url(forResource: "MovieData", withExtension: "json")!
                let data = try Data(contentsOf: filePath)
                let trending = try JSONDecoder().decode(TrendingMovies.self, from: respons.data!)
                
                
            } catch {
                print(error)
            }
        }
        
        
        
        
    }
}
