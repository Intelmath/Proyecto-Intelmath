/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.TriviaVO;
import Util.ConexionBD;
import Util.InterfaceCRUD;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author agxel
 */
public class TriviaDAO extends ConexionBD implements InterfaceCRUD {

    private Connection conexion = null;  //Se define los objetos basicos para operar en MySQL o elmentos operadores para base de datos
    private Statement puente = null;
    private ResultSet mensajero = null;
    private ResultSet mensajero1 = null;

    private String idTrivia = "";
    private String contenido = "";
    private String crud = "";
    private String resul = "";
    private int id;
    private int rand;
    private String rand1;

    private boolean operaciones = false;

    public TriviaDAO(TriviaVO triVO) {
        super();
        try {
            conexion = this.ObtenerConexion(); //Conexion para metodos genericos
            puente = conexion.createStatement();

            idTrivia = triVO.getIdTrivia();
            contenido = triVO.getContenido();
        } catch (Exception e) {
            System.out.println("¡Error!" + e.toString());
        }

    }

    public TriviaDAO() {

    }

    public ArrayList<TriviaVO> listar() throws SQLException {

        ConexionBD conexionbd = new ConexionBD();
        ArrayList<TriviaVO> trivia = new ArrayList<TriviaVO>();
        try {
         

            puente = conexionbd.ObtenerConexion().createStatement();
            mensajero = puente.executeQuery("select * from tbl_trivia  ORDER BY RAND() LIMIT 1;");

            while(mensajero.next()){
                TriviaVO triVO = new TriviaVO(mensajero.getString(1),mensajero.getString(2));
                trivia.add(triVO);
            }

                
            
        } catch (Exception e) {
            System.out.println("¡Error!" + e.toString());
        }
        return trivia;

    }
    public ArrayList<TriviaVO> tabla() throws SQLException {

        ConexionBD conexionbd = new ConexionBD();
        ArrayList<TriviaVO> trivia = new ArrayList<TriviaVO>();
        try {
         

            puente = conexionbd.ObtenerConexion().createStatement();
            mensajero = puente.executeQuery("select * from tbl_trivia;");

            while(mensajero.next()){
                TriviaVO triVO = new TriviaVO(mensajero.getString(1),mensajero.getString(2));
                trivia.add(triVO);
            }

                
            
        } catch (Exception e) {
            System.out.println("¡Error!" + e.toString());
        }
        return trivia;

    }

    @Override
    public boolean agregarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean actualizarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
