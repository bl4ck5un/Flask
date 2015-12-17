source env/bin/activate
sudo env/bin/python manage.py collectstatic
pushd staticfiles/
sudo chown -R nginx:nginx .
popd
