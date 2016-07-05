//
//  ViewController.swift
//  Animate
//
//  Created by CodeEagle on 06/04/2015.
//  Copyright (c) 06/04/2015 CodeEagle. All rights reserved.
//

import UIKit
import pop
import Animate
// MARK: - New Operator


class ViewController: UIViewController {
    private var _uiviewTestVC: UIViewTestViewController!
    private var _calayerTestVC: CALayerTestViewController!
    private var _cashapLayerTestVC: CAShapeLayerTestViewController!
    private var _nslayoutConstraintTestVC: NSLayoutConstraintTestViewController!
    private var _uiscrollViewTestVC: UIScrollViewTestViewController!
    private var _uitableViewTestVC: UITableViewTestViewController!
    private var _uicollectionViewTestVC: UICollectionViewTestViewController!
    private var _uinavigationBarTestVC: UINavigationBarTestViewController!
    private var _uitoolbarTestVC: UIToolbarTestViewController!
    private var _uitabBarTestVC: UITabBarTestViewController!
    private var _uilabelTestVC: UILabelTestViewController!
    
    private var _vcs: [UIViewController]!
    
    private var _tableView: UITableView!
    private var dataList = ["UIView","CALayer","CAShapeLayer","NSLayoutConstraint","UIScrollView","UITableView","UICollectionView","UINavigationBar","UIToolbar","UITabBar","UILabel"];

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(self.tableView)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationItem.title = "Animate"
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
extension ViewController {
    var tableView: UITableView {
        if ??_tableView {
            _tableView = UITableView(frame: self.view.bounds, style: UITableViewStyle.plain)
            _tableView.delegate = self
            _tableView.dataSource = self
            _tableView.contentInset = UIEdgeInsetsMake(0, 0, 0, 0)
            _tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        }
        return _tableView
    }
    
    var uiviewTestVC: UIViewTestViewController {
        if ??_uiviewTestVC {
            _uiviewTestVC = UIViewTestViewController()
        }
        return _uiviewTestVC
    }
    
    var calayerTestVC: CALayerTestViewController {
        if ??_calayerTestVC {
            _calayerTestVC = CALayerTestViewController()
        }
        return _calayerTestVC
    }
    
    var cashapLayerTestVC: CAShapeLayerTestViewController {
        if ??_cashapLayerTestVC{
            _cashapLayerTestVC = CAShapeLayerTestViewController()
        }
        return _cashapLayerTestVC
    }
    
    var nslayoutConstraintTestVC: NSLayoutConstraintTestViewController {
        if ??_nslayoutConstraintTestVC{
            _nslayoutConstraintTestVC = NSLayoutConstraintTestViewController()
        }
        return _nslayoutConstraintTestVC
    }
    
    var uiscrollViewTestVC: UIScrollViewTestViewController {
        if ??_uiscrollViewTestVC {
            _uiscrollViewTestVC = UIScrollViewTestViewController()
        }
        return _uiscrollViewTestVC
    }
    
    var uitableViewTestVC: UITableViewTestViewController {
        if ??_uitableViewTestVC {
            _uitableViewTestVC = UITableViewTestViewController()
        }
        return _uitableViewTestVC
    }
    
    var uicollectionViewTestVC: UICollectionViewTestViewController {
        if ??_uicollectionViewTestVC {
            _uicollectionViewTestVC = UICollectionViewTestViewController()
        }
        return _uicollectionViewTestVC
    }
    
    var uinavigationBarTestVC: UINavigationBarTestViewController {
        if ??_uinavigationBarTestVC {
            _uinavigationBarTestVC = UINavigationBarTestViewController()
        }
        return _uinavigationBarTestVC
    }
    
    var uitoolbarTestVC: UIToolbarTestViewController {
        if ??_uitoolbarTestVC {
            _uitoolbarTestVC = UIToolbarTestViewController()
        }
        return _uitoolbarTestVC
    }
    
    var uitabBarTestVC: UITabBarTestViewController {
        if ??_uitabBarTestVC {
            _uitabBarTestVC = UITabBarTestViewController()
        }
        return _uitabBarTestVC
    }
    
    var uilabelTestVC: UILabelTestViewController {
        if ??_uilabelTestVC {
            _uilabelTestVC = UILabelTestViewController()
        }
        return _uilabelTestVC
    }
    
    var vcs: [UIViewController] {
        if ??_vcs {
            _vcs = [self.uiviewTestVC,self.calayerTestVC,self.cashapLayerTestVC,self.nslayoutConstraintTestVC,self.uiscrollViewTestVC,self.uitableViewTestVC,self.uicollectionViewTestVC,self.uinavigationBarTestVC,self.uitoolbarTestVC,self.uitabBarTestVC,self.uilabelTestVC]
        }
        return _vcs
    }
    
}
extension ViewController: UITableViewDataSource,UITableViewDelegate{
    
    
    //MARK: UITableViewDataSource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: UITableViewCell! = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) 
        if ??cell {
            cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        }
        configureCell(cell, forRowAtIndexPath: indexPath)
        return cell
    }
    
    func configureCell(_ cell: UITableViewCell!, forRowAtIndexPath: IndexPath) {
        cell.textLabel?.text = dataList[(forRowAtIndexPath as NSIndexPath).row]
    }
    
    //MARK: UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = self.vcs[(indexPath as NSIndexPath).row]
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

