FROM python:3.11

# Setup virtual environment
RUN pip install pipenv
WORKDIR /app
COPY . .

# Install local Pipfile to global environment
RUN pipenv install --system

# gunicorn hosts production server instead of development server
CMD gunicorn app:app -b 0.0.0.0:8080


