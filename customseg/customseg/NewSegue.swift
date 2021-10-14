//
//  NewSegue.swift
//  customseg
//
//  Created by yonghee lee on 2021/10/14.
//

import UIKit

class NewSegue : UIStoryboardSegue
{
    override func perform()
    {
        let srcUVC = self.source
        let destUVC = self.destination
        UIView.transition(from: srcUVC.view, to: destUVC.view, duration: 2, options: .transitionCurlDown)
    }
}
