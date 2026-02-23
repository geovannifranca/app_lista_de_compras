# App Lista de Compras

## Descrição do Projeto

Este é o segundo desafio da metoria da GrowDev, um aplicativo móvel desenvolvido em Flutter para gerenciar listas de compras de forma eficiente e intuitiva. Ele permite aos usuários criar múltiplas listas, adicionar itens com seus respectivos valores, marcar itens como comprados e visualizar o progresso e os totais de cada lista.

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

Aqui estão algumas telas do aplicativo em funcionamento:


<img width="235,8" height="511,2" alt="pagina-1" src="https://github.com/user-attachments/assets/d22f2efc-7b6a-4944-b5c5-d1da66a349ac" />
<img width="235,8" height="511,2" alt="pagina-2" src="https://github.com/user-attachments/assets/7ff30e03-8ace-4632-b080-ff91d513142b" />
<img width="235,8" height="511,2" alt="pagina-3" src="https://github.com/user-attachments/assets/1d843f60-cc69-4d45-906d-0d7b93d63811" />
<img width="235,8" height="511,2" alt="pagina-4" src="https://github.com/user-attachments/assets/e0529967-1400-4a1f-9641-bb32ad268bef" />
<img width="235,8" height="511,2" alt="pagina-5" src="https://github.com/user-attachments/assets/ee2c85ee-b69d-4b1a-ab40-9a43ee8d62a7" />
<img width="235,8" height="511,2" alt="pagina-8" src="https://github.com/user-attachments/assets/97fff453-04f4-4e59-a124-132e57165d36" />
<img width="235,8" height="511,2" alt="pagina-9" src="https://github.com/user-attachments/assets/832d9e90-d502-4971-8910-68f0535e4c0e" />


## Licença

Este projeto está licenciado sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.
