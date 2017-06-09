    $ docker build -t .
    $ docker run -d -p 40000:40000 -v $(pwd):/opt/notebooks $(docker images -aq | head -1)

Visit: http://localhost:40000/
