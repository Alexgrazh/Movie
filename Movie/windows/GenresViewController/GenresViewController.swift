//
//  GenresViewController.swift
//  Movie
//
//  Created by Alex Grazhdan on 27.10.2022.
//

import UIKit
import Alamofire

class GenresViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
   
    var setoOfGenres:[Genres] = []

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
    

        let url = "https://api.themoviedb.org/3/genre/movie/list?api_key=3e6e13b4af65d55eed217ca311dfc41e&language=en-US"
        
        AF.request(url).responseJSON { responseJSON in
            let decoder = JSONDecoder()
            guard let respponseData = responseJSON.data else {return}

            do {
                //let filePath = Bundle.main.url(forResource: "MovieData", withExtension: "json")!
                let data = try decoder.decode(ResultsGenres.self, from: respponseData)
               
               // let trending = try JSONDecoder().decode(TrendingMovies.self, from: respons.data!)
            
                self.setoOfGenres = data.genres!
                self.tableView.reloadData()
               
               
                
            } catch {
                print(error)
            }
        }
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return setoOfGenres.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GenreTableViewCell", for: indexPath) as! GenreTableViewCell
        cell.setup(to: setoOfGenres[indexPath.row])
        return cell
    }
   
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
        
    }
   
    

}
