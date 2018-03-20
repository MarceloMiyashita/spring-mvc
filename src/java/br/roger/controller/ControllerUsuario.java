package br.roger.controller;

import br.roger.model.Usuario;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class ControllerUsuario {
    
    @RequestMapping("/efetuarLogin")
    public String logar(HttpServletRequest r, Usuario u){
        
        if ( r.getSession().getAttribute("usuarios") != null ){
            ArrayList<Usuario> a = (ArrayList) r.getSession().getAttribute("usuarios");
            
            if(!a.isEmpty()){
                for(Usuario user : a){
                    if( user.getLogin().equals(u.getLogin()) && user.getSenha().equals(u.getSenha()) ) {
                        r.getSession().setAttribute("login", u.getLogin());
                        return "index";
                    }
                }
            }
        }
        
        return "pessoas/login";
    }
    
    @RequestMapping("/persisteUsuario")
    public String persisteUsuario(HttpServletRequest r, Usuario u){
        ArrayList<Usuario> a = (ArrayList) r.getSession().getAttribute("usuarios");
        if( a == null){
            a = new ArrayList();
        }
        
        a.add(u);
        r.getSession().setAttribute("usuarios", a);
        System.out.println(r.getSession().getAttribute("usuarios"));
        return "mensagemUsuario";
    }
    
    @RequestMapping("/logout")
    public String logout(HttpServletRequest r){
        r.getSession().invalidate();
        
        return "pessoas/login";
    }
    
}
