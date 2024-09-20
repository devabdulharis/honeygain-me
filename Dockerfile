FROM honeygain/honeygain:latest

# Set environment variables
ENV HONEYGAIN_EMAIL=dev.abdulharis@gmail.com
ENV HONEYGAIN_PASSWORD=Harizdev123@
ENV HONEYGAIN_DEVICE=KOYEB

# Buat skrip entrypoint
RUN echo '#!/bin/sh\n\
./honeygain -tou-accept -email "$HONEYGAIN_EMAIL" -pass "$HONEYGAIN_PASSWORD" -device "$HONEYGAIN_DEVICE"' > /entrypoint.sh && \
    chmod +x /entrypoint.sh

# Menjalankan skrip entrypoint
CMD ["/entrypoint.sh"]
