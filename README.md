<h1 align="center"> PACMAN </h1>
<h2 align="center">  Teste técnico Escribo 02 </h2>


## 📁 Acesso

**Para visualizar o projeto, [clique aqui](https://github.com/wyzzec/teste_tecnico_escribo_02).**

## 🛠️ Abrir e rodar o projeto

**Baixe uma IDE compátivel com o Flutter, por exemplo, o Intellij. Após isso, baixe a versão 3.0.5 do SDK Flutter e configure sua IDE. Depois, é só ir até "file/open...", abrir o projeto e rodar na plataforma de sua escolha. Mais informações sobre como configurar o AVD manager para android, [clique aqui](https://www.treinaweb.com.br/blog/configurando-ambiente-de-desenvolvimento-flutter).**

sistemas que serão implementados: 
- música dinâmica 
- ajuste de compatibilidade de telas/web

erros conhecidos:

- 1: Fantasma não muda de sprite quando o app é buildado na versão mobile. (Na build web está normal)
- 2: Fantasmas as vezes ficam presos no sistema de colisão.
- 3: Joystick está duplicando a velocidade do player. (atualizações do bonfire em breve para corrigir isso)
- 4: O contador de pontos para de funcionar as vezes quando se usa o hot reload no build web.
- 5: Os tiles que formam o "teto" do mapa não estão gerando a informação de colisão
- 6: O sistema de loop do jogo quando o pacman morre não funciona se der hot reload na versão web
- 7: Versões anteriores ao commit "onCollision entre fantasmas ajustado, Points movido da classe player" devem adicionar o atributo double points a classe player pertencente ao package bonfite.
- Caso tenha alguma sugestão, por favor, fique a vontade =D (Este é o meu primeiro contato com uma engine de jogos)