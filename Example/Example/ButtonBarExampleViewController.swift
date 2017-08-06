//  ButtonBarExampleViewController.swift
//  XLPagerTabStrip ( https://github.com/xmartlabs/XLPagerTabStrip )
//
//  Copyright (c) 2017 Xmartlabs ( http://xmartlabs.com )
//
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import Foundation
import XLPagerTabStrip

class ButtonBarExampleViewController: ButtonBarPagerTabStripViewController {
    
    
    override func viewDidLoad() {
        settings.style.buttonBarItemBackgroundColor = .white
        settings.style.selectedBarBackgroundColor = UIColor(hex: "#fdc050")
        
        
        settings.style.buttonBarItemTitleColor = UIColor(hex: "#716f7f")
        settings.style.buttonBarItemFont = .boldSystemFont(ofSize: 14)
        
        settings.style.buttonBarSubItemFont = .systemFont(ofSize: 12)
        
        
        settings.style.selectedBarHeight = 2.0
        
        settings.style.notSelectedBarHeight = 1.0
        settings.style.notSelectedBarBackgroundColor = UIColor(hex:"#716f7f")
        
        
        settings.style.buttonBarMinimumLineSpacing = 0
        
        settings.style.buttonBarLeftContentInset = 0
        settings.style.buttonBarRightContentInset = 0
        
        settings.style.buttonBarItemLeftRightMargin = 0
        settings.style.buttonBarMinimumInteritemSpacing = 0
        
        settings.style.buttonBarItemSubTitleColor = UIColor(hex:"ffac28")
        
        buttonBarView.backgroundColor = .white
        super.viewDidLoad()
        
        buttonBarView.selectedBar.backgroundColor = UIColor(hex:"#5c4698")
        
    }
    
    // MARK: - PagerTabStripDataSource
    
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        
        let child_1 = TableChildExampleViewController(style: .plain, itemInfo: "    Public Activity ")
        let child_2 = ChildExampleViewController(itemInfo: IndicatorInfo(title: " Private Activity ", subtitle: " My Positivity Print ") )
        let child_3 = TableChildExampleViewController(style: .grouped, itemInfo: " Your Uploads ")
        let child_4 = ChildExampleViewController(itemInfo: " Followers ")
        let child_5 = ChildExampleViewController(itemInfo: " Following    ")
        return [child_1, child_2, child_3, child_4, child_5]
    }
}
