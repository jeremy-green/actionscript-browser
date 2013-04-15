/*
History - 0.1

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
	* A class that lets you communicate with the History object without the user having to write javascript.
	* @author Jeremy Green
	* @version 0.1
	* @url www.mutatedcreativity.com
	*/
	
	public class History
	{
		/**
		* Get the length property of the History object.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * trace(History.length);
	    * </pre>
	    * </div>
	    */
		public static function get length():String
		{
			return ExternalInterface.call("function(){ return history.length; }");
		}
		/**
		* Send the page back in History.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * History.back();
	    * </pre>
	    * </div>
	    */
		public static function back():void
		{
			ExternalInterface.call("function(){ history.back(); }");
		}
		/**
		* Send the page forward in History.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * History.forward();
	    * </pre>
	    * </div>
	    */
		public static function forward():void
		{
			ExternalInterface.call("function(){ history.forward(); }");
		}
		/**
		* Send the page to a specified location in the History object.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * //go forward in history
	    * History.go(1);
	    * 
	    * //go backward in history
	    * History.go(-1);
	    * </pre>
	    * </div>
	    */
		public static function go(location:int):void
		{
			ExternalInterface.call("function(param){ history.go(param); }", location);
		}
	}
}