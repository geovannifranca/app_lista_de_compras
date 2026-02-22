# App Lista de Compras

## Descrição do Projeto

Este é um aplicativo móvel desenvolvido em Flutter para gerenciar listas de compras de forma eficiente e intuitiva. Ele permite aos usuários criar múltiplas listas, adicionar itens com seus respectivos valores, marcar itens como comprados e visualizar o progresso e os totais de cada lista.

## Funcionalidades

- **Criação e Gerenciamento de Listas:** Crie e organize suas listas de compras de acordo com suas necessidades.
- **Adição de Itens:** Adicione itens às suas listas com nome e valor.
- **Marcação de Itens:** Marque itens como comprados para acompanhar o que já foi adquirido.
- **Visualização de Progresso:** Acompanhe o progresso de cada lista com indicadores visuais.
- **Cálculo de Totais:** Veja o valor total de itens marcados e não marcados em cada lista.

## Tecnologias Utilizadas

- **Flutter:** Framework de UI para a construção de aplicativos móveis, web e desktop a partir de um único código-fonte.
- **Dart:** Linguagem de programação otimizada para UI, utilizada pelo Flutter.
- **Provider (Gerenciamento de Estado):** Utilizado para gerenciar o estado da aplicação de forma reativa e eficiente.
- **uuid:** Pacote para geração de identificadores únicos universais (UUIDs).

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

### Tela Inicial (Sem Listas)

![Tela Inicial Sem Listas](https://private-us-east-1.manuscdn.com/sessionFile/uHeccBIs5xIM74BY3v5KGC/sandbox/ydxQgYTPHWjKhKp79BTWn4-images_1771804473610_na1fn_L2hvbWUvdWJ1bnR1L2FwcF9saXN0YV9kZV9jb21wcmFzL2Fzc2V0cy9zY3JlZW5zaG90cy9wYWdpbmEtMQ.png?Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9wcml2YXRlLXVzLWVhc3QtMS5tYW51c2Nkbi5jb20vc2Vzc2lvbkZpbGUvdUhlY2NCSXM1eElNNzRCWTN2NUtHQy9zYW5kYm94L3lkeFFnWVRQSFdqS2hLcDc5QlRXbjQtaW1hZ2VzXzE3NzE4MDQ0NzM2MTBfbmExZm5fTDJodmJXVXZkV0oxYm5SMUwyRndjRjlzYVhOMFlWOWtaVjlqYjIxd2NtRnpMMkZ6YzJWMGN5OXpZM0psWlc1emFHOTBjeTl3WVdkcGJtRXRNUS5wbmciLCJDb25kaXRpb24iOnsiRGF0ZUxlc3NUaGFuIjp7IkFXUzpFcG9jaFRpbWUiOjE3OTg3NjE2MDB9fX1dfQ__&Key-Pair-Id=K2HSFNDJXOU9YS&Signature=eQ2NoE3DPtokAdCpTHK6MF5CWnW2Jz6hKnU626JUk8GOy5J8Ey69BqDQ4aX2t-rnLVezvszelkwTSut87MkHxbCS-B~CByffgokxIIFF9kcJGenm3~dIPmKWb4FENSJuj0kAqdIaiNfyiEgyrfmv-EnIZTMgOx2ifyzjBjt8OjX5UiH0XC92Y8jftUuv8vSFLl7NDhZk4WC9DU~qvfGN2VrUAOArPRQcaWuXu~pYVDxI06i-SqDiIDFcu7McSnkPrdHAuANKhkkSQLfR-JKtQwv1NYv~HTSGCaCKQL5LhQ-xiPBUdZ7DkBqNa4xroKsUhQicBszWh2eAqluq7FuTkw__)

### Criação de Nova Lista

![Criação de Nova Lista](https://private-us-east-1.manuscdn.com/sessionFile/uHeccBIs5xIM74BY3v5KGC/sandbox/ydxQgYTPHWjKhKp79BTWn4-images_1771804473610_na1fn_L2hvbWUvdWJ1bnR1L2FwcF9saXN0YV9kZV9jb21wcmFzL2Fzc2V0cy9zY3JlZW5zaG90cy9wYWdpbmEtMg.png?Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9wcml2YXRlLXVzLWVhc3QtMS5tYW51c2Nkbi5jb20vc2Vzc2lvbkZpbGUvdUhlY2NCSXM1eElNNzRCWTN2NUtHQy9zYW5kYm94L3lkeFFnWVRQSFdqS2hLcDc5QlRXbjQtaW1hZ2VzXzE3NzE4MDQ0NzM2MTBfbmExZm5fTDJodmJXVXZkV0oxYm5SMUwyRndjRjlzYVhOMFlWOWtaVjlqYjIxd2NtRnpMMkZ6YzJWMGN5OXpZM0psWlc1emFHOTBjeTl3WVdkcGJtRXRNZy5wbmciLCJDb25kaXRpb24iOnsiRGF0ZUxlc3NUaGFuIjp7IkFXUzpFcG9jaFRpbWUiOjE3OTg3NjE2MDB9fX1dfQ__&Key-Pair-Id=K2HSFNDJXOU9YS&Signature=IZjtYYN9Q2TuB39BVcmavTX5uUysFlR06NtYTFBYUYG4Yq1daLj4aCXsKrFgHbKhcWGPmv6AiMk6y9MxX30ZB98iK6X7c2Acwt5rrgUr5m5BeNEyk~xMXlEpJEkjkKvPc5LbWPugX~tHFpuLIGt~GVLjtD89gbwjiNDsTNwhhCY~zMhtqjCc5s1NjW4P0ahvgTZIjMelTmvNTsoAwjfkTkOt058jIdJlz0ctANStdffUqrkgiDTYPa7E1zlVUZzDgXzV00aUVxYBBpjbITp261HhqWX~r4M0nw~-nfDLnMWJqLPCaOLgdMcktzbkth04kBQS~UUDOdvi374Q7uMTHA__)

### Tela Inicial (Com Listas)

![Tela Inicial Com Listas](https://private-us-east-1.manuscdn.com/sessionFile/uHeccBIs5xIM74BY3v5KGC/sandbox/ydxQgYTPHWjKhKp79BTWn4-images_1771804473610_na1fn_L2hvbWUvdWJ1bnR1L2FwcF9saXN0YV9kZV9jb21wcmFzL2Fzc2V0cy9zY3JlZW5zaG90cy9wYWdpbmEtMw.png?Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9wcml2YXRlLXVzLWVhc3QtMS5tYW51c2Nkbi5jb20vc2Vzc2lvbkZpbGUvdUhlY2NCSXM1eElNNzRCWTN2NUtHQy9zYW5kYm94L3lkeFFnWVRQSFdqS2hLcDc5QlRXbjQtaW1hZ2VzXzE3NzE4MDQ0NzM2MTBfbmExZm5fTDJodmJXVXZkV0oxYm5SMUwyRndjRjlzYVhOMFlWOWtaVjlqYjIxd2NtRnpMMkZ6YzJWMGN5OXpZM0psWlc1emFHOTBjeTl3WVdkcGJtRXRNdy5wbmciLCJDb25kaXRpb24iOnsiRGF0ZUxlc3NUaGFuIjp7IkFXUzpFcG9jaFRpbWUiOjE3OTg3NjE2MDB9fX1dfQ__&Key-Pair-Id=K2HSFNDJXOU9YS&Signature=O~xdgNUosq~gI6Ukivt3EGDanFPeqN1RadDXCmSi-HI1RCpk45jd5K-gYP9Uw-08yZRaxQu-AATcbDwFthQe7rrip3z-sNiM61iq5G0LkjBZRr9Te7qSdQdmt8DwZEY3LiCdn8-W4mRG0GZivvGuVGhRjxRb2dkfv8Ex-0DNE9QqEQDwBlr83ZdgUabJ~BCd4C-KYlPmBtE4IjaNgwcB2mQk3GdLjMvIRfCKAGecR-ICtvadvaZBFK087mDAMRW-DQhjiHDzvG4LBMPRRng-2QsR7PKEZuQCEWVFB6XyrAOcYezuQI0fyg12T7DmJ2DXC5CqKLYFbN-8NJ4hkpuP6Q__)

### Detalhes da Lista (Vazia)

![Detalhes da Lista Vazia](https://private-us-east-1.manuscdn.com/sessionFile/uHeccBIs5xIM74BY3v5KGC/sandbox/ydxQgYTPHWjKhKp79BTWn4-images_1771804473610_na1fn_L2hvbWUvdWJ1bnR1L2FwcF9saXN0YV9kZV9jb21wcmFzL2Fzc2V0cy9zY3JlZW5zaG90cy9wYWdpbmEtNA.png?Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9wcml2YXRlLXVzLWVhc3QtMS5tYW51c2Nkbi5jb20vc2Vzc2lvbkZpbGUvdUhlY2NCSXM1eElNNzRCWTN2NUtHQy9zYW5kYm94L3lkeFFnWVRQSFdqS2hLcDc5QlRXbjQtaW1hZ2VzXzE3NzE4MDQ0NzM2MTBfbmExZm5fTDJodmJXVXZkV0oxYm5SMUwyRndjRjlzYVhOMFlWOWtaVjlqYjIxd2NtRnpMMkZ6YzJWMGN5OXpZM0psWlc1emFHOTBjeTl3WVdkcGJtRXROQS5wbmciLCJDb25kaXRpb24iOnsiRGF0ZUxlc3NUaGFuIjp7IkFXUzpFcG9jaFRpbWUiOjE3OTg3NjE2MDB9fX1dfQ__&Key-Pair-Id=K2HSFNDJXOU9YS&Signature=f-J9UH3rIzcXiEKDf5OtnZxd97lLCRWeH7UWKCQgMsy2QSoFCC85d3bgSvav~diUlty2Ya~IJaNQcfuE8thTNn~VgWd4AJlEjfTURr8~CxNg8hMvge4VWiEVkZyk7AhiE4GSqR6peROsRaivCYJQiOmV9lJWakK4xNRCw4fDHfeTKina7j-PaagKNoid7jlrMhrBsHjKeF7AZyr7Anx6P5831LLH9FuZP9szxd6iRlri54MbG7usuZhJi57zp5ob2GIKvUrbHKzdl-DZjjgmOx8EgvwC~0Hov7DYv~teuZrcv3pStY07Lf9wUEtfE5DD2LWDngMpGLCkkYJdcaVzGA__)

### Adicionar Item (Modal)

![Adicionar Item Modal](https://private-us-east-1.manuscdn.com/sessionFile/uHeccBIs5xIM74BY3v5KGC/sandbox/ydxQgYTPHWjKhKp79BTWn4-images_1771804473610_na1fn_L2hvbWUvdWJ1bnR1L2FwcF9saXN0YV9kZV9jb21wcmFzL2Fzc2V0cy9zY3JlZW5zaG90cy9wYWdpbmEtNQ.png?Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9wcml2YXRlLXVzLWVhc3QtMS5tYW51c2Nkbi5jb20vc2Vzc2lvbkZpbGUvdUhlY2NCSXM1eElNNzRCWTN2NUtHQy9zYW5kYm94L3lkeFFnWVRQSFdqS2hLcDc5QlRXbjQtaW1hZ2VzXzE3NzE4MDQ0NzM2MTBfbmExZm5fTDJodmJXVXZkV0oxYm5SMUwyRndjRjlzYVhOMFlWOWtaVjlqYjIxd2NtRnpMMkZ6YzJWMGN5OXpZM0psWlc1emFHOTBjeTl3WVdkcGJtRXROUS5wbmciLCJDb25kaXRpb24iOnsiRGF0ZUxlc3NUaGFuIjp7IkFXUzpFcG9jaFRpbWUiOjE3OTg3NjE2MDB9fX1dfQ__&Key-Pair-Id=K2HSFNDJXOU9YS&Signature=IsTUS27D82MDGOHgQitvF6TgggXnLygy0Z4KQH~Cr4C360UDuInRdpaLqTtbwrAH~vaKtH9YlUawph19X1HC4nMvXUCaDbWSjMRx1jts1n5lkLPL~YIBeJ6RqsuQlCEFasV6PqumXnkA4~RUeBLhXdxiJF9Vdl640fcV1ZHAtGKkzY970UXzQ7OOTFFw4qpBh4EhPn6SyA48sjYUmugWs1hbnMtZ7FMHSA6mHUFlQp2NmCq5Ss8Bm~Ma0Gbl-ol8Du6H2AHqJwC7Oa2p8Od3l55e1j7wTpj0CuwagZprnWwL~ZsTVFwgBtNMcBAi~v9E6ZwaqfPELn4L4SHp6awMcw__)

### Adicionar Item (Preenchido)

![Adicionar Item Preenchido](https://private-us-east-1.manuscdn.com/sessionFile/uHeccBIs5xIM74BY3v5KGC/sandbox/ydxQgYTPHWjKhKp79BTWn4-images_1771804473610_na1fn_L2hvbWUvdWJ1bnR1L2FwcF9saXN0YV9kZV9jb21wcmFzL2Fzc2V0cy9zY3JlZW5zaG90cy9wYWdpbmEtNg.png?Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9wcml2YXRlLXVzLWVhc3QtMS5tYW51c2Nkbi5jb20vc2Vzc2lvbkZpbGUvdUhlY2NCSXM1eElNNzRCWTN2NUtHQy9zYW5kYm94L3lkeFFnWVRQSFdqS2hLcDc5QlRXbjQtaW1hZ2VzXzE3NzE4MDQ0NzM2MTBfbmExZm5fTDJodmJXVXZkV0oxYm5SMUwyRndjRjlzYVhOMFlWOWtaVjlqYjIxd2NtRnpMMkZ6YzJWMGN5OXpZM0psWlc1emFHOTBjeTl3WVdkcGJtRXROZy5wbmciLCJDb25kaXRpb24iOnsiRGF0ZUxlc3NUaGFuIjp7IkFXUzpFcG9jaFRpbWUiOjE3OTg3NjE2MDB9fX1dfQ__&Key-Pair-Id=K2HSFNDJXOU9YS&Signature=SnmV65HcYwLGD0F3IgwFZfyLE~JqvTSPuHbIIBsqvRhqDnTv2OkPtJInH7v0pm7uXH5gcOxzVpTgbLxZ2CF2MzfbwGADhu8CAWQUBL2N2aiLX1CaLCfJzyZ7W7b4Dwuusq8nL0zLhNtzGnRITTP176NA2d4BtRBFK~1MC-ZLHIudDRG0apphRu9EBxhgcQ8m3IioZmNITv--Ixw8cDSOa~sWu8E2rzQ8lpHhvcpXeKCe5T-3CT-lN4j6P5EnAwvUWPIOQn79Y9Aa-3RBT-fdzqo5eXejjFww950TtaRVx3ywrjQslUUbIql6UY3MIKcYdjh26G3cj~qTHAfH~R0kBg__)

### Detalhes da Lista (Com Item)

![Detalhes da Lista Com Item](https://private-us-east-1.manuscdn.com/sessionFile/uHeccBIs5xIM74BY3v5KGC/sandbox/ydxQgYTPHWjKhKp79BTWn4-images_1771804473610_na1fn_L2hvbWUvdWJ1bnR1L2FwcF9saXN0YV9kZV9jb21wcmFzL2Fzc2V0cy9zY3JlZW5zaG90cy9wYWdpbmEtNw.png?Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9wcml2YXRlLXVzLWVhc3QtMS5tYW51c2Nkbi5jb20vc2Vzc2lvbkZpbGUvdUhlY2NCSXM1eElNNzRCWTN2NUtHQy9zYW5kYm94L3lkeFFnWVRQSFdqS2hLcDc5QlRXbjQtaW1hZ2VzXzE3NzE4MDQ0NzM2MTBfbmExZm5fTDJodmJXVXZkV0oxYm5SMUwyRndjRjlzYVhOMFlWOWtaVjlqYjIxd2NtRnpMMkZ6YzJWMGN5OXpZM0psWlc1emFHOTBjeTl3WVdkcGJtRXROdy5wbmciLCJDb25kaXRpb24iOnsiRGF0ZUxlc3NUaGFuIjp7IkFXUzpFcG9jaFRpbWUiOjE3OTg3NjE2MDB9fX1dfQ__&Key-Pair-Id=K2HSFNDJXOU9YS&Signature=XrRlhdISierwmQCCPYRw6ZmipZ2rfjrAyRn8ek3L40ry-SWvCZg0zWuhLmIOKPlvlQj5Rhl2q1zSo4m1E74eo0LQobCak5sNcgX-ZnVlSR~KYQPZ6tv8z5SR9l7XuOdbxz9V7FktZLL-Zil6r3AQrBtBTpCwhsFhH2fKB7N7Yzkt8QNBds-NXmS1PmlSHCsQl~5WorZGEIyuBVFRNzs4U3O3c3prKoodDvuoTFHtPN7d8meD54DVurZmj8jG4yjvBBn4ACVDqsJp6GigAmHgIShZO30b5XL2EAtydiz3M~oyBpK08u5-XVJ3Rrwc0PsYkEW6lrCQ8-R7PAFOpfCsjg__)

### Detalhes da Lista (Itens Marcados)

![Detalhes da Lista Itens Marcados](https://private-us-east-1.manuscdn.com/sessionFile/uHeccBIs5xIM74BY3v5KGC/sandbox/ydxQgYTPHWjKhKp79BTWn4-images_1771804473610_na1fn_L2hvbWUvdWJ1bnR1L2FwcF9saXN0YV9kZV9jb21wcmFzL2Fzc2V0cy9zY3JlZW5zaG90cy9wYWdpbmEtOA.png?Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9wcml2YXRlLXVzLWVhc3QtMS5tYW51c2Nkbi5jb20vc2Vzc2lvbkZpbGUvdUhlY2NCSXM1eElNNzRCWTN2NUtHQy9zYW5kYm94L3lkeFFnWVRQSFdqS2hLcDc5QlRXbjQtaW1hZ2VzXzE3NzE4MDQ0NzM2MTBfbmExZm5fTDJodmJXVXZkV0oxYm5SMUwyRndjRjlzYVhOMFlWOWtaVjlqYjIxd2NtRnpMMkZ6YzJWMGN5OXpZM0psWlc1emFHOTBjeTl3WVdkcGJtRXRPQS5wbmciLCJDb25kaXRpb24iOnsiRGF0ZUxlc3NUaGFuIjp7IkFXUzpFcG9jaFRpbWUiOjE3OTg3NjE2MDB9fX1dfQ__&Key-Pair-Id=K2HSFNDJXOU9YS&Signature=Z5PZ7Y2deeyVJMCe14OrXOMFS5O4OCUKIMQfQ3WTh03TsS9ANGvjzT5Td9QvruQn-kG-B7JRnTW96H4K83xU0~UZX~pgD-3ymlJ5izlBf3MW1LsydGpStKc423kZkq8ycUmaZMiRa-8iQmQUuxjcSMavxXptEV-~2Ph~V2At96OfgmvDiIsv51YwFTEWo5dQzxMZ~MTJt6PnK7W8xgAt~eDEba8hAnSYinwqdR0nCJXKqHqhhcr-XMm2WLs11jMKHDQ58HbLODDTg5x8yrtGLiejcIUrC6b7fmzHK4Oo86q7EtoAgjHIfD4tjxBn9R3PxW11LebR-U2eB0b9isplpA__)

### Tela Inicial (Progresso das Listas)

![Tela Inicial Progresso das Listas](https://private-us-east-1.manuscdn.com/sessionFile/uHeccBIs5xIM74BY3v5KGC/sandbox/ydxQgYTPHWjKhKp79BTWn4-images_1771804473610_na1fn_L2hvbWUvdWJ1bnR1L2FwcF9saXN0YV9kZV9jb21wcmFzL2Fzc2V0cy9zY3JlZW5zaG90cy9wYWdpbmEtOQ.png?Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9wcml2YXRlLXVzLWVhc3QtMS5tYW51c2Nkbi5jb20vc2Vzc2lvbkZpbGUvdUhlY2NCSXM1eElNNzRCWTN2NUtHQy9zYW5kYm94L3lkeFFnWVRQSFdqS2hLcDc5QlRXbjQtaW1hZ2VzXzE3NzE4MDQ0NzM2MTBfbmExZm5fTDJodmJXVXZkV0oxYm5SMUwyRndjRjlzYVhOMFlWOWtaVjlqYjIxd2NtRnpMMkZ6YzJWMGN5OXpZM0psWlc1emFHOTBjeTl3WVdkcGJtRXRPUS5wbmciLCJDb25kaXRpb24iOnsiRGF0ZUxlc3NUaGFuIjp7IkFXUzpFcG9jaFRpbWUiOjE3OTg3NjE2MDB9fX1dfQ__&Key-Pair-Id=K2HSFNDJXOU9YS&Signature=PPtKE~QDjmysqB9J693YaQq4oj0wHyYG51m1-PoFsvRHqNUDQjfwo9~dMCSf0ECsgUVlCgpSm0gOLhMyBPUvoeVNOaupCdUWPduCTL0zX1wvR9e1hEPgAaSOA8d1HhqOgarqRNFhbPNB5PpqCP8n9EEe6omx6LijP56-7pmj0RpT3jTG4-JrqprDD6Qz3rqvK8w~BBHXYzgAbTJkpVv3NRtzvXKcNokGywE8Bpp4VMvosdb6jmOyz3RzWLEnOjFLR2RXzccpMHnPtab8pOfoLllwlpijDgTWsFIdtQs61BzmHbYwIkVwN3ckaXBsOh5UBcrXjayDxoSxM7IiI4f1OA__)

## Contribuições

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues e pull requests.

## Licença

Este projeto está licenciado sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes. (Assumindo licença MIT, caso não exista um arquivo LICENSE no repositório, será necessário criar um ou ajustar esta seção.)
