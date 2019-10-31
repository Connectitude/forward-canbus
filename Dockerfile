FROM alpine:3.9
RUN apk --no-cache add socat 
WORKDIR /app
COPY forward-canbus.sh /app/forward-canbus.sh
CMD /app/forward-canbus.sh

