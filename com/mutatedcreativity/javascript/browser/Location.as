/*
Location - 0.1

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
	* A class that lets you communicate with the Location object without the user having to write javascript.
	* @author Jeremy Green
	* @version 0.1
	* @url www.mutatedcreativity.com
	*/
	
	public class Location
	{
		/**
		* Get and set the hash property of the Location object.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * trace(Location.hash);
	    * Location.hash = "example";
	    * </pre>
	    * </div>
	    */
		public static function get hash():String
		{
			return ExternalInterface.call("function(){ return location.hash; }");
		}
		public static function set hash(value:String):void
		{
			ExternalInterface.call("function(param){ location.hash = param; }", value);
		}
		/**
		* Get and set the host property of the Location object.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * trace(Location.host);
	    * Location.host = "www.example.com";
	    * </pre>
	    * </div>
	    */
		public static function get host():String
		{
			return ExternalInterface.call("function(){ return location.host; }");
		}
		public static function set host(value:String):void
		{
			ExternalInterface.call("function(param){ location.host = param; }", value);
		}
		/**
		* Get and set the hostname property of the Location object.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * trace(Location.hostname);
	    * Location.hostname = "www.example.com";
	    * </pre>
	    * </div>
	    */
		public static function get hostname():String
		{
			return ExternalInterface.call("function(){ return location.hostname; }");
		}
		public static function set hostname(value:String):void
		{
			ExternalInterface.call("function(param){ location.hostname = param; }", value);
		}
		/**
		* Get and set the pathname of the Location object.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * trace(Location.pathname);
	    * Location.pathname = "/example/";
	    * </pre>
	    * </div>
	    */
		public static function get pathname():String
		{
			return ExternalInterface.call("function(){ return location.pathname; }");
		}
		public static function set pathname(value:String):void
		{
			ExternalInterface.call("function(param){ location.pathname = param; }", value);
		}
		/**
		* Get and set the href property of the Location object.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * trace(Location.href);
	    * Location.href = "http://www.example.com";
	    * </pre>
	    * </div>
	    */
		public static function get href():String
		{
			return ExternalInterface.call("function(){ return location.href; }");
		}
		public static function set href(value:String):void
		{
			ExternalInterface.call("function(param){ location.href = param; }", value);
		}
		/**
		* Get and st the port property of the Location object.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * trace(Location.port);
	    * Location.port = 80;
	    * </pre>
	    * </div>
	    */
		public static function get port():int
		{
			return ExternalInterface.call("function(){ return location.port; }") as int;
		}
		public static function set port(value:int):void
		{
			ExternalInterface.call("function(param){ location.port = param; }", value);
		}
		/**
		* Get and set the protocol property of the Location object.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * trace(Location.protocol);
	    * Location.protocol = "https:";
	    * </pre>
	    * </div>
	    */
		public static function get protocol():String
		{
			return ExternalInterface.call("function(){ return location.protocol; }");
		}
		public static function set protocol(value:String):void
		{
			ExternalInterface.call("function(param){ location.protocol = param; }", value);
		}
		/**
		* Get and set the search property of the Location object.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * trace(Location.search);
	    * Location.search = "example";
	    * </pre>
	    * </div>
	    */
		public static function get search():String
		{
			return ExternalInterface.call("function(){ return location.search; }");
		}
		public static function set search(value:String):void
		{
			ExternalInterface.call("function(param){ location.search = param; }", value);
		}
		/**
		* Assign a new url to the Location object.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * Location.assign("http://www.example.com");
	    * </pre>
	    * </div>
	    */
		public static function assign(url:String):void
		{
			ExternalInterface.call("function(param){ location.assign(param); }", url);
		}
		/**
		* Reload the page.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * Location.reload();
	    * </pre>
	    * </div>
	    */
		public static function reload():void
		{
			ExternalInterface.call("function(){ location.reload(); }");
		}
		/**
		* Replace the url of the Location object.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * Location.replace("http://www.example.com");
	    * </pre>
	    * </div>
	    */
		public static function replace(url:String):void
		{
			ExternalInterface.call("function(param){ location.replace(param); }", url);
		}
	}
}