/*
WindowEvent - 0.1

Copyright (c) 2010 Jeremy Green

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions: 

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

package com.mutatedcreativity.popup.events
{
	
	import flash.events.Event;
	
	public class PopupWindowEvent extends Event
	{
		public static const ON_RESIZE:String = "onresize";
		public static const ON_BEFORE_UNLOAD:String = "onbeforeunload";
		public static const ON_UNLOAD:String = "onunload";
		public static const ON_BLUR:String = "onblur";
		public static const ON_FOCUS:String = "onfocus";
		public static const ON_LOAD:String = "onload";
		public static const ON_ERROR:String = "onerror";
		
		public static const ON_CLICK:String = "onclick";
		public static const ON_DOUBLE_CLICK:String = "ondblclick";
		public static const ON_KEY_DOWN:String = "onkeydown";
		public static const ON_KEY_PRESS:String = "onkeypress";
		public static const ON_KEY_UP:String = "onkeyup";
		public static const ON_MOUSE_DOWN:String = "onmousedown";
		public static const ON_MOUSE_MOVE:String = "onmousemove";
		public static const ON_MOUSE_OVER:String = "onmouseover";
		public static const ON_MOUSE_OUT:String = "onmouseout";
		public static const ON_MOUSE_UP:String = "onmouseup";
		public static const ON_SCROLL:String = "onscroll";
		
		public function PopupWindowEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false)
		{
			super(type, bubbles, cancelable);
		}
	}
}