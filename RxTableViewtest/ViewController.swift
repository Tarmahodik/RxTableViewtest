//
//  ViewController.swift
//  RxTableViewtest
//
//  Created by Георгий Ходиков on 12/02/2019.
//  Copyright © 2019 Георгий Ходиков. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    private var subjct = PublishSubject<[String]>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        changeVal()
    }

    private func setup(){
        tableView.backgroundColor = .gray
        
        _ = subjct.asObserver().bind(to: tableView.rx.items(cellIdentifier: "cell", cellType: TableViewCell.self)){
            (_,text,cell) in
            cell.nameLabel.text = String(text)
            cell.backgroundColor = .red
            }
    }
    
    private func changeVal(){
        subjct.onNext(["First","Second"])
    }

}

