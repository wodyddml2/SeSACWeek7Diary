import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var tutorialLabel: UILabel!
    @IBOutlet weak var blackView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tutorialLabel.numberOfLines = 0
        tutorialLabel.font = .boldSystemFont(ofSize: 25)
        tutorialLabel.text = """
        일기 쓰자
        블로그 쓰자
        """
        
        blackView.backgroundColor = .black
        blackView.alpha = 0
        
        tutorialLabel.alpha = 0
        UIView.animate(withDuration: 3) {
            self.tutorialLabel.alpha = 1
        } completion: { _ in
            self.animateBlackView()
        }

    }
 
    func animateBlackView() {
        UIView.animate(withDuration: 2, delay: 3) {
            self.blackView.transform = CGAffineTransform(scaleX: 2, y: 1)
            self.blackView.alpha = 1
        } completion: { _ in

        }
    }
    
}
