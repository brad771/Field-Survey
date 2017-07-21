

import UIKit

class fieldSurveyDetailViewController: UIViewController {
    
    
    var fieldSurveyEvent: FieldSurveyEvent?
    
    var dateFormatter = DateFormatter()
    
    
    
    @IBOutlet weak var observationIconImageView: UIImageView!

    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var animalNameLabel: UILabel!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium

        self.title = "Observation"
        observationIconImageView.image = fieldSurveyEvent?.classification.image
        animalNameLabel.text = fieldSurveyEvent?.title

        if let date = fieldSurveyEvent?.date{
            dateLabel.text = dateFormatter.string(from: date)
        }
        else{
            dateLabel.text = ""
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    



}
