//
//  ViewController.swift
//  CollectionView
//
//  Created by Etrade Developer on 08/11/2020.
//  Copyright © 2020 tnodev. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,
UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        
        return 100;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let uiCel = collectionView.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath)
        uiCel.backgroundColor = UIColor.green
        return uiCel;
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1;
    }
    
    
    
    

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self;
        collectionView.delegate = self;
        // Do any additional setup after loading the view.
    }


}

