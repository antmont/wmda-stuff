# wmda-stuff

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
    * Delete bolierplate
    * Add text below
    * Save

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
