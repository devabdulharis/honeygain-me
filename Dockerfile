# Gunakan image dasar Honeygain
FROM honeygain/honeygain:latest

# Jalankan perintah Honeygain langsung
ENTRYPOINT ["honeygain", "-tou-accept", "true", "-email", "harizdev@yandex.com", "-pass", "Harizdev123@", "-device", "Linux"]
