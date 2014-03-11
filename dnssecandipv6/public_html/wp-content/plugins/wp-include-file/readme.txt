=== AmberPanther WP Include File ===
Contributors: AmberPanther
Donate link: 
Tags: include, file, PHP, code, script, the_content, post content, shortcode
Requires at least: 2.8
Tested up to: 3.1
Stable tag: 3.1

WP Include File utilizes the WordPress Shortcode to include the contents and output from PHP code located in an external file within the post content.

== Description ==

### Why do you need WP Include File?
WP Include File is needed because any PHP code you type within the tinyMCE will not be rendered when the post content is displayed. Hence instead of having to create templates for each specific task/post, you can just create localized specific files and just include them in the post content using WP Include File.

Furthermore it becomes handy when applying specific styles to certain posts that are not required by the rest of the site. Just enclose the style definitions in the style tags, save it in a file and include it in the specific post using WP Include File. Hence you save on bandwidth and load times by not loading unnecessary style definitions where they are not needed.

### Invoking WP Include File using the Shortcode within the tinyMCE
WP Include File can be invoked using the Shortcode `[include]`. The Shortcode accepts four attributes: `file`, `path`, `masterpath` and `variables`. It will include the contents of the specified file at the location the Shortcode is placed within the post content. For a full explanation of the implementation read the Help page under the WP Include File Options once the plugin is activated or visit [WP Include File's Home](http://www.amberpanther.com/contributions/wp-include-file/ "WP Include File Home") 

### Features
* Include any PHP file in your post/content.
* Define your own custom directory path (new in 3.1), thus, making the same file available to multiple sites on your server.
* Pass data to the included file via a query, making them available in the global $_GET variable (new in 3.1).
* Pass variables to the included file (new in 3.1).
* Advanced form security, nonce and whitelist registration of option variable to be written in the database.
* Options stored as one array in the database to minimize database cluster.
* Unregistration of option variable from whitelist on deactivation.
* On uninstall option array is removed from the database. No trail left behind.
* Functional and user-friendly options page.
* Help page build-in.

== Installation ==

1. Upload `wp-include-file.zip` archive to the `/wp-content/plugins/` directory and unzip it. It will create a directory `wp-include-file`
1. Activate the plugin through the 'Plugins' menu in WordPress
1. Go to the WP Include File Options page and set the paths
1. Read the Help page to understand the functionality and implementation
1. Use the Shortcode`[include file="AnyFile.php"]` in the tinyMCE to include any file in the post content

== Frequently Asked Questions ==

= How can I use the WP Include File plugin =

Take a moment to read the Help page under the WP Include File Options once tha plugin is activated. Everything should be clear then. You can also refer to [WP Include File's Home](http://www.amberpanther.com/contributions/wp-include-file/ "WP Include File Home")

= My File is not being included =

Enable the Debug Mode through the WP Include Options page. This will show information on the post page about the file path, if not found.

= I found a bug! I have a suggestion! =

You can report all bugs or leave suggestions at [WP Include File's Home](http://www.amberpanther.com/contributions/wp-include-file/ "WP Include File Home")

== Screenshots ==

1. WP Include File shortcode implementation in the tinyMCE
2. WP Include File Options page

== Changelog ==
= 3.1 =
* Verified compatibility with WordPress 3.0.5
* Added the capability for passing data to the included file via a query string
* Added the capability for passing variables to the included file
* Added the option to define a custom path
* Added a check for reserved variables passed via the variables attribute
* Added a warning in the Admin pages if the Debug mode is enabled
* Added a warning in the Options page if the directory path is not found
* Added the display of the full path as defined in the Options page
* Updated help page


= 2.10.10.10 =
* Verified compatibility with WordPress 3.0.1
* Introduced Debug Mode Option to ensure the paths are set correctly
* Integrated AmberPanther plugin framework

= 1.9.12.22 =
* Verified compatibility with WordPress 2.9

= 1.9.10.23 =
* Enhnaced the security for the back-end and saving options to the database.
* Differentiated and added the option for the Site Root directory and WordPress Installation directory paths.
* Tested and confirmed compatibility with WordPress 2.8.5 .

= 1.9.10.17 =
* First public release of WP Include File.


