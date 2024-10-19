# Virtual Hands Jedi Master

## Descrição

Este projeto utiliza **Visão Computacional** para criar um mouse virtual controlado pelas mãos usando a webcam. Ele detecta gestos com a mão, como cliques esquerdo e direito, duplo clique e captura de tela. O controle do mouse é feito através de gestos com os dedos, utilizando a biblioteca **Mediapipe** para detecção de landmarks da mão e **PyAutoGUI** para controlar o mouse.

## Tecnologias Utilizadas

- **Python**: Linguagem principal do projeto.
- **OpenCV**: Usada para captura e processamento de imagens da webcam e para exibir os resultados.
- **Mediapipe**: Biblioteca da Google utilizada para detecção de landmarks das mãos e reconhecimento de gestos.
- **PyAutoGUI**: Usada para controlar o mouse, permitindo movimentos, cliques e captura de tela.
- **Pynput**: Para controle e manipulação de cliques do mouse (esquerdo e direito) de forma programática.
- **Tkinter**: Necessário no Linux para suporte a funcionalidades do PyAutoGUI.
- **Numpy**: Usada para cálculos matemáticos, como ângulos entre landmarks e distâncias entre pontos.
- **Makefile**: Facilita a execução do projeto com o comando `make run`.

## Estrutura do Código

- **main.py**: Arquivo principal que captura o vídeo da webcam, processa os frames, detecta gestos e controla o mouse.
- **Funções principais**:
  - `detect_gestures()`: Detecta os gestos com base nos landmarks da mão.
  - `move_mouse()`: Move o cursor do mouse baseado na posição do dedo indicador.
  - `is_left_click()`, `is_right_click()`, `is_double_click()`, `is_screenshot()`: Funções que identificam gestos específicos e executam as ações correspondentes.
- **Exibição de Informações**: O OpenCV é utilizado para exibir na tela os gestos detectados, como "Left Click", "Double Click", e "Screenshot Taken".

## Como Rodar

Recomendamos rodar o projeto dentro de um **ambiente virtual Python**. Para configurar e rodar o projeto, siga os passos abaixo:

### 1. Clonar o Repositório

```bash
git clone <URL_DO_REPOSITORIO>
cd <PASTA_DO_REPOSITORIO>
```

### 2. Criar e Ativar o Ambiente Virtual

```bash
# Criar o ambiente virtual
python3 -m venv venv

# Ativar o ambiente virtual
# No Linux/Mac
source venv/bin/activate

# No Windows
venv\Scripts\activate
```

### 3. Instalar as Dependências

Com o ambiente virtual ativado, instale as dependências:

```bash
pip install -r requirements.txt
```

### 4. Rodar o Projeto

Depois de configurar tudo, basta rodar o comando abaixo para iniciar a aplicação:

```bash
make run
```

Esse comando vai capturar o vídeo da sua webcam e começar a detectar os gestos para controlar o mouse.

## Dependências Adicionais

No **Linux**, você precisará instalar o **Tkinter** e as bibliotecas de desenvolvimento do Python, caso ainda não tenha instalado. Rode o seguinte comando:

```bash
sudo apt-get install python3-tk python3-dev
```

## Funcionalidades Implementadas

- **Movimento do Mouse**: O mouse segue a posição do dedo indicador.
- **Clique Esquerdo**: Simulação de clique esquerdo com gesto da mão.
- **Clique Direito**: Simulação de clique direito.
- **Duplo Clique**: Detecta e executa duplo clique com gesto.
- **Captura de Tela**: Tira uma screenshot e salva no diretório.

## Contribuições

Sinta-se à vontade para abrir issues ou pull requests para sugerir melhorias, adicionar funcionalidades ou corrigir bugs.
