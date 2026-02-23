# App Lista de Compras

## Descrição do Projeto

Este é um desafio do módulo 4 da GrowDev, um aplicativo móvel desenvolvido em Flutter para gerenciar listas de compras de forma eficiente e intuitiva. Ele permite aos usuários criar múltiplas listas, adicionar itens com seus respectivos valores, marcar itens como comprados e visualizar o progresso e os totais de cada lista.

## Funcionalidades

- **Criação e Gerenciamento de Listas:** Crie e organize suas listas de compras de acordo com suas necessidades.
- **Adição de Itens:** Adicione itens às suas listas com nome e valor.
- **Marcação de Itens:** Marque itens como comprados para acompanhar o que já foi adquirido.
- **Visualização de Progresso:** Acompanhe o progresso de cada lista com indicadores visuais.
- **Cálculo de Totais:** Veja o valor total de itens marcados e não marcados em cada lista.

## Tecnologias Utilizadas

- **Flutter:** Framework de UI para a construção de aplicativos móveis, web e desktop a partir de um único código-fonte.
- **Dart:** Linguagem de programação otimizada para UI, utilizada pelo Flutter.
- **ChangeNotifier/setState (Gerenciamento de Estado):** Utilizado para gerenciar o estado da aplicação de forma reativa e eficiente.

## Estrutura do Projeto

O projeto segue uma estrutura modular, organizada da seguinte forma:

```
lib/
├── controllers/        # Lógica de negócio e gerenciamento de estado
│   ├── item_controller.dart
│   └── list_controller.dart
├── models/             # Definição dos modelos de dados (Item, MyList)
│   ├── item.model.dart
│   └── my_list.model.dart
├── pages/              # Telas principais do aplicativo
│   ├── home_page.dart
│   ├── items_page.dart
│   └── list_create_page.dart
├── widgets/            # Componentes de UI reutilizáveis
│   ├── add_item.widget.dart
│   ├── button_primary.widget.dart
│   ├── button_secundary.widget.dart
│   ├── list_card.widget.dart
│   └── my_item.widgets.dart
├── main.dart           # Ponto de entrada da aplicação
└── my_app.dart         # Configuração da aplicação Flutter
```

## Como Rodar o Projeto

Para configurar e rodar este projeto em sua máquina local, siga os passos abaixo:

### Pré-requisitos

Certifique-se de ter o Flutter SDK instalado. Você pode seguir as instruções de instalação na [documentação oficial do Flutter](https://flutter.dev/docs/get-started/install).

### Instalação

1. Clone o repositório:

   ```bash
   git clone https://github.com/geovannifranca/app_lista_de_compras.git
   cd app_lista_de_compras
   ```

2. Obtenha as dependências:

   ```bash
   flutter pub get
   ```

3. Execute o aplicativo:

   ```bash
   flutter run
   ```

## Screenshots
<img width="235,8" height="511,2" alt="pagina-1" src="https://github.com/user-attachments/assets/baf94bd0-98ca-47e9-bb82-473924dfaa53" />
<img width="235,8" height="511,2" alt="pagina-1" src="https://github.com/user-attachments/assets/baf94bd0-98ca-47e9-bb82-473924dfaa53" />
<img width="235,8" height="511,2" alt="pagina-2" src="https://github.com/user-attachments/assets/58795464-2730-476e-89c4-b64829823382" />
<img width="235,8" height="511,2" alt="pagina-3" src="https://github.com/user-attachments/assets/0a796fda-3c79-456f-87c9-928fe854e40c" />
<img width="235,8" height="511,2" alt="pagina-4" src="https://github.com/user-attachments/assets/e3d4e0a3-46bc-4c0c-8de9-e31f502c52ff" />
<img width="235,8" height="511,2" alt="pagina-5" src="https://github.com/user-attachments/assets/95e18f94-4c5b-4491-9adb-bf0bc89df902" />
<img width="235,8" height="511,2" alt="pagina-7" src="https://github.com/user-attachments/assets/33102149-ae17-4d70-9881-a88f84b30864" />
<img width="235,8" height="511,2" alt="pagina-8" src="https://github.com/user-attachments/assets/694b2523-6fc4-456f-a1ef-ff7154397563" />
<img width="235,8" height="511,2" alt="pagina-9" src="https://github.com/user-attachments/assets/c590d56f-c559-4d1d-8a5a-e062af5b53dd" />









## Licença

Este projeto está licenciado sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes. (Assumindo licença MIT, caso não exista um arquivo LICENSE no repositório, será necessário criar um ou ajustar esta seção.)
