/*
Bookmark - 0.1

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

package com.mutatedcreativity.bookmark
{
	import flash.external.ExternalInterface;
	
	/**
    * A bookmark class that lets the user add a particular page as a bookmark in their browser without the user having to write javascript.
    * @author Jeremy Green
    * @version 0.1
	* @url www.mutatedcreativity.com
    */
	
	public class Bookmark
	{
		public var title:String;
		public var url:String;
		
		/**
        * A bookmark class that lets the user add a particular page as a bookmark in their browser without the use of javascript.
        * @author Jeremy Green
        * @example
	    * <div class="listing">
	    * <pre>
	    * var bookmark:Bookmark = new Bookmark("Example", "http://www.example.com");
	    * </pre>
	    * </div>
        */
		
		public function Bookmark(title:String = null, url:String = null)
		{
			this.title = title;
			this.url = url;
		}
		/**
		* Get or set the title of the bookmark
	    * @example
	    * <div class="listing">
	    * <pre>
	    * bookmark.title = "Example";
	    * trace(bookmark.title);
	    * </pre>
	    * </div>
	    */
		public static function set title(value:String):void
		{
			title = value;
		}
		public static function get title():String
		{
			return title;	
		}
		/**
		* Get or set the url of the bookmark
	    * @example
	    * <div class="listing">
	    * <pre>
	    * bookmark.url = "http://www.example.com";
	    * trace(bookmark.url);
	    * </pre>
	    * </div>
	    */
		public static function set url(value:String):void
		{
			url = value;
		}
		public static function get url():String
		{
			return url;
		}
		/**
	    * @example
	    * <div class="listing">
	    * <pre>
	    * var bookmark:Bookmark = new Bookmark();
	    * bookmark.url = "http://www.example2.com";
	    * bookmark.title = "Example2";
	    * bookmark.call();
	    * </pre>
	    * </div>
	    */
		public function call():void
		{
			if(!ExternalInterface.call("function(title, url){ if (window.sidebar){ window.sidebar.addPanel(title, url,''); return true; } else if(window.external) { window.external.AddFavorite( url, title); return true; } else { return false; }}", title, url))
			{
				throw new Error("Current browser does not support bookmarks");
			}
		}
	}
}