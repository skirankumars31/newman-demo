FROM postman/newman:5.3.1

WORKDIR /home/newman-demo
COPY openweathermap.postman_collection.json ./

RUN npm install -g newman-reporter-allure

RUN newman --version
#RUN newman run openweathermap.postman_collection.json --reporters allure