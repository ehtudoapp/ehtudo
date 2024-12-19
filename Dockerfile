# Use o Nginx versão 1.26.2 com o Alpine Linux como imagem base
FROM nginx:1.26.2-alpine

# Copie os arquivos estáticos da pasta www do host para o diretório www do contêiner
COPY ./www /usr/share/nginx/html

# Exponha a porta 80 para que o Nginx possa servir a página
EXPOSE 80

# Comando para iniciar o Nginx quando o contêiner for iniciado
CMD ["nginx", "-g", "daemon off;"]
