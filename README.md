SWAY CONFIGURATION PROJECT
==========================

Current known issues
--------------------
- Volume buttons also do not work, currently using pavucontrol manualy.
- Firefox has a flickering issue, currently using `fedora-firefox-wayland-bin`.
- gtk input boxes are blurry, i.e when entering gpg passphrases.

Overall project goals
---------------------
Dotfile repositories quickly become complicated, and often qute bloated.
Most of the time individuals create their dotfile repositories with the sole
purpose of creating a quick and easy way to restore their configuration in the
case of a required, or accidental system reset. With this repository the goal
is to create a road map for new users to understand how to get started with 
configuring their systems without being forced to entirely copy another person's
dotfiles, which are often tailored to indivudual usecases and preference. 

The way that I can tailor these dotfiles to be applicable to the largest amount
of people possible, there will be a branch for each change that could be considered
for specific use cases.

Roadmap
-------
**Current development plan (no particular order):**
	- Create a useful status bar
		- Add disk usage 
		- Add memory usage
		- Add download speed?
	- Make volume keys work
	- Make screen brightness buttons work
	- Add tap to click
	- Add a video player
	- Video editor
	- Picture editor
	- Regular backups
	- Branches of dotfile repository for various levels of customizations
