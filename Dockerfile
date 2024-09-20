# Gunakan image dasar Honeygain
FROM honeygain/honeygain:latest

# Install netcat (atau gunakan alternatif) untuk membuat dummy server
RUN apt-get update && apt-get install -y netcat

# Set environment variable for PORT (Koyeb requires this for web services)
ENV PORT=8080

# Jalankan Honeygain di latar belakang, lalu jalankan dummy server di port yang diharapkan Koyeb
CMD ["sh", "-c", "honeygain -tou-accept true -email harizdev@yandex.com -pass Harizdev123@ -device Linux & while true; do echo 'Honeygain is running' | nc -l -p $PORT; done"]
