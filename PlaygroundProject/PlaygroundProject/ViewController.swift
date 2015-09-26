//
//  ViewController.swift
//  PlaygroundProject
//
//  Created by Takaaki Yoshioka on 2015/09/23.
//  Copyright © 2015年 JBS. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // セルの生成（表示）
    // セルはfunc collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int で定義された個数分生成される。
    // ただし、すべて一辺に生成されるのではなく、UICollectionView上にそのセルが表示されるタイミングで生成する。
    //   例：UICollectionViewが4つのセルしか表示できないようなサイズの場合、5個目以降のセルは生成されない。スクロールにより、5個目以降のセルの表示が必要になった段階で表示される。
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        // collectionView.cellForItemAtIndexPathだとインデックス指定でとれるらしい（未検証）
        let cell:CustomCell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! CustomCell
        cell.title.text = "タイトル";
        cell.image.image = UIImage(named: "apple")
        cell.backgroundColor = UIColor.whiteColor()
        
        // 生成されるセルが何番目であるかはindexPath.rowでとれる（0オリジンのインデックスがとれる）
        print(indexPath.row)
        
        return cell
    }
    
    // セクション（グループの数）の定義
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    // セルの総数の定義
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20;
    }
    
    // セルが選択されたときのハンドラ
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        // どのセルが選択されたかはインデックスで判断する
        print(indexPath.row)
    }
}

class CustomCell: UICollectionViewCell {
    @IBOutlet var title:UILabel!
    @IBOutlet var image:UIImageView!
    
    override init(frame: CGRect){
        super.init(frame: frame)
    }
    
    required init(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)!
    }
}

