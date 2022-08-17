import UIKit
import SeSACUIFramework

class ViewController: UIViewController {

    var name = "고래밥"
    // Internal,fileprivate,private는 같은 모듈 내에서만 사용 가능, 다른 모듈에서 사용하고 싶다면(ex.framework, openSource) open, public
    private var age = 22
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let vc = CodeBaseViewController()
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
        
//        showSesacAlert(title: "테스트", message: "테스트 중", buttonTitle: "변경") { _ in
//            self.view.backgroundColor = .lightGray}
        
//        let image = UIImage(systemName: "star.fill")!
//        let shareURL = "https://www.apple.com"
//        let text = "WWDC What's New!"
//
//        sesacShowActivityViewController(shareImage: image, shareURL: shareURL, shareText: text)
//
        OpenWebView.presentWebViewController(self, url: "https://www.naver.com", transitionStyle: .present)
        
    }
}

