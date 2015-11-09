from app import app

from model import *
from views import *

if __name__ == '__main__':
    init_db()
    app.run()
