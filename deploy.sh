    1  clear
    2  ls
    3  ll
    4  psql
    5  sudo yum -y install postgresql postgresql-server postgresql-devel postgresql-contrib postgresql-docs
    6  sudo yum update
    7  sudo yum upgrade
    8  sudo service postgres initdb
    9  sudo service postgresql initdb
   10  sudo /sbin/chkconfig postgresql on
   11  sudo service postgresql start
   12  pqsql
   13  psql
   14  su - postgres
   15  su
   16  sudo su
   17  sudo su - postgres
   18  sudo passwd
   19  su - password
   20  su - postgres
   21  sudo passwd postgres
   22  su - postgres
   23  clear
   24  ls
   25  mkdir dev
   26  git dev/
   27  ls
   28  yum install git
   29  sudo yum install git
   30  clear
   31  sudo pip install virtualenv
   32  sudo pip install -U virtualenv
   33  git clone https://github.com/bl4ck5un/fanz.io
   34  ls
   35  mv fanz.io/ dev/
   36  ls
   37  cd dev/
   38  ls
   39  clear
   40  ls
   41  cd fanz.io/
   42  ls
   43  vim requirements.txt 
   44  virtualenv env
   45  source env/bin/activate
   46  pip install -r requirements.txt 
   47   pip install psycopg2
   48  clear
   49   pip install psycopg2
   50  yum install build
   51  yum install gcc
   52  sudo yum install gcc
   53   pip install psycopg2
   54  pip install -r requirements.txt 
   55  python manage.py runserver
   56  python manage.py migrate
   57  python manage.py runserver
   58  python manage.py runserver 0.0.0.0:8000
   59  python manage.py runserver 0.0.0.0:80
   60  python manage.py runserver 0.0.0.0:8000
   61  clear
   62  ls
   63  ack white
   64  yum install -y ack
   65  sudo yum install -y ack
   66  ack white
   67  ack whitenoise
   68  vim project/settings.py
   69  maek
   70  python manage.py runserver 0.0.0.0:8000
   71  pip install uwsgi
   72  mkdir test
   73  vim test/test.py
   74  uwsgi
   75  uwsgi --http :8000 --wsgi-file test/test.py 
   76  vim test
   77  vim test/test.py 
   78  uwsgi --http :8000 --wsgi-file test/test.py 
   79  uwsgi --http :8000 --module project/wsgi.py
   80  tree
   81  ls
   82  ls project/
   83  vim project/wsgi.py
   84  uwsgi --http :8000 --module project/wsgi.py
   85  sudo yum install ngnix
   86  sudo yum install nginix
   87  sudo yum install nginx
   88  sudo service
   89  sudo service nginx start
   90  uwsgi --http :8000 --module project/wsgi.py:application
   91  ls
   92  clear
   93  ls
   94  https://raw.githubusercontent.com/nginx/nginx/master/conf/uwsgi_params
   95  wget https://raw.githubusercontent.com/nginx/nginx/master/conf/uwsgi_params
   96  fanzio_nginx.conf
   97  vim fanzio_nginx.conf
   98  ls
   99  vim uwsgi_params 
  100  uwsgi --http :8000 --module project.wsgi
  101  clear
  102  ll
  103  sudo ln -s fanzio_nginx.conf  /etc/nginx/sites-enabled/
  104  mkdir  /etc/nginx/sites-enabled/
  105  sudo mkdir  /etc/nginx/sites-enabled/
  106  sudo ln -s fanzio_nginx.conf  /etc/nginx/sites-enabled/
  107  vim project/settings.py
  108  vim fanzio_nginx.conf 
  109  python manage.py collectstatic
  110  sudo service nginx restart
  111  ls staticfiles/
  112  pwd
  113  vim fanzio_nginx.conf 
  114  sudo service nginx restart
  115  vim fanzio_nginx.conf 
  116  cat /var/log/nginx/
  117  sudo cat /var/log/nginx/
  118  sudo ls /var/log/nginx
  119  sudo ls /var/log/nginx/accesslog
  120  sudo ls /var/log/nginx/access.log
  121  sudo cat /var/log/nginx/access.log
  122  sudo cat /var/log/nginx/error.log
  123  cd /etc/nginx/
  124  ls
  125  cd sites-enabled/
  126  ls
  127  vim fanzio_nginx.conf 
  128  sudo fanzio_nginx.conf 
  129  sudo vim fanzio_nginx.conf 
  130  ll 
  131  cd 
  132  cd dev/fanz.io/
  133  vim fanzio_nginx.conf 
  134  clear
  135  ll
  136  sudo service nginx stop
  137  sudo service nginx start
  138  sudo cat /var/log/nginx/error.log
  139  sudo vim /etc/nginx/nginx.conf
  140  sudo service nginx stop
  141  sudo service nginx start
  142  sudo cat /var/log/nginx/error.log
  143  sudo cat /var/log/nginx/accesslog
  144  sudo cat /var/log/nginx/access.log
  145  date
  146  sudo cat /var/log/nginx/error.log
  147  clear
  148  vim fanzio_nginx.conf 
  149  sudo cat /var/log/nginx/error.log
  150  sudo cat /var/log/nginx/access.log
  151  sudo service nginx restart
  152  sudo vim /etc/nginx/nginx.conf
  153  ll /etc/nginx/sites-enabled/
  154  ls fanzio_nginx.conf 
  155  cd 
  156  cd -
  157  sudo ln -s $(pwd)/fanzio_nginx.conf  /etc/nginx/sites-enabled/
  158  sudo ln -sf $(pwd)/fanzio_nginx.conf  /etc/nginx/sites-enabled/
  159  cd /etc/nginx/sites-enabled/
  160  cat fanzio_nginx.conf 
  161  cd -
  162  cd 
  163  cd dev/fanz.io/
  164  sudo service nginx restart
  165  sudo cat /var/log/nginx/access.log
  166  sudo cat /var/log/nginx/error.log
  167  ps 
  168  ps -ef
  169  ps -ef | grep ngix
  170  ps -ef | grep ng
  171  ll static
  172  ll staticfiles/
  173  ll staticfiles
  174  sudo chown nginx:nginx -R staticfiles/
  175  ll 
  176  sudo service nginx restart
  177  ps -ef | grep ng
  178  ps -ef | grep nginx
  179  sudo vim /etc/nginx/nginx.conf
  180  sudo service nginx restart
  181  ll
  182  cd ..
  183  ls
  184  clear
  185  cd ..
  186  clear
  187  ls
  188  cd
  189  cd /www
  190  mkdir /www
  191  sudo mkdir /www
  192  sudo chown nginx:nginx /www
  193  cp -r ~/dev/fanz.io/* /www
  194  sudo cp -r ~/dev/fanz.io/* /www
  195  cd www
  196  cd /www
  197  git status
  198  sudo cp -r ~/dev/fanz.io /www
  199  cd www
  200  ll
  201  git status
  202  clear
  203  sudo cp -r ~/dev/fanz.io /www
  204  ll
  205  ls -a
  206  rm -rf *
  207  sudo rm -rf *
  208  cd ..
  209  rsync -av ~/dev/fanz.io/ /www/
  210  sudo rsync -av ~/dev/fanz.io/ /www/
  211  cd /www
  212  ls
  213  git status
  214  clear
  215  ls
  216  deactivate 
  217  ll
  218  sudo ln -sf $(pwd)/fanzio_nginx.conf  /etc/nginx/sites-enabled/
  219  vim fanzio_nginx.conf 
  220  cd ..
  221  ll
  222  sudo chown nginx:nginx www
  223  ll
  224  cd www
  225  sudo service nginx restart
  226  clear
  227  ls
  228  uwsgi --socket :8081 --wsgi-file test/test.py 
  229  source env/bin/activate
  230  uwsgi --socket :8081 --wsgi-file test/test.py 
  231  vim fanzio_nginx.conf 
  232  uwsgi --socket :8081 --wsgi-file test/test.py 
  233  sudo service nginx restart
  234  sudo cat /var/log/nginx/error.log
  235  uwsgi --socket :8081 --wsgi-file test/test.py 
  236  uwsgi --socket :8001 --wsgi-file test/test.py 
  237  vim fanzio_nginx.conf 
  238  uwsgi --socket fanzio.sock --wsgi-file test/test.py 
  239  ll
  240  cd ..
  241  chmod 777 www
  242  uwsgi --socket fanzio.sock --wsgi-file test/test.py 
  243  cd www
  244  uwsgi --socket fanzio.sock --wsgi-file test/test.py 
  245  sudo uwsgi --socket fanzio.sock --wsgi-file test/test.py 
  246  uwsgi --socket fanzio.sock --wsgi-file test/test.py 
  247  ll -a
  248  cd ../
  249  chown ec2-user:ec2-user www
  250  sudo chown ec2-user:ec2-user www
  251  clear
  252  ls
  253  cd www
  254  ls
  255  ll
  256  namei staticfiles/screen.css 
  257  namei -l staticfiles/screen.css 
  258  cd static
  259  cd staticf
  260  cd ../staticfiles/
  261  ll
  262  find . -type d
  263  cd ..
  264  find staticfiles/ -type d
  265  find staticfiles/ -type d -exec chmod 755 {} +
  266  sudo find staticfiles/ -type d -exec chmod 755 {} +
  267  sudo find staticfiles/ -type f -exec chmod 644 {} +
  268  namei staticfiles/screen.css 
  269  namei -l staticfiles/screen.css 
  270  namei -l ./staticfiles/screen.css
  271  namei -l $(pwd)/staticfiles/screen.css
  272  find staticfiles/ -type f -exec chmod 644 {} +
  273  find staticfiles/ -type f -exec sudo chmod 644 {} +
  274  find staticfiles/ -type f -exec ll {}
  275  find staticfiles/ -type f -exec ll {} +
  276  clear
  277  ls
  278  cd staticfiles/
  279  ll
  280  chmod 644 screen.css 
  281  sudo chmod 644 screen.css 
  282  ll
  283  sudo chmod 644 screen.css 
  284  sudo service nginx restart
  285  cd ..
  286  vim fanzio_nginx.conf 
  287  sudo service nginx restart
  288  namei /www/staticfiles/screen.css 
  289  namei -l /www/staticfiles/screen.css 
  290  clear
  291  ls
  292  uwsgi --socket fanzio.sock --wsgi-file test/test.py 
  293  sudo cat /var/log/nginx/error.log
  294  cd /www
  295  ls
  296  uwsgi --socket fanz.sock --wsgi-file test.py --chmod-socket=664
  297  uwsgi --socket fanzio.sock --wsgi-file test.py --chmod-socket=664
  298  source env/bin/activate
  299  uwsgi --socket fanzio.sock --wsgi-file test.py --chmod-socket=664
  300  clear
  301  uwsgi --socket fanzio.sock --wsgi-file test.py --chmod-socket=66
  302  uwsgi --socket fanzio.sock --wsgi-file test.py --chmod-socket=666
  303  uwsgi --socket fanzio.sock --wsgi-file test/test.py --chmod-socket=666
  304  sudo useradd -G 
  305  sudo useradd -G nginx ec2-user
  306  sudo usermod -G ngnix ec2-user
  307  sudo usermod -G nginx ec2-user
  308  uwsgi --socket fanzio.sock --wsgi-file test/test.py 
  309  uwsgi --socket fanzio.sock --wsgi-file test/test.py --chmod-socket=666
  310  uwsgi --socket fanzio.sock --wsgi-file --chmod-socket=666 --module project.wsgi
  311  sudo cat /var/log/nginx/error.log
  312  sudo cat /var/log/nginx/access.log
  313  sudo cat /var/log/nginx/error.log
  314  uwsgi --socket fanzio.sock  --chmod-socket=666 --module project.wsgi
  315  vim fanzio_uwsgi.ini
  316  uwsgi --ini fanzio_uwsgi.ini 
  317  sudo cat /var/log/nginx/error.log
  318  mv fanzio_uwsgi.ini uwsgi.ini
  319  vim uwsgi.ini 
  320  uwsgi --ini fanzio_uwsgi.ini 
  321  uwsgi --ini uwsgi.ini 
  322  vim uwsgi.ini 
  323  pip requirements.txt  > requirements.txt 
  324  pip freeze > requirements.txt 
  325  cat requirements.txt 
  326  clear
  327  deactivate 
  328  clear
  329  ls
  330  sudo pip install uwsgi
  331  uwsgi --ini uwsgi.ini 
  332  sudo mkdir /etc/uwsgi
  333  sudo mkdir /etc/uwsgi/vassals
  334  sudo ln -s /www/uwsgi.ini /etc/uwsgi/vassals/
  335  uwsgi --emperor /etc/uwsgi/vassals --uid nginx --gid nginx
  336  clear
  337  sudo vim /etc/rc.local 
  338  git status
  339  git add project/settings.py requirements.txt fanzio_nginx.conf test/ uwsgi.ini uwsgi_params 
  340  git status
  341  git commit -m 'deploy on aws'
  342  git commit --global --edit
  343  git config --global --edit
  344  git commit --amend --reset-author
  345  git push
  346  rbeoot
  347  reboot
  348  sudo reboot
  349  ps 
  350  pse f
  351  ps aux
  352  ps aux | grep nginx
  353  sudo service nginx start
  354  sudo cat /var/log/nginx/error.log
  355  clear
  356  ls
  357  rm -rf dev/
  358  cd 
  359  ls
  360  cd /
  361  ls
  362  cd www
  363  ls
  364  vim uwsgi.ini 
  365  ps aux
  366  ps aux | uwsgi
  367  ps aux | grep uwsgi
  368  cat /var/log/uwsgi-emperor.log
  369  sudo cat /var/log/uwsgi-emperor.log
  370  vim uwsgi.ini 
  371  clear
  372  sudo cat /var/log/nginx/error.log
  373  ps aux | grep uwsgi
  374  cat /etc/uwsgi/vassals/uwsgi.ini 
  375  sudo cat v
  376  sudo cat /var/log/uwsgi-emperor.log
  377  sudo vim /etc/rc.local 
  378  sudo reboot
  379  sudo service nginx enable
  380  sudo service nginx start
  381  cd /www
  382  vim fanzio.sock 
  383  vim fanzio_nginx.conf 
  384  /sbin/chkconfig nginx on
  385  sudo /sbin/chkconfig nginx on
  386  sudo /sbin/chkconfig 
  387  clear
  388  ls
  389  git status
  390  git diff
  391  vim fanzio_nginx.conf 
  392  git checkout -- fanzio_nginx.conf 
  393  vim fanzio_nginx.conf 
  394  sudo reboot
  395  cd ww
  396  cd /www
  397  git status
  398  git add -u
  399  git commit -m update
  400  git push
  401  ls
  402  ll
  403  cd /www
  404  ls
  405  git pull
  406  git status
  407  clear
  408  ls
  409  ll
  410  reboot
  411  sudo reboot
  412  cd /www
  413  git pull
  414  npm
  415  lsb_release
  416  uname -a
  417  ape
  418  apt
  419  yum
  420  ll
  421  ls
  422  ll
  423  clear
  424  cd //
  425  cd ww
  426  cd /www
  427  yum update
  428  sudo yum update
  429  ll
  430  yum install node
  431  sudo yum install node
  432  sudo yum install nodejs
  433  sudo yum install nodejs npms
  434  sudo yum install nodejs npm
  435  sudo curl --silent --location https://rpm.nodesource.com/setup | bash -
  436  su sudo
  437  su
  438  nodejs
  439  npm
  440  npm install -g gulp
  441  sudo npm install -g gulp
  442  npm -g install npm@latest-2
  443  sudo npm -g install npm@latest-2
  444  npm install semantic-ui --save
  445  cd semantic
  446  gulp build
  447  cd ..
  448  ./prepare.sh 
  449  cd static
  450  ll
  451  date
  452  cd ..
  453  ls
  454  clear
  455  ls
  456  ps
  457  ps aux
  458  uwsgi --reload /tmp/project-master.pid
  459  ls
  460  vim uwsgi
  461  cat uwsgi.ini 
  462  python manage.py collectstatic
  463  source env/bin/activate
  464  python manage.py collectstatic
  465  which python
  466  deactivate 
  467  source env/bin/activate
  468  which python
  469  env/bin/python
  470  env/bin/python manage.py collectstatic
  471  sudo env/bin/python manage.py collectstatic
  472  cd staticfiles/
  473  ll
  474  chown -R ngnix:ngnix .
  475  chown -R . ngnix:ngnix
  476  chown -R ngnix .
  477  chown -R nginx:nginx .
  478  sudo chown -R nginx:nginx .
  479  ll
  480  ls
  481  clear
  482  ls
  483  ll
  484  ls
  485  cd ..
  486  cd semantic
  487  ls
  488  cd dist/
  489  ls
  490* 
  491  gulp build
  492* 
  493  cd ..
  494  git pull
  495  sudo env/bin/python manage.py collectstatic
  496  cd static
  497  cd ../staticfiles/
  498  ll
  499  sudo chown -R nginx:nginx .
  500  history 
  501  history  > deploy.sh
  502  cd ..
  503  history  > deploy.sh
