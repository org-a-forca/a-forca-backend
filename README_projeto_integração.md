
# Projeto de Integração Front-end e Back-end

## Requisitos

Antes de rodar o projeto, certifique-se de ter as seguintes ferramentas instaladas em sua máquina:

- **Docker**: Para criar e rodar os containers.
- **Docker Compose**: Para orquestrar os containers.
- **Java 11**: Para garantir que o back-end seja executado corretamente.

## Passos para Rodar o Projeto

1. **Instalar o Java 11 (caso ainda não tenha instalado)**

   Se você estiver utilizando o **WSL** (Windows Subsystem for Linux), instale o Java 11:

   ```bash
   sudo apt update
   sudo apt install openjdk-11-jdk
   ```

   Depois, configure a variável `JAVA_HOME`:

   ```bash
   export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
   export PATH=$PATH:$JAVA_HOME/bin
   ```

   Para garantir que a configuração seja persistente, adicione essas linhas ao arquivo `~/.bashrc` ou `~/.zshrc`.

2. **Executar o Projeto com Docker Compose**

   Após garantir que o Java está configurado corretamente, navegue até a pasta do projeto e execute o seguinte comando para construir os containers e rodar o projeto:

   ```bash
   docker compose up --build
   ```

   Isso irá:

   - Construir as imagens dos containers com base nos arquivos de configuração.
   - Subir o back-end nos containers.

3. **Verificar se Tudo Está Funcionando**

   Após o build ser concluído, você deve conseguir acessar o projeto localmente. Verifique as portas e endpoints configurados no `docker-compose.yml` e acesse no seu navegador ou via Postman.

## Testar rotas do Back-end

1. **Criar usuario**
   - Chame a rota `http://localhost:8080/usuario/criar` com o método POST
   - Corpo da requisição:
   ```json
   {
    "nome": "Super Admin",
    "email": "superadmin@admin.com",
    "senha": "123456"
   }
2. **Fazer login**
   - Chame a rota `http://localhost:8080/usuario/logar` com o método POST
   - Corpo da requisição:
   ```json
   {"email": "superadmin@admin.com", "senha": "123456"}
   - A resposta trará um token JWT retornado nos headers que deve ser usado para autenticação nas próximas requisições.

## Erros Comuns e Como Corrigi-los

1. **Erro: `JAVA_HOME is not defined corretamente`**

   Certifique-se de que a variável `JAVA_HOME` está corretamente configurada para o Java 11, e que o caminho esteja correto.

2. **Erro ao baixar a imagem Docker: `Error response from daemon: pull access denied`**

   Isso ocorre quando o Docker não consegue acessar a imagem. Verifique se o arquivo `.jar` foi corretamente gerado e se está referenciado corretamente no `docker-compose.yml`.

