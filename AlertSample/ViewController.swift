//
//  ViewController.swift
//  AlertSample
//
//  Created by Ryo Endo on 2018/02/27.
//  Copyright © 2018年 Ryo Endo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func alert1() {
        let alertController = UIAlertController(title: "アラート１", message: "サンプルアラート１です", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: { (action) in
            alertController.dismiss(animated: true, completion: nil)
        })
        alertController.addAction(action)
        self.present(alertController, animated: true, completion: nil)
    }
    
    
    @IBAction func alert2() {
        let alert = UIAlertController(title: "アラート2", message: "遷移しますか？", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: { (action) in
            self.performSegue(withIdentifier: "toSecond", sender: nil)
        })
        let cancelAction = UIAlertAction(title: "キャンセル", style: .cancel, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
        })
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func alert3() {
        let alertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        let alert1 = UIAlertAction(title: "タイトルアラート３1", style: .destructive) { (action) in
            //        ① コントローラーの実装
            let checkAlertController = UIAlertController(title: "アラート３１",message: "アラートサンプル３１", preferredStyle: UIAlertControllerStyle.alert)
            //        ②-1 OKボタンの実装
            let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default){ (action: UIAlertAction) in
                //        ②-2 OKがクリックされた時の処理
                
            }
            //        CANCELボタンの実装
            let cancelButton = UIAlertAction(title: "キャンセル", style: UIAlertActionStyle.cancel, handler: nil)
            checkAlertController.dismiss(animated: true, completion: nil)
            //        ③-1 ボタンに追加
            checkAlertController.addAction(okAction)
            //        ③-2 CANCELボタンの追加
            checkAlertController.addAction(cancelButton)
            
            //        ④ アラートの表示
            self.present(checkAlertController,animated: true,completion: nil)
        }
        let alert2 = UIAlertAction(title: "タイトルアラート３２", style: .destructive) { (action) in
            
            //        ① コントローラーの実装
            let checkAlertController = UIAlertController(title: "アラート３２",message: "アラートサンプル３２", preferredStyle: UIAlertControllerStyle.alert)
            //        ②-1 OKボタンの実装
            let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default){ (action: UIAlertAction) in
                //        ②-2 OKがクリックされた時の処理
                
            }
            //        CANCELボタンの実装
            let cancelButton = UIAlertAction(title: "キャンセル", style: UIAlertActionStyle.cancel, handler: nil)
            checkAlertController.dismiss(animated: true, completion: nil)
            //        ③-1 ボタンに追加
            checkAlertController.addAction(okAction)
            //        ③-2 CANCELボタンの追加
            checkAlertController.addAction(cancelButton)
            
            //        ④ アラートの表示
            self.present(checkAlertController,animated: true,completion: nil)
            
        }
        
        let cancelAction = UIAlertAction(title: "キャンセル", style: .cancel) { (action) in
            alertController.dismiss(animated: true, completion: nil)
        }
        
        alertController.addAction(alert1)
        alertController.addAction(alert2)
        
        
        alertController.addAction(cancelAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    
    @IBAction func commentAlert() {
        let alert = UIAlertController(title: "コメント", message: "コメントして", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "キャンセル", style: .default) { (action) in
            alert.dismiss(animated: true, completion: nil)
        }
        //okした時の処理
        let okAction = UIAlertAction(title: "OK", style: .default) { (action) in
            alert.dismiss(animated: true, completion: nil)
            self.navigationItem.title = alert.textFields?.first?.text
        }
        alert.addAction(cancelAction)
        alert.addAction(okAction)
        alert.addTextField { (textField) in
            textField.placeholder = "ここに書いて"
        }
        self.present(alert, animated: true, completion: nil)
    }
    
    
    
    
    
}

