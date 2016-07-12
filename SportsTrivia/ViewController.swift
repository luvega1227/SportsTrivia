

import UIKit

class ViewController: UIViewController {
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }
    
    let questions: [String] = ["One of the greatest Hockey players of all time, Wayne Gretzky, played for what team in the 1980s?",
                               "Muhammad Ali retired from boxing in 1981, what was his career record?",
                               "In what year were the first Wimbledon Tennis Championships held in England?",
                               "The first World Cup for Soccer (Football) was held in which country in 1930?",
                               "The Olympic Games were not held during which three years, for what reason?",
                               "What European country team won the 2016 Euro Cup for Football (Soccer)?",
                               "NBA team that won the 2016 championship?",
                               "Hockey team that won the Stanely Cup finals in 2016?",
                               "Which was the only team to win two World Series in the 1980s?",
                               "After retiring as a player, with which team did baseball great Babe Ruth spend one year as a coach?",
                               "Why did the year 1994 see no baseball World Series?",
                               "In 1990, two baseball greats created history by becoming the first father-son duo to hit back-to-back homers in an MLB game.",
                               "Which is the only country to have played in each and every World Cup?",
                               "Which was the first African country to qualify for a World Cup?",
                               "What is 'El Clásico'?",
                               "What is an NBA player deemed to be if he has received the Maurice Podoloff Trophy?",
                               "Which basketball team is as well-known for their comic antics as for their on-court skills?",
                               "Which country dominates Olympics basketball like no one else?",
                               "Which type of ball was basketball played with until 1929?",
                               "What was basketball move was banned from 1967 to 1976?",
                               "Which NFL team is known as the 'ain'ts' when on a losing streak?",
                               "Who is the only coach to win both a Super Bowl and a Rose Bowl?",
                               "Before the NFL mandated the use of helmets in 1943, who was the last player not to use one?",
                               "Which is the coldest game in NFL history?",
                               "Which was the first televised game of the NFL?",
                               "What was the first sport in which women were invited to compete at the Olympics?",
                               "Which sport did George Washington play with his troops?",
                               "Who was the 1st non-European to win the Tour de France?",
                               "What is the maximum time limit allowed to look for a lost ball in golf?"
    ]
    
    
    let answers: [String] = ["Edmonton Oilers",
                             "55 wins, 5 defeats",
                             "1877",
                             "Uruguay",
                             "1916, 1940, 1944, World Wars I and II",
                             "Portugal",
                             "Cleveland Cavaliers",
                             "Pittsburgh Penguins",
                             "Los Angeles Dodgers",
                             "The Brooklyn Dodgers: 1938",
                             "Player's strike",
                             "Ken Griffey Sr. and Ken Griffey Jr.",
                             "Brazil",
                             "Egypt: 1934",
                             "A game between club giants Real Madrid and Barcelona",
                             "The most valuable player (MVP)",
                             "Harlem Globetrotters",
                             "USA has won the gold 14 times out of 18 editions",
                             "Soccer ball",
                             "Slam dunk",
                             "The New Orleans Saints",
                             "Dick Vermeil",
                             "Chicago Bears lineman Dick Plasman",
                             "1967 NFL Championship game between the Dallas Cowboys and the Green Bay Packers: -13 degrees",
                             "Oct 22, 1939: The Brooklyn Dodgers Vs. Philadelphia Eagles (broadcast by NBC to 500 TV sets)",
                             "Tennis, at the 1900 games in Paris. Charlotte Cooper of Great Britain was the first gold medalist.",
                             "Cricket",
                             "Greg Lemond from the US",
                             "5 minutes"
    ]
    
    var currentQuestionIndex: Int = 0
    
    @IBAction func showNextQuestions(sender: AnyObject) {
        ++currentQuestionIndex
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(sender: AnyObject) {
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    
}