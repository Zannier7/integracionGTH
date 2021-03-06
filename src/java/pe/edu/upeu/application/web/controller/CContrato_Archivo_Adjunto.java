/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.application.web.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import pe.edu.upeu.application.dao.ContratoDAO;
import pe.edu.upeu.application.dao_imp.InterfaceContratoDAO;
import pe.edu.upeu.application.factory.FactoryConnectionDB;
import pe.edu.upeu.application.model.Renombrar;

/**
 *
 * @author ALFA 3
 */
public class CContrato_Archivo_Adjunto extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String ubicacion = "";
        InterfaceContratoDAO c = new ContratoDAO();
        try {
            ubicacion = FactoryConnectionDB.url + "Contratos_Adjuntos/";
            DiskFileItemFactory f = new DiskFileItemFactory();

            if (f.getSizeThreshold() <= 500000) {
                //out.print("adassd");
            } else {
                // out.print("putopoooo");
            }
            f.setRepository(new File(ubicacion));

            ServletFileUpload upload = new ServletFileUpload(f);

            List<FileItem> p = upload.parseRequest(request);
            String idc = null;
            String nombre_archivo = null;
            String no_original = null;
            long tamaño = 0;
            //  long sizeInBytes = 0;
            Iterator it = p.iterator();
            while (it.hasNext()) {

                FileItem item = (FileItem) it.next();

                if (item.isFormField()) {

                    String nombre = item.getFieldName();
                    String valor = item.getString();
                    if (nombre.equals("idc") & idc == null) {
                        idc = valor;
                    }

                } else {
                    tamaño = item.getSize();
                    if (tamaño <= 500000) {
                        String fieldName = item.getFieldName();
                        Calendar fecha = new GregorianCalendar();
                        int hora = fecha.get(Calendar.HOUR_OF_DAY);
                        int min = fecha.get(Calendar.MINUTE);
                        int sec = fecha.get(Calendar.SECOND);
                        if (fieldName.equals("archivo")) {
                            nombre_archivo = String.valueOf(hora) + String.valueOf(min) + String.valueOf(sec) + "_" + idc + "_" + item.getName().toUpperCase();
                            no_original = item.getName();
                            Thread thread = new Thread(new Renombrar(item, ubicacion, nombre_archivo));
                            thread.start();
                        } else {
                            no_original = no_original;
                            nombre_archivo = nombre_archivo;
                        }

                    }
                }

            }
            if (tamaño <= 500000) {
                if (nombre_archivo != null) {
                    c.INSERT_CONTRATO_ADJUNTO(null, idc, nombre_archivo, no_original, null, null, null, null, null, null);
                }
                out.println(no_original);
                out.println(nombre_archivo);
                out.println(tamaño);
            } else {
                out.print("No se permite subir archivos mayores a 0.5MB");
                out.print(upload.getFileSizeMax());
            }

            //sesion.setAttribute("ListaridTrabajador", tr.ListaridTrabajador(idtr));
            //Thread.sleep(2000);
            // response.sendRedirect("Vista/Trabajador/Detalle_Trabajador.jsp?idtr=" + idtr);
            // out.println("Archivo subido correctamente");
        } catch (Exception e) {
            out.println(e.getMessage());
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
