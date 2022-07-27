FROM python:3.8-slim-buster
WORKDIR .
COPY . .
RUN pip3 install -r requirements.txt
RUN mkdir .streamlit
COPY streamlit-config.toml .streamlit/config.toml
CMD [ "streamlit", "run" , "app.py"]
