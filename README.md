# README: Configuração do Ambiente para Testes Automatizados com Robot Framework

Este guia aborda as etapas para configurar o ambiente necessário para realizar testes automatizados utilizando o Robot Framework.

---

## Requisitos de Instalação

### 1. Instalar Python
1. Acesse a [página oficial do Python](https://www.python.org/) e baixe o instalador adequado para o seu sistema operacional.
2. Durante a instalação, **marque a opção "Add python.exe to PATH"** e clique em **"Install Now"**.
3. Conclua a instalação e feche o instalador.

### 2. Instalar Node.js
1. Acesse a [página oficial do Node.js](https://nodejs.org/) e baixe o instalador.
2. Execute o instalador e siga os passos, clicando em "Next" até o final.
3. Clique em **"Install"** e aguarde a finalização.

### 3. Instalar o Robot Framework
1. Abra o Prompt de Comando (como administrador).
2. Execute o seguinte comando:
   ```bash
   pip install robotframework
   ```

### 4. Instalar SeleniumLibrary
1. No mesmo Prompt de Comando, execute:
   ```bash
   pip install --upgrade robotframework-seleniumlibrary
   ```

### 5. Instalar Faker Library
1. No Prompt de Comando, execute:
    pip install robotframework-faker
2. Realizar a atualização do setuptools caso necessário:
    pip install --upgrade setuptools

### 6. Instalar o ChromeDriver
1. Acesse a [página do ChromeDriver](https://sites.google.com/chromium.org/driver/).
2. Identifique a versão do seu Google Chrome:
   - Clique nos três pontinhos no canto superior direito do Chrome.
   - Acesse "Ajuda > Sobre o Google Chrome".
3. Baixe o ChromeDriver correspondente à versão do seu navegador.
4. Extraia o arquivo compactado (ZIP) e mova o arquivo `chromedriver.exe` para a pasta:
   ```
   C:\Windows\System32
   ```

### 7. Instalar o Organo (Material utilizado durante os estudos)
1. Baixe o [projeto Organo](#) e salve-o na pasta desejada.
2. Extraia o conteúdo do arquivo ZIP e renomeie a pasta para `organo`.
3. No Prompt de Comando:
   - Navegue até o diretório do Organo com:
     ```bash
     cd caminho_para_a_pasta/organo
     ```
   - Instale as dependências do projeto:
     ```bash
     npm install
     ```
   - Inicie o projeto:
     ```bash
     npm start
     ```
4. O projeto será iniciado em `http://localhost:3000`.

### 8. Instalar o Visual Studio Code
1. Acesse a [página oficial do Visual Studio Code](https://code.visualstudio.com/) e baixe o instalador.
2. Durante a instalação, marque a opção para criar um atalho na área de trabalho.
3. Conclua a instalação e abra o VS Code.
4. Instale a extensão **Robot Framework Language Server**:
   - Clique em "Extensões" no menu esquerdo.
   - Procure por "Robot Framework Language Server" e clique em **Install**.

---

## Criar a Pasta do Projeto
1. No VS Code, selecione "File > Open Folder".
2. Crie uma nova pasta chamada `curso-robot` na área de trabalho.
3. Abra essa pasta no VS Code para iniciar o desenvolvimento.

Agora você está pronto para começar seus testes automatizados!



