import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class Main {
    // JDBC URL, username, and password do seu banco de dados
    static final String JDBC_URL = "jdbc:mysql://localhost:3306/seu_banco_de_dados";
    static final String USERNAME = "seu_usuario";
    static final String PASSWORD = "sua_senha";

    public static void main(String[] args) {
        try (Connection conn = DriverManager.getConnection(JDBC_URL, USERNAME, PASSWORD)) {
            if (conn != null) {
                System.out.println("Conexão estabelecida com sucesso!");

                // Exemplo de criação da tabela produtos usando DDL
                createTable(conn);

                // Exemplo de inserção de dados na tabela produtos usando DML
                insertData(conn);

                // Você pode adicionar mais exemplos de DML aqui, como atualização, exclusão, etc.
            }
        } catch (SQLException e) {
            System.err.println("Erro ao conectar ou interagir com o banco de dados: " + e.getMessage());
        }
    }

    private static void createTable(Connection conn) throws SQLException {
        try (Statement stmt = conn.createStatement()) {
            // Definição da tabela produtos usando DDL (Data Definition Language)
            String sql = "CREATE TABLE IF NOT EXISTS produtos (" +
                    "id INT AUTO_INCREMENT PRIMARY KEY," +
                    "nome VARCHAR(100) NOT NULL," +
                    "preco DOUBLE NOT NULL" +
                    ")";

            stmt.executeUpdate(sql);
            System.out.println("Tabela produtos criada com sucesso!");
        }
    }

    private static void insertData(Connection conn) throws SQLException {
        try (Statement stmt = conn.createStatement()) {
            // Exemplo de inserção de dados na tabela produtos usando DML (Data Manipulation Language)
            String sql = "INSERT INTO produtos (nome, preco) VALUES " +
                    "('Camisa', 29.99), " +
                    "('Calça', 49.99), " +
                    "('Sapato', 79.99)";

            int rowsAffected = stmt.executeUpdate(sql);
            System.out.println(rowsAffected + " linhas inseridas na tabela produtos.");
        }
    }
}
