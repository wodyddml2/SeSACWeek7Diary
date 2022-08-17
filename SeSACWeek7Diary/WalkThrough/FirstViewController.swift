import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var tutorialLabel: UILabel!
    @IBOutlet weak var blackView: UIView!
    
    @IBOutlet weak var tutorialImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tutorialLabel.numberOfLines = 0
        tutorialLabel.font = .boldSystemFont(ofSize: 25)
        tutorialLabel.backgroundColor = .red
        tutorialLabel.text = """
        일기 쓰자
        블로그 쓰자
        """
        
        blackView.backgroundColor = .black
        blackView.alpha = 0
        
        tutorialLabel.alpha = 0
        UIView.animate(withDuration: 3) {
            self.tutorialLabel.alpha = 1
//            self.tutorialLabel.backgroundColor = .yellow
        } completion: { _ in
            self.animateBlackView()
        }

        tutorialImageView.image = UIImage(systemName: "star.fill")
        
    }
 
    func animateBlackView() {
        UIView.animate(withDuration: 2) {
            self.blackView.transform = CGAffineTransform(scaleX: 2, y: 1)
            self.blackView.alpha = 1
        } completion: { _ in
            self.animateImageView()
        }
    }
    
    func animateImageView() {
        UIView.animate(withDuration: 1, delay: 0, options:[.autoreverse, .repeat]) {
            self.tutorialImageView.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        } completion: { _ in
            
        }

    }
    
}
