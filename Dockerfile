# Gunakan image dasar Honeygain
FROM honeygain/honeygain:latest

# Set environment variables for email, password, device, and terms acceptance
ENV EMAIL=harizdev@yandex.com
ENV PASSWORD=Harizdev123@
ENV DEVICE=Linux
ENV TOU_ACCEPT=TRUE

# Jalankan honeygain dengan parameter yang diatur
CMD ["honeygain", "-tou-accept", "-email", "$EMAIL", "-pass", "$PASSWORD", "-device", "$DEVICE"]
