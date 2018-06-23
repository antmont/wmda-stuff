# wmdadict

# A data dictionary for the World Marrow Donor Association

[![License](https://img.shields.io/badge/License-BSD%203--Clause-blue.svg)](https://opensource.org/licenses/BSD-3-Clause)

## Development Quick-start
Development requires:
 
* python
* git
* node
* bower
* graphviz (for generating schema only)
* postgresql
* heroku

If using mac os, all can be installed by homebrew

```sh
brew install python3 git bower graphviz postgresql heroku
# Might require:
brew install graphviz --with-bindings
brew services start postgresql
heroku login
psql postgres
```

Setup python and clone code.

Ensure `.profile` or similar contains something like:

```sh
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/develop
source /usr/local/bin/virtualenvwrapper.sh
```
Clone repository

```sh
cd $PROJECT_HOME
git clone https://github.com/antmont/wmda-stuff.git
```
Create `.env` file by copying `.env.example` and editing to reflect needed settings.

Create virtual environment and link to directory:

```sh
mkvirtualenv -a $PROJECT_HOME/wmda-stuff --python /usr/local/bin/python3 wmdasite
```

Required python and Django packages are defined in
`requirements/common.txt` and `requirements/dev.txt`
Install with (in virtualenv):

```sh
pip install -r requirements/dev.txt
```

Required node.js packages are defined in `bower.json`
Install with:

```bash
bower install
```
Create databases and users

```sh
psql postgres
```

In psql:

```sql
\du
-- For each user without a password
\password <username>
CREATE ROLE wmdauser WITH LOGIN PASSWORD '<secret-password>';
ALTER ROLE wmdauser CREATEDB;
CREATE DATABASE wmdadict WITH OWNER wmdauser;
GRANT ALL PRIVILEGES ON DATABASE wmdadict TO wmdauser;
\q
```

### Generate schema diagram
```bash
python manage.py graph_models wmdadict -X OrderedModel | dot -Tpdf  -o docs/wmdadict-schema.pdf
```

## heroku deployment

Follow [How to Deploy Django Applications on Heroku](https://simpleisbetterthancomplex.com/tutorial/2016/08/09/how-to-deploy-django-applications-on-heroku.html)

Setup buildpacks for node (bower, bootstrap) and Python (Django):

```bash
export WMDA_APP=wmdasite
# or
export WMDA_APP=wmdasite-staging

heroku buildpacks:set heroku/python --app $WMDA_APP
heroku buildpacks:add --index 1 heroku/nodejs --app $WMDA_APP
heroku buildpacks --app $WMDA_APP
```

```bash
#heroku login
#git push heroku master
# or
#git push heroku
# if necessary:
export WMDA_APP=wmdasite
# or
export WMDA_APP=wmdasite-staging

heroku run python manage.py migrate --app $WMDA_APP
# to upload local database
heroku pg:reset --app $WMDA_APP
heroku pg:push wmdadict DATABASE_URL --app $WMDA_APP
```

### Copy production database to local development

```bash
export WMDA_APP=wmdasite
# or
export WMDA_APP=wmdasite-staging

dropdb wmdadict
PGUSER=wmdauser PGPASSWORD=DB_PASSWORD heroku pg:pull DATABASE_URL wmdadict --app $WMDA_APP
```
