//
//  MovieViewController.swift
//  Multible VC- MovieProject
//
//  Created by C4Q on 11/2/17.
//  Copyright © 2017 Quark. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var  myMovie = MovieData.movies
    @IBOutlet weak var myTableView: UITableView!
    
    // required function
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myMovie.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row % 2 == 0 {
        guard let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "Righ Movie Cell") else {
            let defaulTCell = UITableViewCell()
            return defaulTCell
        }
        if let movieCell = cell as? RightMovieTableViewCell{
            let rowSetup = indexPath.row
            let movieSetup = myMovie[rowSetup]
            movieCell.moviePoster.image = UIImage(named: movieSetup.posterImageName)
            movieCell.movieName.text = movieSetup.name.capitalized
            movieCell.movieGenre.text = movieSetup.genre.capitalized
            return movieCell
        }
        return cell
        }
        else{
            guard let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "Left Movie Cell") else {
                let defaulTCell = UITableViewCell()
                return defaulTCell
            }
            if let movieCell = cell as? LeftMovieTableViewCell{
                let rowSetup = indexPath.row
                let movieSetup = myMovie[rowSetup]
                movieCell.posterImage.image = UIImage(named: movieSetup.posterImageName)
                movieCell.movieName.text = movieSetup.name.capitalized
                movieCell.movieGenre.text = movieSetup.genre.capitalized
                return movieCell
            }
            return cell
        }
    }
    override func viewDidLoad() {
        loadData()
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.myTableView.delegate = self
        myTableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadData() {
        self.myMovie = MovieData.movies
    }
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destinationViewController.
        if let destination = segue.destination as? MovieDetailViewController{
            let selectedRow = self.myTableView.indexPathForSelectedRow!.row
            let selectedMovie = self.myMovie[selectedRow]
            destination.movie = selectedMovie
        }
        // Pass the selected object to the new view controller.
    }


    
    
    
    
    
    
    
    
    
}
