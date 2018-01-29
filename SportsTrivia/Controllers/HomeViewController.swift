//
//  HomeViewController.swift
//  SportsTrivia
//
//  Created by Luis Vega on 1/28/18.
//  Copyright © 2018 Vega. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    // MARK: Life Cycle
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        emptySpace.text = ""
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var emptySpace: UILabel!
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let quizViewController = segue.destination as! QuizViewController
        
        switch  segue.identifier! {
        case "FootballQuestions" :
            quizViewController.quizType = QuizType.football
            quizViewController.view.backgroundColor = UIColor(red:0.00, green:0.44, blue:0.05, alpha:1.0)
        case "BasketballQuestions" :
            quizViewController.quizType = QuizType.basketball
            quizViewController.view.backgroundColor = UIColor.brown
        case "BaseballQuestions" :
            quizViewController.quizType = QuizType.baseball
            quizViewController.view.backgroundColor = UIColor(red:0.00, green:0.47, blue:0.79, alpha:1.0)
        case "HockeyQuestions" :
            quizViewController.quizType = QuizType.hockey
            quizViewController.view.backgroundColor = UIColor(red:0.75, green:0.75, blue:0.75, alpha:1.0)
        case "SoccerQuestions" :
            quizViewController.quizType = QuizType.soccer
            quizViewController.view.backgroundColor = UIColor(red:0.00, green:0.44, blue:0.05, alpha:1.0)
        default:
            print("No segue")
            
        }
    }
    
}

