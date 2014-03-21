ludwig/homebrew-misc
====================

These are homebrew formulas for packages that I want to install, but which aren't
in the main repository. I used to install these into `~/opt/local` but I find it
easier to let homebrew manage the installation and removal of those packages.

To install them, `brew tap ludwig/misc` and then `brew install <formula>`.

If there is a formula conflict, you can `brew install ludwig/misc/<formula>`.

You can also install via URL:

    brew install https://github.com/ludwig/homebrew-misc/commits/master/<formula>.rb

