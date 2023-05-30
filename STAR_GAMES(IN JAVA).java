public class usuario {

    public String nome;
    public String email;

    public static void(String []args){
        String htmlcode = "<html>" +
"<head>" +
  "<title>Login de Usuário</title>" +
"</head>" +
"<body>" + 
  "<h2>Login de Usuário</h2>" + 
  "<form action="#" method="POST">" +
    "<label for="nome">Nome:</label>" +
    "<input type="text" id="nome" name="nome" required><br><br>" +

    "<label for="email">Email:</label>" +
    "<input type="email" id="email" name="email" required><br><br>" +

    "<input type="submit" value="Enviar">" +
  "</form>" +
"</body>" +
"</html>";

    }

system.out.println(htmlcode)
    }

    public class pedidos {

        public String nome_produto;
        public int quantidade;

        public static void(String []args)
            String htmlcode = "<html>" +
"<head>" +
  "<title>Pedido</title>" +
"</head>" +
"<body>" + 
  "<h2>Compra</h2>" + 
  "<form action="#" method="POST">" +
    "<label for="nome_produto">Nome do Produto:</label>" +
    "<input type="text" id="nome_produto" name="nome do produto" required><br><br>" +

    "<label for="quantidade">Quantidade:</label>" +
    "<input type="number" id="quantidade" name="quantidade" required><br><br>" +

    "<input type="submit" value="Enviar">" +
  "</form>" +
"</body>" +
"</html>";

    }

    public class produto {

        public String nome_produto; 
        public double preco;

        public static void(String []args)
            String htmlcode = "<html>" +
"<head>" +
  "<title>Produto</title>" +
"</head>" +
"<body>" + 
  "<h2>Compra</h2>" + 
  "<form action="#" method="POST">" +
    "<label for="nome_produto">Nome do Produto:</label>" +
    "<input type="text" id="nome_produto" name="nome do produto" required><br><br>" +

    "<label for="preco">Preço:</label>" +
    "<input type="number" id="preco" name="preco" required><br><br>" +

    "<input type="submit" value="Enviar">" +
  "</form>" +
"</body>" +
"</html>";
    }

public class produtoPedido {

        public String nome_jogo;
        public int pedidos; 
        public int quantidade;

        public static void(String []args)
            String htmlcode = "<html>" +
"<head>" +
  "<title>Consulta do Pedido</title>" +
"</head>" +
"<body>" + 
  "<h2>Compra</h2>" + 
  "<form action="#" method="POST">" +
    "<label for="nome_jogo">Nome do Produto:</label>" +
    "<input type="text" id="nome_jogo" name="nome_jogo" required><br><br>" +

    "<label for="pedidos">Número de Pedidos:</label>" +
    "<input type="number" id="pedidos" name="pedidos" required><br><br>" +

    "<label for="quantidade">Quantidade:</label>" +
    "<input type="number" id="quantidade" name="quantidade" required><br><br>" +

    "<input type="submit" value="Enviar">" +
  "</form>" +
"</body>" +
"</html>";
    }

    public class comentario {

        public String nome;
        public String comentario;

        public static void(String []args)
            String htmlcode = "<html>" +
"<head>" +
  "<title>Avaliação</title>" +
"</head>" +
"<body>" + 
  "<h2>Comentários</h2>" + 
  "<form action="#" method="POST">" +
    "<label for="nome">Nome:</label>" +
    "<input type="text" id="nome" name="nome" required><br><br>" +

    "<label for="comentario">Nome do Produto:</label>" +
    "<input type="text" id="comentario" name="comentario" required><br><br>" +

    "<input type="submit" value="Enviar">" +
  "</form>" +
"</body>" +
"</html>";

    }
