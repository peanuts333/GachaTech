//
//  ResultViewController.swift
//  GachaTech
//
//  Created by user on 2022/05/10.
//

import UIKit

class ResultViewController: UIViewController {
    //一番後ろの背景画像
    @IBOutlet var haikeiImageView: UIImageView!
    
    //モンスターを表示する画像
    @IBOutlet var monsterImageView: UIImageView!
    
    @IBAction func back(){
        self.dismiss(animated: true, completion: nil)
    }
    
    //モンスターの画像を保存しておく配列
    var monsterArray: [UIImage]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //ランダムで数字を発生させる
        let number = Int.random(in: 0..<10)
        
        //モンスターの画像を10枚追加する
        monsterArray = [UIImage(named:"monster001.png")!,
                        UIImage(named:"monster002.png")!,
                        UIImage(named:"monster003.png")!,
                        UIImage(named:"monster004.png")!,
                        UIImage(named:"monster005.png")!,
                        UIImage(named:"monster006.png")!,
                        UIImage(named:"monster007.png")!,
                        UIImage(named:"monster008.png")!,
                        UIImage(named:"monster009.png")!,
                        UIImage(named:"monster010.png")!,]
        
        //ランダムに選んだモンスターを表示させる
        monsterImageView.image = monsterArray[number]
        
        if number == 9 {
            haikeiImageView.image = UIImage(named:"bg_gold.png")
        }else if number > 6{
            haikeiImageView.image = UIImage(named:"bg_red.png")
        }else{
            haikeiImageView.image = UIImage(named: "bg_blue.png")
        }

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidDisappear(true)
        
        //アニメーション
        let animation = CABasicAnimation(keyPath: "transform")
        
        //アニメーション開始の数値
        animation.fromValue = NSNumber(value: 0)
        
        //終了時
        animation.toValue = NSNumber(value: 2 * Double.pi)
        
        //Z軸を中心としたアニメーション
        animation.valueFunction = CAValueFunction(name: CAValueFunctionName.rotateZ)
        
        //速さ
        animation.duration = 5
        
        //何回繰り返す
        animation.repeatCount = Float.infinity
        
        //どのレイヤー
        haikeiImageView.layer.add(animation, forKey: nil)
        monsterImageView.layer.add(animation, forKey: nil)
        
        
    }
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
