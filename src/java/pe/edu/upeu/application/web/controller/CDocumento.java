/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.application.web.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.servlet.ServletRequestContext;
import pe.edu.upeu.application.dao.DocumentoDAO;
import pe.edu.upeu.application.dao_imp.InterfaceDocumentoDAO;
import pe.edu.upeu.application.factory.FactoryConnectionDB;
import pe.edu.upeu.application.model.Renombrar;

/**
 *
 * @author Jair
 */
public class CDocumento extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    InterfaceDocumentoDAO d = new DocumentoDAO();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, FileUploadException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String dgp = request.getParameter("iddgp");
        String idtr = request.getParameter("idtr");
        String opc = request.getParameter("opc");
        HttpSession sesion = request.getSession(true);
        String user = (String) sesion.getAttribute("IDUSER");
        try {
            if (opc != null) {
                if (opc.equals("Eliminar")) {
                    String id_doc_adj = request.getParameter("id_doc");
                    d.Desactivar_doc(id_doc_adj);
                    int s = d.List_Req_nacionalidad(idtr);
                    int num_ad = d.List_Adventista(idtr);

                    sesion.setAttribute("List_Hijos", d.List_Hijos(idtr));
                    sesion.setAttribute("List_doc_req_pla", d.List_doc_req_pla(dgp, idtr));
                    sesion.setAttribute("List_Conyugue", d.List_Conyugue(idtr));
                    response.sendRedirect("Vista/Dgp/Documento/Reg_Documento.jsp?n_nac=" + s + "&num_ad=" + num_ad + "&idtr=" + idtr + "&iddgp=" + dgp + "&pro=pr_dgp&a=e");

                }
                if (opc.equals("Ver_Documento")) {
                    sesion.setAttribute("List_doc_req_pla", d.List_doc_req_pla(dgp, idtr));
                    int i = d.List_Req_nacionalidad(idtr);
                    int num_ad = d.List_Adventista(idtr);
                    sesion.setAttribute("List_Hijos", d.List_Hijos(idtr));
                    sesion.setAttribute("List_Conyugue", d.List_Conyugue(idtr));

                    response.sendRedirect("Vista/Dgp/Documento/Reg_Documento.jsp?n_nac=" + i + "&num_ad=" + num_ad + "&idtr=" + idtr);
                }
                if (opc.equals("Reg_Pro_Dgp")) {
                    sesion.setAttribute("List_doc_req_pla", d.List_doc_req_pla(dgp, idtr));
                    int i = d.List_Req_nacionalidad(idtr);
                    int num_ad = d.List_Adventista(idtr);
                    sesion.setAttribute("List_Hijos", d.List_Hijos(idtr));
                    sesion.setAttribute("List_Conyugue", d.List_Conyugue(idtr));

                    response.sendRedirect("Vista/Dgp/Documento/Reg_Documento.jsp?n_nac=" + i + "&num_ad=" + num_ad + "&pro=pr_dgp");
                }
                if (("Listar_doc").equals(opc)) {

                    int s = d.List_Req_nacionalidad(idtr);
                    int num_ad = d.List_Adventista(idtr);
                    int can_doc = d.count_documentos(dgp);

                    sesion.setAttribute("List_Hijos", d.List_Hijos(idtr));
                    sesion.setAttribute("List_doc_req_pla", d.List_doc_req_pla(dgp, idtr));
                    sesion.setAttribute("List_Conyugue", d.List_Conyugue(idtr));
                    if (can_doc > 0) {
                        response.sendRedirect("Vista/Dgp/Documento/Reg_Documento.jsp?n_nac=" + s + "&num_ad=" + num_ad + "&P2=TRUE&idtr=" + idtr + "&iddgp=" + dgp);
                    } else {
                        response.sendRedirect("Vista/Dgp/Documento/Reg_Documento.jsp?n_nac=" + s + "&num_ad=" + num_ad + "&idtr=" + idtr + "&iddgp=" + dgp + "&pro=pr_dgp");
                    }
                }
            } else {
              //  String ubicacion = getServletConfig().getServletContext().getRealPath("/") + "Vista/Dgp/Documento/Archivo/";
                String ubicacion = FactoryConnectionDB.url+"Archivo/";
                DiskFileItemFactory f = new DiskFileItemFactory();
                f.setSizeThreshold(1024);
                f.setRepository(new File(ubicacion));
                ServletFileUpload upload = new ServletFileUpload(f);
                ServletRequestContext src = new ServletRequestContext(request);
       
                List<FileItem> p = upload.parseRequest(src);
                int num_filas = 0;
                String iddgp = null;
                String pr = null;
                String id_ctr = null;
                String id_h = null;
                List<String> list_files = new ArrayList<String>();
                Iterator itera = p.iterator();
                while (itera.hasNext()) {
                    FileItem i_n_f = (FileItem) itera.next();

                    if (i_n_f.isFormField()) {

                        String nombre = i_n_f.getFieldName();
                        String valor = i_n_f.getString();

                        num_filas = (nombre.equals("num")) ? Integer.parseInt(valor) : num_filas;
                        if (nombre.equals("iddgp") & iddgp == null) {
                            iddgp = valor;
                        }
                        if (nombre.equals("idtr") & idtr == null) {
                            idtr = valor;
                        }
                        if (nombre.equals("P2") & pr == null) {
                            pr = valor;
                        }

                        if (nombre.equals("idctr") & id_ctr == null) {
                            id_ctr = valor;
                        }

                    }

                }

                String iddoc = null;
                String nombre_archivo = null;
                String desc = null;
                String estado = null;
                String archivo = null;
                int num = 0;
                String no_original = null;

                String validar_nombre = "";
                Random rnd = new Random();
                for (int i = 0; i < num_filas; i++) {
                    Iterator it = p.iterator();
                    while (it.hasNext()) {

                        FileItem item = (FileItem) it.next();

                        if (item.isFormField()) {
                            String nombre = item.getFieldName();
                            String valor = item.getString();
                            iddoc = (nombre.equals("iddoc" + i)) ? valor : iddoc;
                            desc = (nombre.equals("lob_description" + i)) ? valor : desc;
                            estado = (nombre.equals("estado" + i)) ? valor : estado;
                            id_h = (nombre.equals("idh" + i)) ? valor : id_h;
                        } else {
                            String fieldName = item.getFieldName();

                            num++;
                            Calendar fecha = new GregorianCalendar();
                            int hora = fecha.get(Calendar.HOUR_OF_DAY);
                            int min = fecha.get(Calendar.MINUTE);
                            int sec = fecha.get(Calendar.SECOND);

                            if (fieldName.equals("archivos" + i) & item.getName() != null) {
                                if (!item.getName().equals("")) {

                                // out.println(item.getFieldName() + " : " + item.getName());
                                    // nombre_archivo = String.valueOf(hora) + String.valueOf(min) + String.valueOf(sec) + "_" + num + iddgp + "_" + item.getName().toUpperCase();
                                    nombre_archivo = String.valueOf(hora) + String.valueOf(min) + String.valueOf(sec) + "_" + num + iddgp;
                                    no_original = item.getName();
                                    Thread thread = new Thread(new Renombrar(item, ubicacion, nombre_archivo));
                                    thread.start();
                                    archivo = no_original + ":" + nombre_archivo;
                                    list_files.add(archivo);
                                }

                            } else {
                                no_original = no_original;
                                nombre_archivo = nombre_archivo;
                            }
                        }
                    }
                    Thread.sleep(100);
                    if (nombre_archivo != null) {
                        if (!nombre_archivo.equals("")) {
                            estado = ((estado == null) ? "0" : estado);
                                 out.println(iddoc);
                            String id = d.INSERT_DOCUMENTO_ADJUNTO(null, iddoc, "1", user, null, null, null, null, desc, null, estado, id_ctr);
                    
                            d.INSERT_DGP_DOC_ADJ(null, iddgp, id, null, idtr, id_h);
                            for (int t = 0; t < list_files.size(); t++) {
                                String g[] = list_files.get(t).split(":");
                                d.INSERT_ARCHIVO_DOCUMENTO(null, id, g[1], g[0], null);
                            }
                            list_files.clear();
                        }
                    }
                    no_original = null;
                    iddoc = null;
                    nombre_archivo = null;
                    desc = null;
                    estado = null;
                    no_original = null;
                }

                sesion.setAttribute("List_doc_req_pla", d.List_doc_req_pla(iddgp, idtr));
                int s = d.List_Req_nacionalidad(idtr);
                int num_ad = d.List_Adventista(idtr);
                sesion.setAttribute("List_Hijos", d.List_Hijos(idtr));
                sesion.setAttribute("List_Conyugue", d.List_Conyugue(idtr));

                if (pr != null) {
                    if (pr.equals("enter")) {
                        response.sendRedirect("Vista/Dgp/Documento/Reg_Documento.jsp?n_nac=" + s + "&num_ad=" + num_ad + "&P2=TRUE&idtr=" + idtr + "&iddgp=" + iddgp + "&a=t");
                    }
                } else {
                    response.sendRedirect("Vista/Dgp/Documento/Reg_Documento.jsp?n_nac=" + s + "&num_ad=" + num_ad + "&idtr=" + idtr + "&iddgp=" + iddgp + "&a=t");
                }
            }
        } catch (Exception e) {
            out.println("Error : " + e.getMessage());
        } finally {
            out.close();
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(CDocumento.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(CDocumento.class.getName()).log(Level.SEVERE, null, ex);
        }
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
