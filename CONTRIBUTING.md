INFORMATION ON HOW TO CONTRIBUTE TO THIS PROJECT
================================================
This project is open to beginners and those just getting interested in Linux.
Do not be afraid to create a pull request or add a new issue. This project is 
for learning how to manipulate the linux enviournent to improve efficency of your
work flow.

If you would like to contribute to this project please follow the guidelines
detailed below.

Opening an Issue
----------------

**Reporting bugs**
If you have found a bug, or something is not functioning the way you think it should
then create an Issue on the [issues page](https://github.com/samerickson/dotfiles/issues).

When reporting a bug please include the following information:

1. The output of `uname -r`
2. Outline how to reproduce the issue if applicable
3. Detailed information on the nature of the bug. I.e what it does vs. what is is suppose
   to do.

**Requesting features**
If you would like to request specific functionality please create an issue where you
outline with as much detail as possible your idea of what should be added to this project.

Creating a Pull Request
-----------------------
Have you created somethings that you think is fitting for this project, or added
functionality requested in the issues tab? Create a pull
request we would love to see it. 


What does not belong in this project?
-------------------------------------
This project deals **exclusively** with the home folder. Any modifications outside the
home folder are considered outside the scope of this project. No files that reside outside
the home folder will be added to this repository. If there is a specific tweak that requires
modification of files outside the home folder then add a page on the 
[wiki](https://github.com/samerickson/dotfiles/wiki) with information on how to replicate
that respective feature or customization.

Contributing to the project wiki
--------------------------------
If you want to help write the wiki for this project? Awesome! Here are some guidelines
on what the project wiki should look like:

There are already so many Linux wiki's regarding the subject of customization, that it seems
useless to re-create that here. That being said, sometimes it is a pain to have to sift
though large documents on various websites and forms to accomplish your goals. 

The goal of this wiki is to give everyone the opportunity to write about what that have
discovered, and write miniature tutorials on how to duplicate their progress on other 
machines. Please keep the following in mind when writing wiki pages:

1. If it's really complicated, write a short paragraph explaining the issue and how to
	fix it, or the feature and how to add it, followed by a link to documents that provied 
	the required information.
2. When referencing packages or additional software **Always add a link to more infomation
	about the project**. 
	1. If the project has a Github page, link to that.
	2. Otherwise, if the project has a [Arch Wiki](https://wiki.archlinux.org/) page, link to
		that.
	3. Otherwise, link to the projects web page.
	4. If the project has none of those resources, then the project should not be included
		in this project.
3. Lots of beginners will be copying and pasting code as is. Therefore, always include **all
	information needed** to use **all** included snippets. 
	1. Include full pathnames to all files referenced
	2. Include a list of all required software and commands used
	3. Make snippets as robust and simple as possible, airing on the side of being robust
		and non-destructive over being simple.

Style Guidelines
---------------
* **Writing scripts**
	* Scripts should only be used to add basic functionality or chaining other
		programs together in a way that is to cumbersom to hand write. Or when a 
		sequence of commands needs to be repeated a number of times.
	* When at all possible, use a function in the `~/.config/aliasrc` file.
	* All shell scripts should use [bash](https://www.gnu.org/software/bash/).
	* Scripts should remain local to the tools that are using them. I.e. if you are adding
		a script that only the status bar uses, leave that script in the status bar config
		directory (If lots of scripts are required, group them in a scripts sub-directory)
	* No python scripts

* **Adding software configuration files:** Ask yourself the following questions
	* Does this package need to be added?
	* How many people are likely to make use of this package?
	* Is there something in this project already that has the same functionality?
	* If you still feel like the configuration files for that package should be added,
		create a pull request.
