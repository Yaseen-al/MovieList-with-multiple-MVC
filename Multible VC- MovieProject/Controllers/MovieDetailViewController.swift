//
//  MovieDetailViewController.swift
//  Multible VC- MovieProject
//
//  Created by C4Q on 11/2/17.
//  Copyright © 2017 Quark. All rights reserved.
//

import UIKit

class MovieDetailViewController: UIViewController {
    
    @IBOutlet weak var posterImage: UIImageView!
    
    
    @IBOutlet weak var yearLabel: UILabel!
    
    @IBOutlet weak var actorLabel: UILabel!
    
    @IBOutlet weak var descriptionTextView: UITextView!
    var movie:Movie? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let movie = movie else {
            return
        }
        posterImage.image = UIImage(named: movie.posterImageName)
        yearLabel.text = String(movie.year)
        actorLabel.text = movie.cast.joined(separator: ", ")
        descriptionTextView.text = movie.description
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
