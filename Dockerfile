# Gunakan image dasar Honeygain
FROM honeygain/honeygain:latest

# Jalankan Honeygain langsung dengan email, password, dan parameter lainnya
CMD ["honeygain", "-tou-accept", "-email", "harizdev@yandex.com", "-pass", "Harizdev123@", "-device", "Linux"]
