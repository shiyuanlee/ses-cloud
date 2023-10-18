FROM python:3.8
WORKDIR /
COPY ./scripts/exercise.py /
RUN pip install Flask requests
EXPOSE 5252
CMD ["python", "exercise.py"]