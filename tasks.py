from invoke import task

@task
def deploy(ctx):
    """Push to Heroku and runs any ancillary tasks necessary."""
    print("Pushing latest changes to Heroku...")
    ctx.run('pip freeze > requirements.txt')
    ctx.run('git add .')
    comment = input("Enter commit message: ")
    ctx.run('git commit -m "%s"' % comment)
    ctx.run("git push heroku master")
    ctx.run("heroku run python manage.py migrate")
    ctx.run("heroku run python manage.py compress")
