/*
Navigator - 0.1

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
	* A class that lets you communicate with the Navigator object without the user having to write javascript.
	* @author Jeremy Green
	* @version 0.1
	* @url www.mutatedcreativity.com
	*/
	
	public class Navigator
	{
		/**
		* Get the appCodeName property of the Navigator object.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * trace(Navigator.appCodeName);
	    * </pre>
	    * </div>
	    */
		public static function get appCodeName():String
		{
			return ExternalInterface.call("function(){ return navigator.appCodeName; }");
		}
		/**
		* Get the appName of the Navigator object.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * trace(Navigator.appName);
	    * </pre>
	    * </div>
	    */
		public static function get appName():String
		{
			return ExternalInterface.call("function(){ return navigator.appName; }");
		}
		/**
		* Get the appVersion of the Navigator object.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * trace(Navigator.appVersion);
	    * </pre>
	    * </div>
	    */
		public static function get appVersion():String
		{
			return ExternalInterface.call("function(){ return navigator.appVersion; }");
		}
		/**
		* Check if cookies are enabled.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * trace(Navigator.cookieEnabled);
	    * </pre>
	    * </div>
	    */
		public static function get cookieEnabled():String
		{
			return ExternalInterface.call("function(){ return navigator.cookieEnabled; }");
		}
		/**
		* Get the platform of the Navigator object.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * trace(Navigator.platform);
	    * </pre>
	    * </div>
	    */
		public static function get platform():String
		{
			return ExternalInterface.call("function(){ return navigator.platform; }");
		}
		/**
		* Get the userAgent of the Navigator object.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * trace(Navigator.userAgent);
	    * </pre>
	    * </div>
	    */
		public static function get userAgent():String
		{
			return ExternalInterface.call("function(){ return navigator.userAgent; }");
		}
		/**
		* Check if java is enabled.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * trace(Navigator.javaEnabled());
	    * </pre>
	    * </div>
	    */
		public static function javaEnabled():Boolean
		{
			return ExternalInterface.call("function(){ return navigator.javaEnabled(); }") as Boolean;
		}
		/**
		* Check if data tainting is enabled.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * trace(Navigator.taintEnabled());
	    * </pre>
	    * </div>
	    */
		public static function taintEnabled():Boolean
		{
			return ExternalInterface.call("function(){ return navigator.taintEnabled(); }") as Boolean;
		}
	}
}