/*
Window - 0.1

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

package com.mutatedcreativity.javascript.browser
{
	import com.mutatedcreativity.javascript.events.WindowEvent;
	
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.external.ExternalInterface;
	
	 /**
     * @example
     * <div class="listing">
     * <pre>
     * Window.addEventListener(WindowEvent.ON_RESIZE, onResize);
     * </pre>
     * </div>
     */
    [Event(name='onresize', type='com.mutatedcreativity.javascript.events.WindowEvent')]
    
     /**
     * @example
     * <div class="listing">
     * <pre>
     * Window.addEventListener(WindowEvent.ON_BEFORE_UNLOAD, onBeforeUnload);
     * </pre>
     * </div>
     */
    [Event(name='onbeforeunload', type='com.mutatedcreativity.javascript.events.WindowEvent')]
    
     /**
     * @example
     * <div class="listing">
     * <pre>
     * Window.addEventListener(WindowEvent.ON_UNLOAD, onUnload);
     * </pre>
     * </div>
     */
    [Event(name='onunload', type='com.mutatedcreativity.javascript.events.WindowEvent')]
    
     /**
     * @example
     * <div class="listing">
     * <pre>
     * Window.addEventListener(WindowEvent.ON_BLUR, onBlur);
     * </pre>
     * </div>
     */
    [Event(name='onblur', type='com.mutatedcreativity.javascript.events.WindowEvent')]
    
     /**
     * @example
     * <div class="listing">
     * <pre>
     * Window.addEventListener(WindowEvent.ON_FOCUS, onFocus);
     * </pre>
     * </div>
     */
    [Event(name='onfocus', type='com.mutatedcreativity.javascript.events.WindowEvent')]
    
     /**
     * @example
     * <div class="listing">
     * <pre>
     * Window.addEventListener(WindowEvent.ON_LOAD, onLoad);
     * </pre>
     * </div>
     */
    [Event(name='onload', type='com.mutatedcreativity.javascript.events.WindowEvent')]
    
     /**
     * @example
     * <div class="listing">
     * <pre>
     * Window.addEventListener(WindowEvent.ON_ERROR, onError);
     * </pre>
     * </div>
     */
    [Event(name='onerror', type='com.mutatedcreativity.javascript.events.WindowEvent')]
    
     /**
     * @example
     * <div class="listing">
     * <pre>
     * Window.addEventListener(WindowEvent.ON_CLICK, onClick);
     * </pre>
     * </div>
     */
    [Event(name='onclick', type='com.mutatedcreativity.javascript.events.WindowEvent')]
    
     /**
     * @example
     * <div class="listing">
     * <pre>
     * Window.addEventListener(WindowEvent.ON_DOUBLE_CLICK, onDoubleClick);
     * </pre>
     * </div>
     */
    [Event(name='ondblclick', type='com.mutatedcreativity.javascript.events.WindowEvent')]
    
     /**
     * @example
     * <div class="listing">
     * <pre>
     * Window.addEventListener(WindowEvent.ON_KEY_DOWN, onKeyDown);
     * </pre>
     * </div>
     */
    [Event(name='onkeydown', type='com.mutatedcreativity.javascript.events.WindowEvent')]
    
     /**
     * @example
     * <div class="listing">
     * <pre>
     * Window.addEventListener(WindowEvent.ON_KEY_PRESS, onKeyPress);
     * </pre>
     * </div>
     */
    [Event(name='onkeypress', type='com.mutatedcreativity.javascript.events.WindowEvent')]
    
     /**
     * @example
     * <div class="listing">
     * <pre>
     * Window.addEventListener(WindowEvent.ON_KEY_UP, onKeyUp);
     * </pre>
     * </div>
     */
    [Event(name='onkeyup', type='com.mutatedcreativity.javascript.events.WindowEvent')]
    
     /**
     * @example
     * <div class="listing">
     * <pre>
     * Window.addEventListener(WindowEvent.ON_MOUSE_DOWN, onMouseDown);
     * </pre>
     * </div>
     */
    [Event(name='onmousedown', type='com.mutatedcreativity.javascript.events.WindowEvent')]
    
     /**
     * @example
     * <div class="listing">
     * <pre>
     * Window.addEventListener(WindowEvent.ON_MOUSE_MOVE, onMouseMove);
     * </pre>
     * </div>
     */
    [Event(name='onmousemove', type='com.mutatedcreativity.javascript.events.WindowEvent')]
    
     /**
     * @example
     * <div class="listing">
     * <pre>
     * Window.addEventListener(WindowEvent.ON_MOUSE_OVER, onMouseOver);
     * </pre>
     * </div>
     */
    [Event(name='onmouseover', type='com.mutatedcreativity.javascript.events.WindowEvent')]
    
     /**
     * @example
     * <div class="listing">
     * <pre>
     * Window.addEventListener(WindowEvent.ON_MOUSE_UP, onMouseUp);
     * </pre>
     * </div>
     */
    [Event(name='onmouseup', type='com.mutatedcreativity.javascript.events.WindowEvent')]
    
     /**
     * @example
     * <div class="listing">
     * <pre>
     * Window.addEventListener(WindowEvent.ON_MOUSE_OUT, onMouseOut);
     * </pre>
     * </div>
     */
    [Event(name='onmouseout', type='com.mutatedcreativity.javascript.events.WindowEvent')]
    
     /**
     * @example
     * <div class="listing">
     * <pre>
     * Window.addEventListener(WindowEvent.ON_SCROLL, onScroll);
     * </pre>
     * </div>
     */
    [Event(name='onscroll', type='com.mutatedcreativity.javascript.events.WindowEvent')]
	
	/**
	* A class that lets you communicate with the Window object without the user having to write javascript.
	* @author Jeremy Green
	* @version 0.1
	* @url www.mutatedcreativity.com
	*/
	
	public class Window
	{
		private static var _dispatcher:EventDispatcher = new EventDispatcher();
		
		/**
		* Get and set the defaultStatus property of the Window object.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * trace(Window.defaultStatus);
	    * </pre>
	    * </div>
	    */
		public static function get defaultStatus():String
		{			
			return ExternalInterface.call("function(){ return window.defaultStatus; }");
		}
		public static function set defaultStatus(value:String):void
		{
			ExternalInterface.call("function(param){ window.defaultStatus = param; }", value);
		}
		/**
		* Get and set the status property of the Window object.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * trace(Window.status);
	    * </pre>
	    * </div>
	    */
		public static function get status():String
		{
			return ExternalInterface.call("function(){ return window.status; }");
		}
		public static function set status(value:String):void
		{
			ExternalInterface.call("function(param){ window.status = param; }", value);
		}
		/**
		* Get and set the name property of the Window object.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * trace(Window.name);
	    * </pre>
	    * </div>
	    */
		public static function get name():String
		{
			return ExternalInterface.call("function(){ return window.name ;}");
		}
		public static function set name(value:String):void
		{
			ExternalInterface.call("function(param){ window.name = param; }", value);
		}
		/**
		* Get and set the outerWidth property of the Window object.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * trace(Window.outerWidth);
	    * </pre>
	    * </div>
	    */
		public static function get outerWidth():int
		{
			return ExternalInterface.call("function(){ if(window.outerWidth) { return window.outerWidth; } else { return document.body.clientWidth; } }") as int;
		}
		public static function set outerWidth(value:int):void
		{
			ExternalInterface.call("function(param){ if(window.outerWidth) { window.outerWidth = param; } else { document.body.clientWidth = param; } }", value.toString());
		}
		/**
		* Get and set the outerHeight property of the Window object.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * trace(Window.outerHeight);
	    * </pre>
	    * </div>
	    */
		public static function get outerHeight():int
		{
			return ExternalInterface.call("function(){ if(window.outerHeight) { return window.outerHeight; } else { return document.body.clientHeight + 30; } }") as int;
		}
		public static function set outerHeight(value:int):void
		{
			ExternalInterface.call("function(param){ if(window.outerHeight) { window.outerHeight = param; } else { document.body.clientHeight = param + 30; } }", value.toString());
		}
		/**
		* Get and set the innerWidth property of the Window object.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * trace(Window.innerWidth);
	    * </pre>
	    * </div>
	    */
		public static function get innerWidth():int
		{
			return ExternalInterface.call("function(){ if(window.innerWidth) { return window.innerWidth; } else { return document.body.clientWidth; } }") as int;
		}
		public static function set innerWidth(value:int):void
		{
			ExternalInterface.call("function(param){ if(window.innerWidth) { window.innerWidth = param; } else { document.body.clientWidth = param; } }", value.toString());
		}
		/**
		* Get and set the innerHeight property of the Window object.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * trace(Window.innerHeight);
	    * </pre>
	    * </div>
	    */
		public static function get innerHeight():int
		{
			return ExternalInterface.call("function(){ if(window.innerHeight) { return window.innerHeight; } else { return document.body.clientHeight; } }") as int;
		}
		public static function set innerHeight(value:int):void
		{
			ExternalInterface.call("function(param){ if(window.innerHeight) { window.innerHeight = param; } else { document.body.clientHeight = param; } }", value.toString());
		}
		/**
		* Open a new window.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * var windowName:String = Window.open("http://www.example.com", "my_window", {width:500, height:500});
	    * </pre>
	    * </div>
	    */
		public function open(url:String = "about:blank", name:String = "", parameters:Object = null, replace:Boolean = false):String
		{	
			var channelMode:Boolean = parameters.channelMode;
			var directories:Boolean = parameters.directories;
			var fullscreen:Boolean = parameters.fullscreen;
			var height:int = parameters.height;
			var left:int = parameters.left;
			var location:Boolean = parameters.location;
			var menubar:Boolean = parameters.menubar;
			var resizable:Boolean = parameters.resizable;
			var scrollbars:Boolean = parameters.scrollbars;
			var status:Boolean = parameters.status;
			var titlebar:Boolean = parameters.titlebar;
			var toolbar:Boolean = parameters.toolbar;
			var top:int = parameters.top;
			var width:int = parameters.width;
			ExternalInterface.call("function(){ " + name + " = window.open('" + url + "', '" + name + "', channelmode='" + channelMode.toString() + ", directories=" + directories.toString() + ", fullscreen=" + fullscreen.toString() + ", height=" + height.toString() + ", left=" + left.toString() + ", location=" + location.toString() + ", menubar=" + menubar.toString() + ", resizable=" + resizable.toString() + ", scrollbars=" + scrollbars.toString() + ", status=" + status.toString() + ", titlebar=" + titlebar.toString() + ", toolbar=" + toolbar.toString() + ", top=" + top.toString() + ", width=" + width.toString() + "', '" + replace.toString() + "');}");
			return name;
		}
		/**
		* Close a window.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * //opens a new window called 'windowName'
	    * var windowName:String = Window.open("http://www.example.com", "my_window", {width:500, height:500});
	    * 
	    * //closes the opened window called 'windowName'
	    * Window.close(windowName);
	    * </pre>
	    * </div>
	    */ 
		public static function close(window_name:String = "window"):void
		{
			ExternalInterface.call("function(){ " + window_name + ".close(); }");
		}
		/**
		 * Check if a pop up window is close.
		 * 
		 * @example
	     * <div class="listing">
	     * <pre>
	     * trace(Window.closed());
	     * 
	     * //opens a new window called 'windowName'
	     * var windowName:String = Window.open("http://www.example.com", "my_window", {width:500, height:500});
	     * 
	     * //closes the opened window called 'windowName'
	     * Window.close(windowName);
	     * 
	     * trace(Window.closed(windowName));
	     * </pre>
	     * </div>
		 */
		public function closed(window_name:String = "window"):Boolean
		{
			return ExternalInterface.call("function(){ return " + window_name + ".closed; }");
		}
		/**
		* Get and set the screenX property of the Window object.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * trace(Window.screenX);
	    * </pre>
	    * </div>
	    */
		public static function get screenX():int
		{
			return ExternalInterface.call("function(){ if(window.screenX){ return window.screenX; } else { return window.screenLeft; } }") as int;
		}
		public static function set screenX(value:int):void
		{
			ExternalInterface.call("function(param){ if(window.screenX){ window.screenX = param; } else { window.screenLeft = param; } }", value.toString());
		}
		/**
		* Get and set the screenY property of the Window object.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * trace(Window.screenY);
	    * </pre>
	    * </div>
	    */
		public static function get screenY():int
		{
			return ExternalInterface.call("function(){ if(window.screenY){ return window.screenY } else { return window.screenTop; } }") as int;
		}
		public static function set screenY(value:int):void
		{
			ExternalInterface.call("function(param){ if(window.screenY){ window.screenY = param; } else { window.screenTop = param; } }", value.toString());
		}
		/**
		* Get and set the screenLeft property of the Window object.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * trace(Window.screenLeft);
	    * </pre>
	    * </div>
	    */
		public static function get screenLeft():int
		{
			return ExternalInterface.call("function(){ if(window.screenLeft){ return window.screenLeft; } else { return window.screenX; } }") as int;
		}
		public static function set screenLeft(value:int):void
		{
			ExternalInterface.call("function(param){ if(window.screenLeft){ window.screenLeft = param; } else { window.screenX = param; } }", value.toString());
		}
		/**
		* Get and set the screenTop property of the Window object.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * trace(Window.screenTop);
	    * </pre>
	    * </div>
	    */
		public static function get screenTop():int
		{
			return ExternalInterface.call("function(){ if(window.screenTop){ return window.screenTop; } else { return window.screenY; } }") as int;
		}
		public static function set screenTop(value:int):void
		{
			ExternalInterface.call("function(param){ if(window.screenTop){ window.screenTop = param; } else { window.screenY = param; } }", value.toString());
		}
		/**
		* Call an alert window.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * Window.alert("message");
	    * </pre>
	    * </div>
	    */
		public static function alert(message:String):void
		{
			ExternalInterface.call("alert", message);
		}
		/**
		* Call a confirm window.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * var boolean:Boolean = Window.confirm("message");
	    * trace(boolean);
	    * </pre>
	    * </div>
	    */
		public static function confirm(message:String):Boolean
		{
			return ExternalInterface.call("confirm", message) as Boolean;
		}
		/**
		* Call a prompt window.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * //Open a prompt window without the text field pre populated
	    * var string:String = Window.prompt("message");
	    * trace(string);
	    * 
	    * //Open a prompt window with the text field pre populated
	    * var string:String = Window.prompt("message", "reply");
	    * trace(string);
	    * </pre>
	    * </div>
	    */
		public static function prompt(message:String = "", default_input:String = ""):String
		{
			return ExternalInterface.call("prompt", message, default_input);
		}
		/**
		* Lose focus to the Window object.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * Window.blur();
	    * </pre>
	    * </div>
	    */
		public static function blur():void
		{
			ExternalInterface.call("function(){ window.blur(); }");
		}
		/**
		* Set focus to the Window object.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * Window.focus();
	    * </pre>
	    * </div>
	    */
		public static function focus():void
		{
			ExternalInterface.call("function(){ window.focus(); }");
		}
		/**
		* Move the Window object by certain values.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * Window.moveBy(50, 50);
	    * </pre>
	    * </div>
	    */
		public static function moveBy(x:int, y:int):void
		{
			ExternalInterface.call("function(x, y){ window.moveBy(x , y); }", x, y);
		}
		/**
		* Move the Window object to a certain value.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * Window.moveTo(200, 200);
	    * </pre>
	    * </div>
	    */
		public static function moveTo(x:int, y:int):void
		{
			ExternalInterface.call("function(x, y){ window.moveTo(x, y); }", x, y);
		}
		/**
		* Resize the window by certain values.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * Window.resizeBy(50, 50);
	    * </pre>
	    * </div>
	    */
		public static function resizeBy(width:int, height:int):void
		{
			ExternalInterface.call("function(width, height){ window.resizeBy(width, height); }", width, height);
		}
		/**
		* Resize the window to a certain value.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * Window.resizeTo(200, 200);
	    * </pre>
	    * </div>
	    */
		public static function resizeTo(width:int, height:int):void
		{
			ExternalInterface.call("function(width, height){ window.resizeTo(width, height); }", width, height);
		}
		/**
		* Print the current page.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * Window.print();
	    * </pre>
	    * </div>
	    */
		public static function print():void
		{
			ExternalInterface.call("function(){ window.print(); }");
		}
		/**
		* Scroll the window by a certain value.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * Window.scrollBy(50, 50);
	    * </pre>
	    * </div>
	    */
		public static function scrollBy(xNum:int, yNum:int):void
		{
			ExternalInterface.call("function(xNum, yNum){ window.scrollBy(xNum, yNum); }", xNum, yNum);
		}
		/**
		* Scroll the window to a certain value.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * Window.scrollTo(200, 200);
	    * </pre>
	    * </div>
	    */
		public static function scrollTo(xPos:int, yPos:int):void
		{
			ExternalInterface.call("function(xPos, yPos){window.scrollTo(xPos, yPos)}", xPos, yPos);
		}
		/**
	    * @example
	    * <div class="listing">
	    * <pre>
	    * Window.addEventListener(WindowEvent.ON_RESIZE, onResize);
	    * </pre>
	    * </div>
	    */
        public static function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = false):void
        {
			var id:String = ExternalInterface.objectID;
			_dispatcher.addEventListener(type, listener, useCapture, priority, useWeakReference);
			ExternalInterface.addCallback(id, function():void { _dispatcher.dispatchEvent(new WindowEvent(type)); });
			ExternalInterface.call("function(){ window." + type + " = function(){ document['" + id + "']." + id + "(); } }");
        }
        /**
	    * @example
	    * <div class="listing">
	    * <pre>
	    * Window.removeEventListener(WindowEvent.ON_RESIZE, onResize);
	    * </pre>
	    * </div>
	    */
        public static function removeEventListener(type:String, listener:Function, useCapture:Boolean = false):void
        {
        	ExternalInterface.call("function(){ window." + type + " = null; }");
        	_dispatcher.removeEventListener(type, listener, useCapture);
        }
        /**
	    * @example
	    * <div class="listing">
	    * <pre>
	    * Window.dispatchEvent(new WindowEvent(WindowEvent.ON_RESIZE));
	    * </pre>
	    * </div>
	    */
        public static function dispatchEvent(event:Event):void
        {
        	ExternalInterface.call("function(param){ window.dispatchEvent(param); }", event.type.replace("on", ""));
        	_dispatcher.dispatchEvent(event);
        }
        /**
	    * @example
	    * <div class="listing">
	    * <pre>
	    * trace(Window.hasEventListener(WindowEvent.ON_RESIZE));
	    * </pre>
	    * </div>
	    */
        public static function hasEventListener(type:String):Boolean
        {
        	return _dispatcher.hasEventListener(type);	
        }
	}
}