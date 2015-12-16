# Deployment Guidance

## Setup on a new machine

1. Setup Virtual Environment
    
    virtualenv env
    source env/bin/activate
    pip install -r requirements.txt
    
2. Generate publication lists

    python manage.py genpublications
    

## Local Test

1. Switch to the test environment

    source env/bin/activate
