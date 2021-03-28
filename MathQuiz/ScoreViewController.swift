//
//  ScoreViewController.swift
//  MathQuiz
//
//  Created by sekiharuhito on 2021/03/10.
//

import UIKit

class ScoreViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var shareButton: UIButton!
    @IBOutlet weak var returnTopButton: UIButton!
    
    var correct=0
    var quizNumber=0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreLabel.text = "\(quizNumber)問中 \(correct)問正解！"
        shareButton.layer.borderWidth = 2
        shareButton.layer.borderColor = UIColor.black.cgColor
        returnTopButton.layer.borderWidth = 2
        returnTopButton.layer.borderColor = UIColor.black.cgColor
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func shareButtonAction(_ sender: Any) {
        let activityItems = ["\(quizNumber)問中 \(correct)問正解しました。","#英単語クイズ #小中学生の英語暗記"]
        let activityVC = UIActivityViewController(activityItems: activityItems, applicationActivities: nil)
        self.present(activityVC, animated: true)
    }
    
    @IBAction func toTopButtonAction(_ sender: Any) {
        self.presentingViewController?.presentingViewController?.presentingViewController?.dismiss(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
