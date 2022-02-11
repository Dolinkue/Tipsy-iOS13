

import UIKit

class ResultsViewController: UIViewController {
    
    var calculateValue: String?
    var split3: String?

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalLabel.text = calculateValue
        settingsLabel.text = "divido en \(split3!) personas ratas"

    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
    

}
