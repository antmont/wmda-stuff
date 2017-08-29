# wmda-stuff
[![License](https://img.shields.io/badge/License-BSD%203--Clause-blue.svg)](https://opensource.org/licenses/BSD-3-Clause)

## pythonanywhere deployment

### Initial install
**Pythonanywhere commandline:**

*If virtualenvironment running:*
```
deactivate
```

``` bash
cd ~
git clone https://github.com/antmont/wmda-stuff.git
cd wmda-stuff
virtualenv --python=python3.6 wmdavenv
source wmdavenv/bin/activate
pip install -r requirements.txt
```

**Configure**

* Dashboard
* Web tab
* Add a new web app
* Manual configuration
* Virtualenv: choose `/home`
    * Enter `/home/antmont/wmda-stuff/wmdavenv/`
    * click blue tick
* WSGI configuration file:
    * Click link to edit
    * Delete boilerplate
    * Add text below
    * Save
* Static files
    * Ensure `python manange.py collectstatic` has been run
    * Add line to staic files configuration:
        * URL: `/static/`
        * Directory: `/home/antmont/wmda-stuff/static`

*antmont_pythonanywhere_com_wsgi.py:*
``` python
import os
import sys

path = os.path.expanduser('~/wmda-stuff')
if path not in sys.path:
    sys.path.append(path)

os.environ['DJANGO_SETTINGS_MODULE'] = 'wmdasite.settings'

from django.core.wsgi import get_wsgi_application
from django.contrib.staticfiles.handlers import StaticFilesHandler
application = StaticFilesHandler(get_wsgi_application())
```
* Reload

/home/antmont/wmda-stuff/static


## heroku deployment

Follow [How to Deploy Django Applications on Heroku](https://simpleisbetterthancomplex.com/tutorial/2016/08/09/how-to-deploy-django-applications-on-heroku.html)

```bash
heroku login
git push heroku master
# or
git push heroku
# if necessary:
heroku run python manage.py migrate
# to upload local database
heroku pg:reset
heroku pg:push wmdadict DATABASE_URL --app wmdasite
```
