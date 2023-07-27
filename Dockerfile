# Usa l'immagine base di Nginx da Docker Hub
FROM nginx:latest

# Copia la pagina web "Hello, World!" nella cartella di default di Nginx
COPY index.html /usr/share/nginx/html/
