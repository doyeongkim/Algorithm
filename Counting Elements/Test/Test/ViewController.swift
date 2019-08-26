//
//  ViewController.swift
//  Test
//
//  Created by Solji Kim on 11/07/2019.
//  Copyright © 2019 Doyeong Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let label2 = UILabel()
    let button2 = UIButton()
    var change = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(label2
        )
        label2.frame = view.frame
        label2.backgroundColor = .white
        label2.numberOfLines = 4
        label2.text = """
        안녕하세요. 저는 비건 화장품 '멜릭서’의 대표 이하나입니다. \n멜릭서는 100% 식물성 성분만을 사용하며, 화장품 동물실험에 반대하는 비건 화장품 브랜드입니다. "내가 매일 사용하는 화장품으로도 환경에 기여할 수있을까?" 저는 지난 6년동안 화장품 회사에서 일을 하면서 수없이 생산되는 화장품들을 접했습니다. 오랜 시간에걸쳐 사람들이 조금 더 예뻐지기 위한 - 피부 미용을 위한 제품인 '화장품’의 생산 과정들을 알게 되었습니다. 그 과정에서 발생하는 많은 플라스틱으로 인한 환경 파괴와 동물 학대에 대해 알게되었고, 비거니즘을 화장품에 적용하면 어떨까라는 생각을 했습니다. 그래서 동물의 희생도 줄이고 또 동시에 피부에도 좋은 비건 화장품 브랜드를 만들게 되었습니다. 멜릭서는 비건이라는 생소한 분야를 알리고 비건 커뮤니티를 더 키워가고 싶어 이 클래스를 시작하였습니다:)
        """
        
        view.addSubview(button2)
        button2.frame = CGRect(x: 200, y: 50, width: 100, height: 50)
        button2.setTitle("change", for: .normal)
        button2.setTitleColor(.blue, for: .normal)
        button2.addTarget(self, action: #selector(buttonTap), for: .touchUpInside)
    }
    
    @objc func buttonTap() {
        
        UIView.animate(withDuration: 0.5) {
            switch self.change {
            case true :
                self.label2.numberOfLines = 4
            case false :
                self.label2.numberOfLines = 0
            }
        }
        change.toggle()
    }


}

