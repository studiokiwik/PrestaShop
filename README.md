README
======
![PrestaShop](http://www.prestashop.com/images/banners/general/banner-github_728x90.png "PrestaShop")

ABOUT PRESTASHOP
--------

PrestaShop is a free and open-source e-commerce web application, committed to providing the best shopping cart experience for both merchants and consumers.

ABOUT THIS REPOSITORY
--------

This repository contains the latest version of PrestaShop: version 1.6. You can learn more about the new features of version 1.6 on [the progress page][1].

Clicking the "Download ZIP" button from the root of this repository will download the current state of PrestaShop 1.6 -- a branch that is in active development, and ready for production use. Note that the zip file will not contain the default modules: you need to make a recursive clone using Git in order to downloaded these files too. See [CONTRIBUTING.md][7] for more information about using Git.

If you want to download the latest stable version of PrestaShop (currently v1.6.0.5), go to [the download page][2] on the official PrestaShop site.


SERVER CONFIGURATION
--------

To install PrestaShop, you need a web server running PHP5 and any flavor of MySQL5 (MySQL, MariaDB, Percona Server, etc.).
You will also need a database administration tool, such as phpMyAdmin, in order to create a database for PrestaShop.
We recommend the Apache or Nginx web servers.

If your host does not offer PHP5 by default, [here are a few explanations][3] about PHP5 or the .htaccess file for certain hosting services (1&amp;1, Free, OVH, Infomaniak, Amen, GoDaddy, etc.).

If you want your own store with nothing to download and install, visit [http://www.prestabox.com][4]: it lets you create your online store in less than 10 minutes without any technical knowledge.


INSTALLATION
--------

Once the files in the PrestaShop archive have been decompressed and uploaded on your hosting space, go to the root of your PrestaShop directory With your web browser, and the PrestaShop installer will start automatically. Follow the instructions until PrestaShop is installed.

If you get any PHP error, it might be that you don't have PHP5 on your web server, or that you need to activate it on. See the page linked above or contact your web host directly.
If you don't find any solution to start the installer, please post on [the PrestaShop forums][5].


DOCUMENTATION
--------

The official PrestaShop documentation is available online [on its own website][6].


CONTRIBUTING
--------

If you want to contribute to PrestaShop, read the [CONTRIBUTING.md][7] file in this repository or read the [tutorials about contribution][8] on the documentation site.

If you want to help translate PrestaShop in your language, join us on [Crowdin][8]!

[![Crowdin](https://crowdin.net/badges/prestashop-official/localized.png)](https://crowdin.net/project/prestashop-official)


FORUMS
--------

You can discuss, help and contribute to improving PrestaShop with the PrestaShop community on [the PrestaShop forums][5].

SUPPORT
--------

If you need help, contact the PrestaShop support team: http://support.prestashop.com/.


Thank you for downloading and using the PrestaShop e-commerce Open-source solution!

[1]: http://www.prestashop.com/en/progress-1-6
[2]: http://www.prestashop.com/en/download
[3]: http://doc.prestashop.com/display/PS16/Misc.+information#Misc.information-ActivatingPHP5
[4]: http://www.prestabox.com
[5]: http://www.prestashop.com/forums/
[6]: http://doc.prestashop.com
[7]: CONTRIBUTING.md
[8]: http://doc.prestashop.com/display/PS16/Contributing+to+PrestaShop
[9]: https://crowdin.net/project/prestashop-official
