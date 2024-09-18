# Gunakan image dasar Honeygain
FROM honeygain/honeygain:latest

# Install netcat untuk membuat dummy server
RUN apt-get update && apt-get install -y netcat

# Set environment variable for PORT (if Adaptable.io provides one)
ENV PORT=8080

# Jalankan Honeygain dan dummy server pada port yang diminta
CMD ["sh", "-c", "honeygain -tou-accept true -email harizdev@yandex.com -pass Harizdev123@ -device Linux & nc -lk -p $PORT"]
