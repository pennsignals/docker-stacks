FROM continuumio/anaconda3
MAINTAINER Jason Walsh <jason.walsh@uphs.upenn.edu>
RUN apt-get update && apt-get install -y \
	freetds-dev \
	g++ \
&& rm -rf /var/lib/apt/lists/*
COPY environment.yml .
RUN conda env update -n root
COPY . .
RUN jupyter notebook --allow-root --generate-config && echo 'c.NotebookApp.token = ""\r\nc.NotebookApp.password = ""\r\n' >> /root/.jupyter/jupyter_notebook_config.py
CMD [ "jupyter", "notebook", "--allow-root", "--notebook-dir=/opt/notebooks", "--ip='*'", "--port=40000", "--no-browser" ]

