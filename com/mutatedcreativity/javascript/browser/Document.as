/*
Document - 0.1

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
	* A class that lets you communicate with the Document object without the user having to write javascript.
	* @author Jeremy Green
	* @version 0.1
	* @url www.mutatedcreativity.com
	*/
	
	public class Document
	{	
		/**
		* Get the referrer property of the Document.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * trace(Document.referrer);
	    * </pre>
	    * </div>
	    */
		public static function get referrer():String
		{
			return ExternalInterface.call("function(){ return document.referrer; }");
		}
		/**
		* Get the lastModified property of the Document.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * trace(Document.lastModified);
	    * </pre>
	    * </div>
	    */
		public static function get lastModified():String
		{
			return ExternalInterface.call("function(){ return document.lastModified; }");
		}
		/**
		* Get the domain property of the Document.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * trace(Document.domain);
	    * </pre>
	    * </div>
	    */
		public static function get domain():String
		{
			return ExternalInterface.call("function(){ return document.domain; }");
		}
		/**
		* Get the url property of the Document.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * trace(Document.url);
	    * </pre>
	    * </div>
	    */
		public static function get url():String
		{
			return ExternalInterface.call("function(){ return document.URL; }");
		}
		/**
		* Get the cookie property of the Document.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * trace(Document.cookie);
	    * </pre>
	    * </div>
	    */
		public static function get cookie():String
		{
			return ExternalInterface.call("function(){ return document.cookie; }");
		}
		/**
		* Get and set the title property of the Document.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * trace(Document.title);
	    * Document.title = "Example";
	    * </pre>
	    * </div>
	    */
		public static function get title():String
		{
			return ExternalInterface.call("function(){ return document.title; }");
		}
		public static function set title(value:String):void
		{
			ExternalInterface.call("function(param){ document.title = param; }", value);
		}
		/**
		* Get the documentMode property of the Document.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * trace(Document.documentMode);
	    * </pre>
	    * </div>
	    */
		public static function get documentMode():String
		{
			return ExternalInterface.call("function(){ if(document.documentMode){ return document.documentMode; } else { return 'Current browser does not support this property'; } }");
		}
		/**
		* Write a line on the Document.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * Document.write("message");
	    * </pre>
	    * </div>
	    */
		public static function write(value:String):void
		{
			ExternalInterface.call("function(param){ document.write(param); }", value);
		}
		/**
		* Write a line on the Document.
	    * @example
	    * <div class="listing">
	    * <pre>
	    * Document.writeln("message");
	    * </pre>
	    * </div>
	    */
		public static function writeln(value:String):void
		{
			ExternalInterface.call("function(param){ document.writeln(param); }", value);
		}
	}
}