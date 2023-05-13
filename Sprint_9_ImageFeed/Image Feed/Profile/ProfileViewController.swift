import UIKit

final class ProfileViewController: UIViewController {
    private var label: UILabel?
       
       override func viewDidLoad() {
           super.viewDidLoad()
           
           let profileImage = UIImage(named: "avatar")
           let imageView = UIImageView(image: profileImage)
           imageView.translatesAutoresizingMaskIntoConstraints = false
           view.addSubview(imageView)
           imageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 32).isActive = true
           imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16).isActive = true
           imageView.widthAnchor.constraint(equalToConstant: 70).isActive = true
           imageView.heightAnchor.constraint(equalToConstant: 70).isActive = true
           
           let labelName = UILabel()
           labelName.text = "Екатерина Новикова"
           labelName.translatesAutoresizingMaskIntoConstraints = false
           view.addSubview(labelName)
           labelName.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
           labelName.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 8).isActive = true
           labelName.textColor = .white
           labelName.font = UIFont.systemFont(ofSize: 23.0, weight: .bold)
           self.label = labelName
           
           let labelSocial = UILabel()
           labelSocial.text = "@ekaterina_nov"
           labelSocial.translatesAutoresizingMaskIntoConstraints = false
           view.addSubview(labelSocial)
           labelSocial.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
           labelSocial.topAnchor.constraint(equalTo: labelName.bottomAnchor, constant: 8).isActive = true
           labelSocial.textColor = .gray
           labelSocial.font = UIFont.systemFont(ofSize: 13.0, weight: .regular)
           self.label = labelName
           
           let labelText = UILabel()
           labelText.text = "Hello, world!"
           labelText.translatesAutoresizingMaskIntoConstraints = false
           view.addSubview(labelText)
           labelText.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
           labelText.topAnchor.constraint(equalTo: labelSocial.bottomAnchor, constant: 8).isActive = true
           labelText.textColor = .white
           labelText.font = UIFont.systemFont(ofSize: 18.0, weight: .regular)
           self.label = labelText
           
           let button = UIButton.systemButton(
               with: UIImage(systemName: "ipad.and.arrow.forward")!,
               target: self,
               action: #selector(Self.didTapButton)
           )
           button.tintColor = UIColor(named: "YP Red")
           button.translatesAutoresizingMaskIntoConstraints = false
           view.addSubview(button)
           button.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -24).isActive = true
           button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -56).isActive = true
           button.centerYAnchor.constraint(equalTo: imageView.centerYAnchor).isActive = true
       }
       
       @objc
       private func didTapButton() {
           
           label?.removeFromSuperview()
           label = nil
           
           
           for view in view.subviews {
               if view is UILabel {
                   view.removeFromSuperview()
               }
           }
       }
}
