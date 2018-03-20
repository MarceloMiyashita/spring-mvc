package br.roger.controller;

import br.roger.model.Pessoa;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Roger Zanelato
 */
@Controller
public class ControllerPessoa {
    
    @RequestMapping("/persistePessoa")
    public String persistePessoa(HttpServletRequest r, Pessoa p){
        ArrayList a = (ArrayList) r.getSession().getAttribute("pessoas");
        if( a == null ){
            a = new ArrayList();
        }
        
        a.add(p);
        r.getSession().setAttribute("pessoas", a);
        
        return "mensagemCadastro";
    }
}
