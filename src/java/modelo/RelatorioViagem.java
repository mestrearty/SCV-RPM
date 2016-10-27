package modelo;

import dao.RelatorioViagemDAO;
import java.sql.SQLException;

public class RelatorioViagem {
    private String relatorio;
    private int codEscreverRelatorio;

    public RelatorioViagem(String relatorio, int codEscreverRelatorio) {
        this.relatorio = relatorio;
        this.codEscreverRelatorio = codEscreverRelatorio;
    }
    
    public String getRelatorio() {
        return relatorio;
    }

    public void setRelatorio(String relatorio) {
        this.relatorio = relatorio;
    }

    public int getCodEscreverRelatorio() {
        return codEscreverRelatorio;
    }

    public void setCodEscreverRelatorio(int codEscreverRelatorio) {
        this.codEscreverRelatorio = codEscreverRelatorio;
    }
    
    public void gravar()throws SQLException, ClassNotFoundException  {
        RelatorioViagemDAO.gravar(this);
    }

    public int getCodRelatorioViagem() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
