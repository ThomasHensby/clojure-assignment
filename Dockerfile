FROM openjdk:8-alpine

COPY target/uberjar/clojure-assignment.jar /clojure-assignment/app.jar

EXPOSE 3000

CMD ["java", "-jar", "/clojure-assignment/app.jar"]
