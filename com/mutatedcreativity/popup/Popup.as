/*
Popup - 0.1

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

package com.mutatedcreativity.popup
{
	
	import com.mutatedcreativity.popup.events.PopupWindowEvent;
	
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.external.ExternalInterface;
	
	/**
     * @example
     * <div class="listing">
     * <pre>
     * myWin.addEventListener(PopupWindowEvent.ON_RESIZE, onResize);
     * </pre>
     * </div>
     */
    [Event(name='onresize', type='com.mutatedcreativity.popup.events.PopupWindowEvent')]
    
     /**
     * @example
     * <div class="listing">
     * <pre>
     * myWin.addEventListener(PopupWindowEvent.ON_BEFORE_UNLOAD, onBeforeUnload);
     * </pre>
     * </div>
     */
    [Event(name='onbeforeunload', type='com.mutatedcreativity.popup.events.PopupWindowEvent')]
    
     /**
     * @example
     * <div class="listing">
     * <pre>
     * myWin.addEventListener(PopupWindowEvent.ON_UNLOAD, onUnload);
     * </pre>
     * </div>
     */
    [Event(name='onunload', type='com.mutatedcreativity.popup.events.PopupWindowEvent')]
    
     /**
     * @example
     * <div class="listing">
     * <pre>
     * myWin.addEventListener(PopupWindowEvent.ON_BLUR, onBlur);
     * </pre>
     * </div>
     */
    [Event(name='onblur', type='com.mutatedcreativity.popup.events.PopupWindowEvent')]
    
     /**
     * @example
     * <div class="listing">
     * <pre>
     * myWin.addEventListener(PopupWindowEvent.ON_FOCUS, onFocus);
     * </pre>
     * </div>
     */
    [Event(name='onfocus', type='com.mutatedcreativity.popup.events.PopupWindowEvent')]
    
     /**
     * @example
     * <div class="listing">
     * <pre>
     * myWin.addEventListener(PopupWindowEvent.ON_LOAD, onLoad);
     * </pre>
     * </div>
     */
    [Event(name='onload', type='com.mutatedcreativity.popup.events.PopupWindowEvent')]
    
     /**
     * @example
     * <div class="listing">
     * <pre>
     * myWin.addEventListener(PopupWindowEvent.ON_ERROR, onError);
     * </pre>
     * </div>
     */
    [Event(name='onerror', type='com.mutatedcreativity.popup.events.PopupWindowEvent')]
    
     /**
     * @example
     * <div class="listing">
     * <pre>
     * myWin.addEventListener(PopupWindowEvent.ON_CLICK, onClick);
     * </pre>
     * </div>
     */
    [Event(name='onclick', type='com.mutatedcreativity.popup.events.PopupWindowEvent')]
    
     /**
     * @example
     * <div class="listing">
     * <pre>
     * myWin.addEventListener(PopupWindowEvent.ON_DOUBLE_CLICK, onDoubleClick);
     * </pre>
     * </div>
     */
    [Event(name='ondblclick', type='com.mutatedcreativity.popup.events.PopupWindowEvent')]
    
     /**
     * @example
     * <div class="listing">
     * <pre>
     * myWin.addEventListener(PopupWindowEvent.ON_KEY_DOWN, onKeyDown);
     * </pre>
     * </div>
     */
    [Event(name='onkeydown', type='com.mutatedcreativity.popup.events.PopupWindowEvent')]
    
     /**
     * @example
     * <div class="listing">
     * <pre>
     * myWin.addEventListener(PopupWindowEvent.ON_KEY_PRESS, onKeyPress);
     * </pre>
     * </div>
     */
    [Event(name='onkeypress', type='com.mutatedcreativity.popup.events.PopupWindowEvent')]
    
     /**
     * @example
     * <div class="listing">
     * <pre>
     * myWin.addEventListener(PopupWindowEvent.ON_KEY_UP, onKeyUp);
     * </pre>
     * </div>
     */
    [Event(name='onkeyup', type='com.mutatedcreativity.popup.events.PopupWindowEvent')]
    
     /**
     * @example
     * <div class="listing">
     * <pre>
     * myWin.addEventListener(PopupWindowEvent.ON_MOUSE_DOWN, onMouseDown);
     * </pre>
     * </div>
     */
    [Event(name='onmousedown', type='com.mutatedcreativity.popup.events.PopupWindowEvent')]
    
     /**
     * @example
     * <div class="listing">
     * <pre>
     * myWin.addEventListener(PopupWindowEvent.ON_MOUSE_MOVE, onMouseMove);
     * </pre>
     * </div>
     */
    [Event(name='onmousemove', type='com.mutatedcreativity.popup.events.PopupWindowEvent')]
    
     /**
     * @example
     * <div class="listing">
     * <pre>
     * myWin.addEventListener(PopupWindowEvent.ON_MOUSE_OVER, onMouseOver);
     * </pre>
     * </div>
     */
    [Event(name='onmouseover', type='com.mutatedcreativity.popup.events.PopupWindowEvent')]
    
     /**
     * @example
     * <div class="listing">
     * <pre>
     * myWin.addEventListener(PopupWindowEvent.ON_MOUSE_UP, onMouseUp);
     * </pre>
     * </div>
     */
    [Event(name='onmouseup', type='com.mutatedcreativity.popup.events.PopupWindowEvent')]
    
     /**
     * @example
     * <div class="listing">
     * <pre>
     * myWin.addEventListener(PopupWindowEvent.ON_MOUSE_OUT, onMouseOut);
     * </pre>
     * </div>
     */
    [Event(name='onmouseout', type='com.mutatedcreativity.popup.events.PopupWindowEvent')]
    
     /**
     * @example
     * <div class="listing">
     * <pre>
     * myWin.addEventListener(PopupWindowEvent.ON_SCROLL, onScroll);
     * </pre>
     * </div>
     */
    [Event(name='onscroll', type='com.mutatedcreativity.popup.events.PopupWindowEvent')]
	
	/**
	* A popup class that lets you open popup windows without the user having to write javascript
    * @author Jeremy Green
    * @version 0.1
	* @url www.mutatedcreativity.com
    */
	
	public class Popup
	{
		private var window_name:String;
		private var _dispatcher:EventDispatcher;
		
		/**
        * Creates a new Popup object.
        * 
        * @author Jeremy Green
        *
        * @example
        * <div class="listing">
        * <pre>
        * var myWin:Popup = new Popup("myWin");
        * </pre>
        * </div>
        */
		public function Popup(windowName:String = null)
		{
			window_name = windowName;
			_dispatcher = new EventDispatcher();
		}
		 /**
		 * Opens a pop up window.
		 * 
		 * @example
	     * <div class="listing">
	     * <pre>
	     * //Open a new window with only the location and toolbars showing
	     * myWin.open("http://www.example.com", "Example", {width:500, height:500, location:true, toolbar:true});
	     * </pre>
	     * </div>
		 */
		public function open(url:String = "about:blank", name:String = "", parameters:Object = null, replace:Boolean = false):void
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
			ExternalInterface.call("function(){ " + window_name + " = window.open('" + url + "', '" + name + "', channelmode='" + channelMode.toString() + ", directories=" + directories.toString() + ", fullscreen=" + fullscreen.toString() + ", height=" + height.toString() + ", left=" + left.toString() + ", location=" + location.toString() + ", menubar=" + menubar.toString() + ", resizable=" + resizable.toString() + ", scrollbars=" + scrollbars.toString() + ", status=" + status.toString() + ", titlebar=" + titlebar.toString() + ", toolbar=" + toolbar.toString() + ", top=" + top.toString() + ", width=" + width.toString() + "', '" + replace.toString() + "');}");
		}
		 /**
		 * Closes a pop up window.
		 * 
		 * @example
	     * <div class="listing">
	     * <pre>
	     * myWin.close();
	     * </pre>
	     * </div>
		 */
		public function close():void
		{
			ExternalInterface.call("function(){ " + window_name + ".close(); }");
		}
		/**
		 * Check if a pop up window is close.
		 * 
		 * @example
	     * <div class="listing">
	     * <pre>
	     * trace(myWin.closed);
	     * </pre>
	     * </div>
		 */
		public function get closed():Boolean
		{
			return ExternalInterface.call("function(){ return " + window_name + ".closed; }");
		}
		 /**
		 * Get and set the defaultStatus.
		 * 
		 * @example
	     * <div class="listing">
	     * <pre>
	     * myWin.defaultStatus = "Example";
	     * trace(myWin.defaultStatus);
	     * </pre>
	     * </div>
		 */
		public function get defaultStatus():String
		{			
			return ExternalInterface.call("function(){ return " + window_name + ".defaultStatus; }");
		}
		public function set defaultStatus(value:String):void
		{
			ExternalInterface.call("function(param){ " + window_name + ".defaultStatus = param; }", value);
		}
		 /**
		 * Get and set the status.
		 * 
		 * @example
	     * <div class="listing">
	     * <pre>
	     * myWin.status = "Example";
	     * trace(myWin.status);
	     * </pre>
	     * </div>
		 */
		public function get status():String
		{
			return ExternalInterface.call("function(){ return " + window_name + ".status; }");
		}
		public function set status(value:String):void
		{
			ExternalInterface.call("function(param){ " + window_name + ".status = param; }", value);
		}
		 /**
		 * Get and set the name.
		 * 
		 * @example
	     * <div class="listing">
	     * <pre>
	     * myWin.name = "Example";
	     * trace(myWin.name);
	     * </pre>
	     * </div>
		 */
		public function get name():String
		{
			return ExternalInterface.call("function(){ return " + window_name + ".name ;}");
		}
		public function set name(value:String):void
		{
			ExternalInterface.call("function(param){ " + window_name + ".name = param; }", value);
		}
		 /**
		 * Get the outerWidth.
		 * 
		 * @example
	     * <div class="listing">
	     * <pre>
	     * trace(myWin.outerWidth);
	     * </pre>
	     * </div>
		 */
		public function get outerWidth():int
		{
			return ExternalInterface.call("function(){ if(" + window_name + ".outerWidth) { return " + window_name + ".outerWidth; } else { return " + window_name + ".document.body.clientWidth; } }") as int;
		}
		 /**
		 * Get the outerHeight.
		 * 
		 * @example
	     * <div class="listing">
	     * <pre>
	     * trace(myWin.outerHeight);
	     * </pre>
	     * </div>
		 */
		public function get outerHeight():int
		{
			return ExternalInterface.call("function(){ if(" + window_name + ".outerHeight) { return " + window_name + ".outerHeight; } else { return " + window_name + ".document.body.clientHeight + 30; } }") as int;
		}
		 /**
		 * Get the innerWidth.
		 * 
		 * @example
	     * <div class="listing">
	     * <pre>
	     * trace(myWin.innerWidth);
	     * </pre>
	     * </div>
		 */
		public function get innerWidth():int
		{
			return ExternalInterface.call("function(){ if(" + window_name + ".innerWidth) { return " + window_name + ".innerWidth; } else { return " + window_name + ".document.body.clientWidth; } }") as int;
		}
		 /**
		 * Get the innerHeight.
		 * 
		 * @example
	     * <div class="listing">
	     * <pre>
	     * trace(myWin.innerHeight);
	     * </pre>
	     * </div>
		 */
		public function get innerHeight():int
		{
			return ExternalInterface.call("function(){ if(" + window_name + ".innerHeight) { return " + window_name + ".innerHeight; } else { return " + window_name + ".document.body.clientHeight; } }") as int;
		}
		 /**
		 * Get the screenX.
		 * 
		 * @example
	     * <div class="listing">
	     * <pre>
	     * trace(myWin.screenX);
	     * </pre>
	     * </div>
		 */
		public function get screenX():int
		{
			return ExternalInterface.call("function(){ if(" + window_name + ".screenX){ return " + window_name + ".screenX; } else { return " + window_name + ".screenLeft; } }") as int;
		}
		 /**
		 * Get the screenY.
		 * 
		 * @example
	     * <div class="listing">
	     * <pre>
	     * trace(myWin.screenY);
	     * </pre>
	     * </div>
		 */
		public function get screenY():int
		{
			return ExternalInterface.call("function(){ if(" + window_name + ".screenY){ return " + window_name + ".screenY } else { return " + window_name + ".screenTop; } }") as int;
		}
		 /**
		 * Get the screenLeft.
		 * 
		 * @example
	     * <div class="listing">
	     * <pre>
	     * trace(myWin.screenLeft);
	     * </pre>
	     * </div>
		 */
		public function get screenLeft():int
		{
			return ExternalInterface.call("function(){ if(" + window_name + ".screenLeft){ return " + window_name + ".screenLeft; } else { return " + window_name + ".screenX; } }") as int;
		}
		 /**
		 * Get the screenTop.
		 * 
		 * @example
	     * <div class="listing">
	     * <pre>
	     * trace(myWin.screenTop);
	     * </pre>
	     * </div>
		 */
		public function get screenTop():int
		{
			return ExternalInterface.call("function(){ if(" + window_name + ".screenTop){ return " + window_name + ".screenTop; } else { return " + window_name + ".screenY; } }") as int;
		}
		 /**
		 * Move the window by certain values.
		 * 
		 * @example
	     * <div class="listing">
	     * <pre>
	     * myWin.moveBy(50, 50);
	     * </pre>
	     * </div>
		 */
		public function moveBy(x:int, y:int):void
		{
			ExternalInterface.call("function(x, y){ " + window_name + ".moveBy(x , y); }", x, y);
		}
		 /**
		 * Move the window to a certain value.
		 * 
		 * @example
	     * <div class="listing">
	     * <pre>
	     * myWin.moveTo(250, 250);
	     * </pre>
	     * </div>
		 */
		public function moveTo(x:int, y:int):void
		{
			ExternalInterface.call("function(x, y){ " + window_name + ".moveTo(x, y); }", x, y);
		}
		 /**
		 * Resize the window by certain values.
		 * 
		 * @example
	     * <div class="listing">
	     * <pre>
	     * myWin.resizeBy(250, 250);
	     * </pre>
	     * </div>
		 */
		public function resizeBy(width:int, height:int):void
		{
			ExternalInterface.call("function(width, height){ " + window_name + ".resizeBy(width, height); }", width, height);
		}
		 /**
		 * Resize the window to a certain value.
		 * 
		 * @example
	     * <div class="listing">
	     * <pre>
	     * myWin.resizeTo(50, 50);
	     * </pre>
	     * </div>
		 */
		public function resizeTo(width:int, height:int):void
		{
			ExternalInterface.call("function(width, height){ " + window_name + ".resizeTo(width, height); }", width, height);
		}
		 /**
		 * @example
	     * <div class="listing">
	     * <pre>
	     * myWin.addEventListener(WindowEvent.ON_RESIZE, onResize);
	     * </pre>
	     * </div>
		 */
		public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = false):void
        {
			var id:String = ExternalInterface.objectID;
			_dispatcher.addEventListener(type, listener, useCapture, priority, useWeakReference);
			ExternalInterface.addCallback(id, function():void { _dispatcher.dispatchEvent(new PopupWindowEvent(type)); });
			ExternalInterface.call("function(){ " + window_name + "." + type + " = function(){ document['" + id + "']." + id + "(); } }");
        }
         /**
		 * @example
	     * <div class="listing">
	     * <pre>
	     * myWin.dispatchEvent(new WindowEvent(WindowEvent.ON_RESIZE));
	     * </pre>
	     * </div>
		 */
        public function dispatchEvent(event:Event):void
        {
        	ExternalInterface.call("function(param){ " + window_name + ".dispatchEvent(param); }", event.type.replace("on", ""));
        	_dispatcher.dispatchEvent(event);
        }
         /**
		 * @example
	     * <div class="listing">
	     * <pre>
	     * trace(myWin.hasEventListener(WindowEvent.ON_RESIZE));
	     * </pre>
	     * </div>
		 */
        public function hasEventListener(type:String):Boolean
        {
        	return _dispatcher.hasEventListener(type);	
        }
	}
}