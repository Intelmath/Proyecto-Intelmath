/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloVO;

import java.io.InputStream;

/**
 *
 * @author APRENDIZ
 */
public class bibliotecaVO {
    
    String id_biblioteca;
    String titulo;
    String descripcion;
    String tipo;
    String id_usuario;
    String id_tipo;
    byte[] archivopdf;
    
    
    public bibliotecaVO(String id_bilioteca, String titulo, String descripcion, String tipo, String id_usuario, String id_tipo,byte[] archivopdf){
        this.id_biblioteca = id_bilioteca;
        this.titulo = titulo;
        this.descripcion = descripcion;
        this.tipo = tipo;
        this.id_usuario = id_usuario;
        this.id_tipo = id_tipo;
        this.archivopdf = archivopdf;
    }
    
    public bibliotecaVO(){
    
}

    public byte[] getArchivopdf() {
        return archivopdf;
    }

    public void setArchivopdf(byte[] archivopdf) {
        this.archivopdf = archivopdf;
    }
    
  
    public String getId_biblioteca() {
        return id_biblioteca;
    }

    public void setId_biblioteca(String id_biblioteca) {
        this.id_biblioteca = id_biblioteca;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(String id_usuario) {
        this.id_usuario = id_usuario;
    }

    public String getId_tipo() {
        return id_tipo;
    }

    public void setId_tipo(String id_tipo) {
        this.id_tipo = id_tipo;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }


    
    
}
