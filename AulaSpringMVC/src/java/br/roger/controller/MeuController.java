package br.roger.controller;

import br.roger.model.Pessoa;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MeuController  {
    
    @RequestMapping("/inicio")
    public String index(HttpServletRequest r){
        String login = (String) r.getSession().getAttribute("login");
        
        if(login != null){
            return "index";
        }
        
        return "pessoas/login";
    }
    
    @RequestMapping("/cadastrarAlguem")
    public String cadastro(){
        return "pessoas/cadastroPessoas";
    }
    
    @RequestMapping("/cadastrarUsuario")
    public String cadastroUsuario(){
        return "pessoas/cadastroUsuarios";
    }
    
    @RequestMapping("/pesquisaExtrato")
    public String pesquisaExtrato(){
        return "contas/extratoConta";
    }
    
    @RequestMapping("/pesquisarContas")
    public String pesquisaConta(){
        return "contas/pesquisarContas";
    }
    
}
