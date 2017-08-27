Use original SQLITE3 connection in settings.py

`python manage.py dumpdata > data/wmdadict.json`

Update default `DATABASES` in `settings.py` eg:
```python
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': 'mydatabase',
        'USER': 'mydatabaseuser',
        'PASSWORD': 'mypassword',
        'HOST': '127.0.0.1',
        'PORT': '5432',
    }
}
```

Install the postgres python connector:

```bash
pip install psycopg2
pip freeze > requirements.txt
```

Migrate the database structure:

`python manage.py migrate`



Load the data:

```bash
psql wmdadict
    truncate django_content_type RESTART IDENTITY CASCADE;
    \q
python manage.py loaddata data/wmdadict.json
```
(Note: the psql command did not work, but selecting truncate > cascade on the
`django_content_type` table in pgAdmin, logged in as wmdauser did.)
