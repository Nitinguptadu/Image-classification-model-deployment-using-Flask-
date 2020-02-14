FROM python:3



WORKDIR /usr/src/app

RUN apt-get update
RUN apt-get upgrade -y

# Anaconda installing
RUN apt-get install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6 -y

RUN wget https://repo.continuum.io/archive/Anaconda3-5.0.1-Linux-x86_64.sh
#RUN bash Anaconda3-5.0.1-Linux-x86_64.sh -b
#RUN rm Anaconda3-5.0.1-Linux-x86_64.sh

RUN bash Anaconda3-5.0.1-Linux-x86_64.sh -b && \
    echo "export PATH="/root/anaconda3/bin:$PATH"" >> ~/.bashrc && \
    /bin/bash -c "source ~/.bashrc"
ENV PATH /root/anaconda3/bin:$PATH
RUN conda update --all




COPY predict_app.py .
RUN mkdir -p /usr/src/app/static
COPY static/predict.html .
RUN cp predict.html static/




COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

RUN conda install tensorflow==2.0.0



CMD  ["python", "./predict_app.py"] 
 






