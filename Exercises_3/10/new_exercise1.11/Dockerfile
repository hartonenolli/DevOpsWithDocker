FROM amazoncorretto:8-alpine-jdk AS build

WORKDIR /usr/src/app

COPY . .

RUN ./mvnw package && \
    adduser -D appuser && \
    chown -R appuser /usr/src/app

FROM amazoncorretto:8-alpine-jdk

COPY --from=build /etc/passwd /etc/passwd

USER appuser

WORKDIR /usr/src/app

EXPOSE 8080

COPY --from=build /usr/src/app .

CMD ["java", "-jar", "./target/docker-example-1.1.3.jar"]
