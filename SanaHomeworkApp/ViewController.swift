//
//  ViewController.swift
//  SanaHomeworkApp
//
//  Created by 栗原健 on 2018/06/04.
//  Copyright © 2018年 kurihara. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate {

    // 連絡ノート
    func setRenraku(on: Bool) {
        if( on ) {
            labelRenraku.text = "OK"
            labelRenraku.textColor = UIColor.black
        } else {
            labelRenraku.text = "まだ！"
            labelRenraku.textColor = UIColor.red
        }
    }
    @IBOutlet weak var labelRenraku: UILabel!
    @IBAction func switchRenraku(_ sender: Any) {
        setRenraku( on: buttonRenraku.isOn )
    }
    
    // プリント
    func setPrint(on: Bool) {
        if( on ) {
            labelPrint.text = "OK"
            labelPrint.textColor = UIColor.black
        } else {
            labelPrint.text = "まだ！"
            labelPrint.textColor = UIColor.red
        }
    }
    @IBOutlet weak var labelPrint: UILabel!
    @IBAction func switchPrint(_ sender: Any) {
        setPrint(on: buttonPrint.isOn)
    }
    
    // けいさんカード
    func setCalc(on: Bool) {
        if( on ) {
            labelCalc.text = "OK"
            labelCalc.textColor = UIColor.black
        } else {
            labelCalc.text = "まだ！"
            labelCalc.textColor = UIColor.red
        }
    }
    @IBOutlet weak var labelCalc: UILabel!
    @IBAction func switchCalc(_ sender: Any) {
        setCalc(on: buttonCalc.isOn)
    }

    // かんド
    func setKando(on: Bool) {
        if( on ) {
            labelKando.text = "OK"
            labelKando.textColor = UIColor.black
        } else {
            labelKando.text = "まだ！"
            labelKando.textColor = UIColor.red
        }
    }
    @IBOutlet weak var labelKando: UILabel!
    @IBAction func switchKando(_ sender: Any) {
        setKando(on: buttonKando.isOn)
    }
    
    // 音読
    func setOndoku(on: Bool) {
        if( on ) {
            labelOndoku.text = "OK"
            labelOndoku.textColor = UIColor.black
        } else {
            labelOndoku.text = "まだ！"
            labelOndoku.textColor = UIColor.red
        }
    }
    @IBOutlet weak var labelOndoku: UILabel!
    @IBAction func switchOndoku(_ sender: Any) {
        setOndoku(on: buttonOndoku.isOn)
    }
    
    // 上体起こし
    func setSitup(on: Bool) {
        if( on ) {
            labelSitup.text = "OK"
            labelSitup.textColor = UIColor.black
        } else {
            labelSitup.text = "まだ！"
            labelSitup.textColor = UIColor.red
        }
    }
    @IBOutlet weak var labelSitup: UILabel!
    @IBAction func switchSitup(_ sender: Any) {
        setSitup(on: buttonSitup.isOn)
    }
    
    // 明日の用意
    func setPrep(on: Bool) {
        if( on ) {
            labelPrep.text = "OK"
            labelPrep.textColor = UIColor.black
        } else {
            labelPrep.text = "まだ！"
            labelPrep.textColor = UIColor.red
        }
    }
    @IBOutlet weak var labelPrep: UILabel!
    @IBAction func switchPrep(_ sender: Any) {
        setPrep(on: buttonPrep.isOn)
    }
    
    // どくしょ
    func setRead(on: Bool) {
        if( on ) {
            labelRead.text = "OK"
            labelRead.textColor = UIColor.black
        } else {
            labelRead.text = "まだ！"
            labelRead.textColor = UIColor.red
        }
    }
    @IBOutlet weak var labelRead: UILabel!
    @IBAction func switchRead(_ sender: Any) {
        setRead(on: buttonRead.isOn)
    }
    
    // 家庭学習
    func setStudy(on: Bool) {
        if( on ) {
            labelStudy.text = "OK"
            labelStudy.textColor = UIColor.black
        } else {
            labelStudy.text = "まだ！"
            labelStudy.textColor = UIColor.red
        }
    }
    @IBOutlet weak var labelStudy: UILabel!
    @IBAction func switchStudy(_ sender: Any) {
        setStudy(on: buttonStudy.isOn )
    }
    
    @IBOutlet weak var buttonRenraku: UISwitch!
    @IBOutlet weak var buttonPrint: UISwitch!
    @IBOutlet weak var buttonCalc: UISwitch!
    @IBOutlet weak var buttonKeido: UISwitch!
    @IBOutlet weak var buttonKando: UISwitch!
    @IBOutlet weak var buttonOndoku: UISwitch!
    @IBOutlet weak var buttonSitup: UISwitch!
    @IBOutlet weak var buttonPrep: UISwitch!
    @IBOutlet weak var buttonRead: UISwitch!
    @IBOutlet weak var buttonStudy: UISwitch!

    @IBOutlet weak var labelTime: UILabel!
    
    weak var timer: Timer!
    var startTime = Date()
    

    // 曜日選択
    @IBAction func selectDay(_ sender: UISegmentedControl) {

        // 曜日次第でその日に必要な項目を設定する
        switch(sender.selectedSegmentIndex) {
        case 0: // 月〜木
            // 全部やる
            buttonRenraku.setOn(false,animated: true)
            setRenraku(on: false)
            buttonPrint.setOn(false, animated: true)
            setPrint(on: false)
            buttonKando.setOn(false,animated: true)
            setKando(on: false)
            buttonCalc.setOn(false, animated: true)
            setCalc(on: false)
            buttonOndoku.setOn(false, animated: true)
            setOndoku(on: false)
            buttonSitup.setOn(false, animated: true)
            setSitup(on: false)
            buttonPrep.setOn(false, animated: true)
            setPrep(on: false)
            buttonRead.setOn(false, animated: true)
            setRead(on: false)
            buttonStudy.setOn(false, animated: true)
            setStudy(on: false)
            
        case 1: // 金
            // 明日の用意だけやらない
            buttonRenraku.setOn(false,animated: true)
            setRenraku(on: false)
            buttonPrint.setOn(false, animated: true)
            setPrint(on: false)
            buttonKando.setOn(false,animated: true)
            setKando(on: false)
            buttonCalc.setOn(false, animated: true)
            setCalc(on: false)
            buttonOndoku.setOn(false, animated: true)
            setOndoku(on: false)
            buttonSitup.setOn(false, animated: true)
            setSitup(on: false)
            buttonPrep.setOn(true, animated: true)
            setPrep(on: true)
            buttonRead.setOn(false, animated: true)
            setRead(on: false)
            buttonStudy.setOn(false, animated: true)
            setStudy(on: false)
            
        case 2: // 土
            // プリント、ドリル、明日の用意をやらない
            buttonRenraku.setOn(false,animated: true)
            setRenraku(on: false)
            buttonPrint.setOn(true, animated: true)
            setPrint(on: true)
            buttonKando.setOn(true,animated: true)
            setKando(on: true)
            buttonCalc.setOn(false, animated: true)
            setCalc(on: false)
            buttonOndoku.setOn(false, animated: true)
            setOndoku(on: false)
            buttonSitup.setOn(false, animated: true)
            setSitup(on: false)
            buttonPrep.setOn(true, animated: true)
            setPrep(on: true)
            buttonRead.setOn(false, animated: true)
            setRead(on: false)
            buttonStudy.setOn(false, animated: true)
            setStudy(on: false)
            
        case 3: // 日
            // プリント、ドリル、音読、計算カード、上体起こしをやらない
            buttonRenraku.setOn(false,animated: true)
            setRenraku(on: false)
            buttonPrint.setOn(true, animated: true)
            setPrint(on: true)
            buttonKando.setOn(true,animated: true)
            setKando(on: true)
            buttonCalc.setOn(true, animated: true)
            setCalc(on: true)
            buttonOndoku.setOn(true, animated: true)
            setOndoku(on: true)
            buttonSitup.setOn(true, animated: true)
            setSitup(on: true)
            buttonPrep.setOn(false, animated: true)
            setPrep(on: false)
            buttonRead.setOn(false, animated: true)
            setRead(on: false)
            buttonStudy.setOn(false, animated: true)
            setStudy(on: false)
            
        default:    // 想定外
            print("Error! What did you choose?")
        }
    }
    
    @IBOutlet weak var buttonStart: RoundedButton!
    @IBOutlet weak var indicatorHomework: UIActivityIndicatorView!
    
    
    // タイマースタート
    @IBAction func resetAll(_ sender: Any) {
        
        if timer == nil{
            // timerが止まってるのでスタート
            labelTime.text = "00時間00分"
            buttonStart.setTitle("しゅくだい中...", for: .normal)
            buttonStart.setTitleColor(UIColor.red, for: .normal)
            timer = Timer.scheduledTimer(
                timeInterval: 60,
                target: self,
                selector: #selector(self.timerCounter),
                userInfo: nil,
                repeats: true)
            // スタートした後の時間を覚えとく
            startTime = Date()
            // 測定中を表示
            indicatorHomework.startAnimating()
        } else {
            // timerが動いてるのでストップ
            timer.invalidate()
            buttonStart.setTitle("しゅくだいはじめ！", for: .normal)
            buttonStart.setTitleColor(UIColor.black, for: .normal)
            // 測定中を表示
            indicatorHomework.stopAnimating()
        }

    }
    
    @objc func timerCounter() {
        // タイマー開始からのインターバル時間(sec)
        let currentTime = Date().timeIntervalSince(startTime)
        
        // fmod() 余りを計算
        let hour = (Int)(fmod((currentTime/3600), 24))
        let minute = (Int)(fmod((currentTime/60), 60))
//        let sec = (Int)(fmod(currentTime,60))

        // %02d： ２桁表示、0で埋める
        let sHour  = String(format:"%02d", hour)
        let sMinute = String(format:"%02d", minute)
//        let sSec = String(format:"%02d", sec)

        labelTime.text = sHour+"時間"+sMinute+"分"

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        indicatorHomework.hidesWhenStopped = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

