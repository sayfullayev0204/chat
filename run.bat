@echo off
REM Create virtual environment if not exists
if not exist env (
    python -m venv env
)

REM Activate virtual environment
call env\Scripts\activate.bat

REM Upgrade pip
python -m pip install --upgrade pip

REM Install required packages
pip install django channels daphne

REM Open browser
start http://127.0.0.1:8000

REM Run Django server in current terminal (blocks until stopped)
python manage.py runserver
