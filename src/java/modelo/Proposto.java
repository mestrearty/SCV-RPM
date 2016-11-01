package modelo;
import dao.PropostoDAO;
import java.sql.SQLException;
import java.util.List;

public class Proposto {

    private int codProposto;
    private int codCalendario;
    private Servidor servidor;
    private Secretaria secretaria;
    private String nome;
    private String setor;
    private int cpf;
    private int dataNascimento;
    private String email;
    private int telefone;
    private int celular;
    private String logradouro;
    private int numero;
    private String complemento;
    private String bairro;
    private String cidade;
    private String uf;
    private int cep;
    private String titulacaomaxima;
    private String banco;
    private int agencia;
    private int conta;
    private String cargo;
    private String senha;
    private String tipoProposto;
    
    // Construtores
    public Proposto(int codProposto, int codCalendario, Servidor servidor, Secretaria secretaria, String nome, String setor, int cpf, int dataNascimento, String email, int telefone, int celular, String logradouro, int numero, String complemento, String bairro, String cidade, String uf, int cep, String titulacaomaxima, String banco, int agencia, int conta, String cargo, String senha, String tipoProposto) {
        this.codProposto = codProposto;
        this.codCalendario = codCalendario;
        this.servidor = servidor;
        this.secretaria = secretaria;
        this.nome = nome;
        this.setor = setor;
        this.cpf = cpf;
        this.dataNascimento = dataNascimento;
        this.email = email;
        this.telefone = telefone;
        this.celular = celular;
        this.logradouro = logradouro;
        this.numero = numero;
        this.complemento = complemento;
        this.bairro = bairro;
        this.cidade = cidade;
        this.uf = uf;
        this.cep = cep;
        this.titulacaomaxima = titulacaomaxima;
        this.banco = banco;
        this.agencia = agencia;
        this.conta = conta;
        this.cargo = cargo;
        this.senha = senha;
        this.tipoProposto = tipoProposto;
    }   
    
    //Gravar No banco
    public void gravar() throws SQLException, ClassNotFoundException {
        PropostoDAO.gravar(this);
    }

    //Lista Obter CUrso
    public static List<Proposto> obterProposto() throws java.lang.ClassNotFoundException {
        return PropostoDAO.obterProposto();
    }
    
    //Obter Proposto
    public static Proposto obterProposto(int codProposto) throws ClassNotFoundException {
        return PropostoDAO.obterProposto(codProposto);
    }
    
    //Alterar
    public void alterar () throws SQLException, ClassNotFoundException{
        PropostoDAO.alterar(this);
    }

    //Set e Gets

    public int getCodProposto() {
        return codProposto;
    }

    public void setCodProposto(int codProposto) {
        this.codProposto = codProposto;
    }

    public int getCodCalendario() {
        return codCalendario;
    }

    public void setCodCalendario(int codCalendario) {
        this.codCalendario = codCalendario;
    }

    public Servidor getServidor() {
        return servidor;
    }

    public void setServidor(Servidor servidor) {
        this.servidor = servidor;
    }

    public Secretaria getSecretaria() {
        return secretaria;
    }

    public void setSecretaria(Secretaria secretaria) {
        this.secretaria = secretaria;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSetor() {
        return setor;
    }

    public void setSetor(String setor) {
        this.setor = setor;
    }

    public int getCpf() {
        return cpf;
    }

    public void setCpf(int cpf) {
        this.cpf = cpf;
    }

    public int getDataNascimento() {
        return dataNascimento;
    }

    public void setDataNascimento(int dataNascimento) {
        this.dataNascimento = dataNascimento;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getTelefone() {
        return telefone;
    }

    public void setTelefone(int telefone) {
        this.telefone = telefone;
    }

    public int getCelular() {
        return celular;
    }

    public void setCelular(int celular) {
        this.celular = celular;
    }

    public String getLogradouro() {
        return logradouro;
    }

    public void setLogradouro(String logradouro) {
        this.logradouro = logradouro;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public String getComplemento() {
        return complemento;
    }

    public void setComplemento(String complemento) {
        this.complemento = complemento;
    }

    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getUf() {
        return uf;
    }

    public void setUf(String uf) {
        this.uf = uf;
    }

    public int getCep() {
        return cep;
    }

    public void setCep(int cep) {
        this.cep = cep;
    }

    public String getTitulacaomaxima() {
        return titulacaomaxima;
    }

    public void setTitulacaomaxima(String titulacaomaxima) {
        this.titulacaomaxima = titulacaomaxima;
    }

    public String getBanco() {
        return banco;
    }

    public void setBanco(String banco) {
        this.banco = banco;
    }

    public int getAgencia() {
        return agencia;
    }

    public void setAgencia(int agencia) {
        this.agencia = agencia;
    }

    public int getConta() {
        return conta;
    }

    public void setConta(int conta) {
        this.conta = conta;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getTipoProposto() {
        return tipoProposto;
    }

    public void setTipoProposto(String tipoProposto) {
        this.tipoProposto = tipoProposto;
    }
    
}
