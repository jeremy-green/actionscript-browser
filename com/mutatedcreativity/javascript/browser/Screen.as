/*
Screen - 0.1

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
	import flash.external.ExternalInterface;
	
	/**
	* A class that lets you communicate with the Screen object without the user having to write javascript.
	* @author Jeremy Green
	* @version 0.1
	* @url www.mutatedcreativity.com
	*/
	
	public class Screen
	{
		/**
		* Get the available height of the Screen object.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * trace(Screen.availHeight);
	    * </pre>
	    * </div>
	    */
		public static function get availHeight():String
		{
			return ExternalInterface.call("function(){ return window.screen.availHeight; }");
		}
		/**
		* Get the available width of the Screen object.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * trace(Screen.availWidth);
	    * </pre>
	    * </div>
	    */
		public static function get availWidth():String
		{
			return ExternalInterface.call("function(){ return window.screen.availWidth; }");
		}
		/**
		* Get the colorDepth property of the Screen object.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * trace(Screen.colorDepth);
	    * </pre>
	    * </div>
	    */
		public static function get colorDepth():String
		{
			return ExternalInterface.call("function(){ return screen.colorDepth; }");
		}
		/**
		* get the height on the Screen object.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * trace(Screen.height);
	    * </pre>
	    * </div>
	    */
		public static function get height():String
		{
			return ExternalInterface.call("function(){return screen.height; }");
		}
		/**
		* Get the width of the Screen object.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * trace(Screen.width);
	    * </pre>
	    * </div>
	    */
		public static function get width():String
		{
			return ExternalInterface.call("function(){return screen.width; }");
		}
		/**
		* Get the pixelDepth property of the Screen object.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * trace(Screen.pixelDepth);
	    * </pre>
	    * </div>
	    */
		public static function get pixelDepth():String
		{
			return ExternalInterface.call("function(){ if(screen.pixelDepth) { return screen.pixelDepth; } else { return 'Current browser does not support this property'; } }");
		}
	}
}