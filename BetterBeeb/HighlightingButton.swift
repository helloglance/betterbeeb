//
//  HighlightingButton.swift
//  BetterBeeb
//
//  Created by Hudzilla on 15/10/2014.
//  Copyright (c) 2014 Paul Hudson. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

import UIKit

class HighlightingButton: UIButton {
	var offColor: UIColor!
	var onColor: UIColor!

	  init(off: UIColor, on: UIColor) {
        //let frame = CGRectMake(0.0, 0.0, 0.0, 0.0)
        super.init(frame:CGRectZero)
        
		offColor = off
		onColor = on

		backgroundColor = off
	}

	override init(frame: CGRect) {
		super.init(frame: frame)
	}

	required init(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)!
	}

	override var highlighted: Bool {
		get {
			return super.highlighted
		}

		set {
			if newValue {
				backgroundColor = onColor
			} else {
				backgroundColor = offColor
			}

			super.highlighted = newValue
		}
	}
}
