FROM honeygain/honeygain:latest

# Set environment variables
ENV HONEYGAIN_EMAIL=dev.abdulharis@gmail.com
ENV HONEYGAIN_PASSWORD=Harizdev123@
ENV HONEYGAIN_DEVICE=KOYEB

# Menjalankan Honeygain dengan skrip shell untuk menjaga agar kontainer tetap berjalan
CMD ["sh", "-c", "./honeygain -tou-accept -email $HONEYGAIN_EMAIL -pass $HONEYGAIN_PASSWORD -device $HONEYGAIN_DEVICE && tail -f /dev/null"]
