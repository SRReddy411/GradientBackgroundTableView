//
//  ViewController.swift
//  TableViewExpandWithImage
//
//  Created by RamiReddy on 12/02/20.
//  Copyright © 2020 RamiReddy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var listTableView: UITableView!
    
    var textArray = ["Child care, otherwise known as day care, is the care and supervision of a child or multiple children at a time, whose ages range from six weeks to thirteen years. Child care is the action or skill of looking after children by a day-care center, nannies","In most cases children are taken care of by their parents, legal guardians, or siblings. In some cases, it is also seen that children care for other childrenIn most cases children are taken care of by their parents, legal guardians, or siblings. In some cases, it is also seen that children care for other childrenIn most cases children are taken care of by their parents, legal guardians, or siblings. In some cases, it is also seen that children care for other childrenIn most cases children are taken care of by their parents, legal guardians, or siblings. In some cases, it is also seen that children care for other childrenIn most cases children are taken care of by their parents, legal guardians, or siblings. In some cases, it is also seen that children care for other childrenIn most cases children are taken care of by their parents, legal guardians, or siblings. In some cases, it is also seen that children care for other childrenIn most cases children are taken care of by their parents, legal guardians, or siblings. In some cases, it is also seen that children care for other childrenIn most cases children are taken care of by their parents, legal guardians, or siblings. In some cases, it is also seen that children care for other childrenIn most cases children are taken care of by their parents, legal guardians, or siblings. In some cases, it is also seen that children care for other childrenIn most cases children are taken care of by their parents, legal guardians, or siblings. In some cases, it is also seen that children care for other childrenIn most cases children are taken care of by their parents, legal guardians, or siblings. In some cases, it is also seen that children care for other childrenRamiREDDY","This informal care includes verbal direction and other explicit training regarding the child's behavior, and is often as simple as keeping an eye out for younger siblings.[2] Care facilitated by similar-aged children covers a variety of developmental and psychological effects in both caregivers and charge"," Early child care is an equally important and often overlooked component of child development. Child care providers can be children's first teachers, and therefore play an integral role in systems of early childhood education","Professional caregivers work within the context of a center-based care (including crèches, daycare, preschools and schools) or a home-based care (nannies or family daycare)","In a childcare center, teachers focus on the physical and mental developments of their students. In order to have a greater understanding of the student, teachers in centers must incorporate a relationship with their students that benefits their wants and needs while pushing them toward a higher set of values. This type of teaching with a caring relationship will improve a student's moral and incidental learning.[9] Elementary school teacher dictating students (2003, Tehran).Commercial care center also known as daycares are open for set hours, and provide a standardized and regulated system of care for children. Parents may choose from a commercial care center close to their work, and some companies may even offer care at their facilities. A form in which parents pick the child care facility can be based on their mission statement and the objectives they find necessary to be addressed. Center based child care should have their mission written out and include one of the main components which is health promotion"]
    
    
    
    var imagesArray = ["images.jpeg","angryimg-2.png","angryimg-3.png","angryimg.png"]
     
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

extension ViewController:UITableViewDelegate,UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.textArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.listTableView.dequeueReusableCell(withIdentifier: "ExpandTableViewCell", for: indexPath) as! ExpandTableViewCell
        cell.normal_lbl.text = textArray[indexPath.row]
         let colorTop = imagesArray[indexPath.row % imagesArray.count]
        cell.imgeBackground.image = UIImage(named: colorTop)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}


extension UIView{
    func addGradientBackground(firstColor: UIColor, secondColor: UIColor){
        clipsToBounds = true
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [firstColor.cgColor, secondColor.cgColor]
        gradientLayer.frame = self.bounds
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0, y: 1)
        print(gradientLayer.frame)
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
}
