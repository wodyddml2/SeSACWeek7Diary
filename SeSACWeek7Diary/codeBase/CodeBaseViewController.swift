import UIKit

import SnapKit

class CodeBaseViewController: UIViewController {
    
    let backgroundImageView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "abstract")
        view.contentMode = .scaleAspectFit
        view.backgroundColor = .black
        return view
    }()
    //
    let backButton: UIButton = {
        let view = UIButton()
        view.upperButton("xmark")
        return view
    }()
    let giftButton: UIButton = {
        let view = UIButton()
        view.upperButton("gift.circle")
        
        return view
    }()
    let remitButton: UIButton = {
        let view = UIButton()
        view.upperButton("circle.grid.3x3.circle")
        
        return view
    }()
    let settingButton: UIButton = {
        let view = UIButton()
        view.upperButton("gearshape.circle")
        
        return view
    }()
    
    //
    let profileImageView: UIImageView = {
        let view = UIImageView()
        view.layer.masksToBounds = true
        view.layer.cornerRadius = 40
        
        view.image = UIImage(named: "Toms")
        view.backgroundColor = .white
        view.contentMode = .scaleAspectFill
        
        return view
    }()
    let profileButton: UIButton = {
        let view = UIButton()
        view.setTitle("", for: .normal)
        return view
    }()
    let profileNameLabel: UILabel = {
        let view = UILabel()
        view.boldTextStyle("Tom", 20)
        
        return view
    }()
    let profileMessageLabel: UILabel = {
        let view = UILabel()
        view.boldTextStyle("Tom Hardy is Cool", 17)
        return view
    }()
    let sectionLineView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        
        return view
    }()
    //
    let chattingImageView: UIImageView = {
       let view = UIImageView()
        view.underImageView("message.fill")
        return view
    }()
    let chattingLabel: UILabel = {
        let view = UILabel()
        view.systemTextStyle("나와의 채팅")
        return view
    }()
    let chattingButton: UIButton = {
        let view = UIButton()
        view.setTitle("", for: .normal)
        return view
    }()
    
    let profileEditImageView: UIImageView = {
       let view = UIImageView()
        view.underImageView("pencil")
        return view
    }()
    let profileEditLabel: UILabel = {
        let view = UILabel()
        view.systemTextStyle("프로필 편집")
        return view
    }()
    let profileEditButton: UIButton = {
        let view = UIButton()
        view.setTitle("", for: .normal)
        return view
    }()
    
    let kakaoStoryImageView: UIImageView = {
       let view = UIImageView()
        view.underImageView("bookmark.fill")
        return view
    }()
    let kakaoStoryLabel: UILabel = {
        let view = UILabel()
        view.systemTextStyle("카카오스토리")
        return view
    }()
    let kakaoStoryButton: UIButton = {
        let view = UIButton()
        view.setTitle("", for: .normal)
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topConfigureUI()
        middleConfigureUI()
        bottomConfigureUI()
    }
    
    func topConfigureUI() {
        view.addSubview(backgroundImageView)
        
        [backButton, giftButton, remitButton, settingButton].forEach {
            backgroundImageView.addSubview($0)
        }
        
        backgroundImageView.snp.makeConstraints { make in
            make.leading.equalTo(0)
            make.trailing.equalTo(0)
            make.top.equalTo(0)
            make.bottom.equalTo(0)
        }
        
        backButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.leadingMargin.equalTo(16)
            make.width.equalTo(view).multipliedBy(0.06)
            make.height.equalTo(backButton.snp.width).multipliedBy(1)
        }
        
        settingButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.trailingMargin.equalTo(-16)
            make.width.equalTo(view).multipliedBy(0.07)
            make.height.equalTo(settingButton.snp.width).multipliedBy(1)
        }
        
        remitButton.snp.makeConstraints { make in
            make.trailing.equalTo(settingButton.snp.leading).offset(-10)
            make.centerY.equalTo(settingButton)
            make.width.equalTo(settingButton.snp.width).multipliedBy(1)
            make.height.equalTo(remitButton.snp.width).multipliedBy(1)
        }
        giftButton.snp.makeConstraints { make in
            make.trailing.equalTo(remitButton.snp.leading).offset(-10)
            make.centerY.equalTo(remitButton)
            make.width.equalTo(remitButton.snp.width).multipliedBy(1)
            make.height.equalTo(giftButton.snp.width).multipliedBy(1)
        }
    }
    
    func middleConfigureUI() {
        [profileImageView, profileNameLabel, profileMessageLabel, sectionLineView].forEach {
            backgroundImageView.addSubview($0)
        }
        profileImageView.addSubview(profileButton)
        
        profileImageView.snp.makeConstraints { make in
            make.centerY.equalTo(view).offset(UIScreen.main.bounds.height / 6.5)
            make.centerX.equalTo(view)
            make.width.equalTo(view).multipliedBy(0.3)
            make.height.equalTo(profileImageView.snp.width).multipliedBy(1)
        }
        
        profileButton.snp.makeConstraints { make in
            make.top.equalTo(profileImageView)
            make.bottom.equalTo(profileImageView)
            make.leading.equalTo(profileImageView)
            make.trailing.equalTo(profileImageView)
        }
        
        profileNameLabel.snp.makeConstraints { make in
            make.top.equalTo(profileImageView.snp.bottom).offset(12)
            make.centerX.equalTo(profileImageView)
        }
        
        profileMessageLabel.snp.makeConstraints { make in
            make.top.equalTo(profileNameLabel.snp.bottom).offset(8)
            make.centerX.equalTo(profileNameLabel)
            make.leading.greaterThanOrEqualTo(view).offset(8)
            make.trailing.greaterThanOrEqualTo(view).offset(-8)
        }
        
        sectionLineView.snp.makeConstraints { make in
            make.top.equalTo(profileMessageLabel.snp.bottom).offset(20)
            make.width.equalTo(view)
            make.height.equalTo(0.6)
        }
    }
    
    func bottomConfigureUI() {
        [profileEditImageView,profileEditLabel,chattingImageView,chattingLabel,kakaoStoryImageView,kakaoStoryLabel].forEach {
            backgroundImageView.addSubview($0)
        }
        profileEditImageView.addSubview(profileEditButton)
        chattingImageView.addSubview(chattingButton)
        kakaoStoryImageView.addSubview(kakaoStoryButton)
        
        profileEditImageView.snp.makeConstraints { make in
            make.centerX.equalTo(sectionLineView)
            make.top.equalTo(sectionLineView.snp.bottom).offset(20)
            make.width.equalTo(profileImageView).multipliedBy(0.23)
            make.height.equalTo(profileEditImageView.snp.width)
        }
        profileEditLabel.snp.makeConstraints { make in
            make.centerX.equalTo(profileEditImageView)
            make.top.equalTo(profileEditImageView.snp.bottom).offset(12)

        }
        profileEditButton.snp.makeConstraints { make in
            make.top.equalTo(profileEditImageView)
            make.leading.equalTo(profileEditLabel)
            make.trailing.equalTo(profileEditLabel)
            make.bottom.equalTo(profileEditLabel)
        }
        //
        chattingImageView.snp.makeConstraints { make in
            make.centerY.equalTo(profileEditImageView)
            make.trailing.equalTo(profileEditImageView.snp.leading).offset(-85)
            make.width.equalTo(profileImageView).multipliedBy(0.23)
            make.height.equalTo(profileEditImageView.snp.width)
        }
        chattingLabel.snp.makeConstraints { make in
            make.centerX.equalTo(chattingImageView)
            make.top.equalTo(chattingImageView.snp.bottom).offset(12)

        }
        chattingButton.snp.makeConstraints { make in
            make.top.equalTo(chattingImageView)
            make.leading.equalTo(chattingLabel)
            make.trailing.equalTo(chattingLabel)
            make.bottom.equalTo(chattingLabel)
        }
        
        //
        
        kakaoStoryImageView.snp.makeConstraints { make in
            make.centerY.equalTo(profileEditImageView)
            make.leading.equalTo(profileEditImageView.snp.trailing).offset(85)
            make.width.equalTo(profileImageView).multipliedBy(0.23)
            make.height.equalTo(profileEditImageView.snp.width)
        }
        kakaoStoryLabel.snp.makeConstraints { make in
            make.centerX.equalTo(kakaoStoryImageView)
            make.top.equalTo(kakaoStoryImageView.snp.bottom).offset(12)

        }
        kakaoStoryButton.snp.makeConstraints { make in
            make.top.equalTo(kakaoStoryImageView)
            make.leading.equalTo(kakaoStoryLabel)
            make.trailing.equalTo(kakaoStoryLabel)
            make.bottom.equalTo(kakaoStoryLabel)
        }
        
    }
    
}

extension UILabel {
    func boldTextStyle(_ title: String, _ size: CGFloat) {
        self.text = "Tom"
        self.textColor = .white
        self.font = .boldSystemFont(ofSize: size)
        self.textAlignment = .center
    }
    
    func systemTextStyle(_ title: String) {
        self.text = title
        self.textColor = .white
        self.font = .systemFont(ofSize: 16)
        self.textAlignment = .center
    }
}
extension UIButton {
    func upperButton(_ name: String) {
        self.setBackgroundImage(UIImage(systemName: name), for: .normal)
        self.tintColor = .white
    }
}
extension UIImageView {
    func underImageView(_ name: String) {
        self.image = UIImage(systemName: name)
        self.tintColor = .white
    }
}
