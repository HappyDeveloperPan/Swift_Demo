//
//  XinyidaiInfoFourViewController.swift
//  StarLoans_Swift
//
//  Created by iOS Pan on 2018/4/2.
//  Copyright © 2018年 iOS Pan. All rights reserved.
//

import UIKit
import IBAnimatable

class XinyidaiInfoFourViewController: BaseViewController, StoryboardLoadable {
    // MARK: - StoryBoard连线
    @IBOutlet weak var nextBtn: AnimatableButton!
    
    // MARK: - 生命周期
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "录入客户信息"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super .viewWillAppear(animated)
        isNavLineHidden = false
    }
    
    override func viewWillLayoutSubviews() {
        super .viewWillLayoutSubviews()
        nextBtn.snp.makeConstraints { (make) in
            make.width.equalTo(kScreenWidth - 32)
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super .viewWillDisappear(animated)
        isNavLineHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - 控件点击事件
    @IBAction func nextBtnClick(_ sender: AnimatableButton) {
        let vc = XinyidaiFinishViewController.loadStoryboard()
        navigationController?.pushViewController(vc, animated: true)
    }
}