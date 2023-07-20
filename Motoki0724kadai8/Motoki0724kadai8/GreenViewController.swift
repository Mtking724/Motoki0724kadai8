//
//  greenViewController.swift
//  Motoki0724kadai8
//
//  Created by Motoki Okayasu on 2023/07/17.
//

import UIKit

class GreenViewController: UIViewController {
    //labelとsliderを接続
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    //sliderの初期値を設定、labelに表示する
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slider.value = 0.0
        label.text = String(slider.value)
    }
    
    @IBAction func changeSlider(_ sender: UISlider) {
        //定数valueにsliderの現在の値を取得して代入する
        let value = sender.value
        //DataManagerクラスのプロパティに変数valueを代入する
        DataManager.shared.sliderValue = value
        //labelにsliderの位置を表示させる
        label.text = String(value)
    }
    
    //画面が切り替わる際に呼ばれるメソッドを定義
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //sliderに現在の値を代入する
        slider.value = DataManager.shared.sliderValue
        //labelにsliderの位置を表示する
        self.label.text = "\(slider.value)"
    }
}
