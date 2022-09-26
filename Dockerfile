FROM maven:4.0.0-jdk-11

WORKDIR /jpa-mysql-tuan4
COPY . .
RUN mvn clean install

CMD mvn spring-boot:run