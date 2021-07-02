package com.bgkTeam.controller;

import java.util.Arrays;
import java.util.Optional;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bgkTeam.dao.EntrepriseDao;
import com.bgkTeam.dao.ParticipantDao;
import com.bgkTeam.dao.SponsorDao;
import com.bgkTeam.dao.feedbackDao;
import com.bgkTeam.model.DAOEntreprise;
import com.bgkTeam.model.DAOParticipant;
import com.bgkTeam.model.DAOSponsor;
import com.bgkTeam.model.EntrepriseDTO;
import com.bgkTeam.model.Feedback;
import com.bgkTeam.model.ParticipantDTO;
import com.bgkTeam.model.SponsorDTO;


@Controller
public class AppController {
	
	@Autowired
	private PasswordEncoder bcryptEncoder;
	
	@Autowired
	private EntrepriseDao daoEntreprise;
	
	@Autowired
	private ParticipantDao daoParticipant;
	
	@Autowired
	private SponsorDao daoSponsor;
	
	@Autowired
	private feedbackDao daoFeedback;
	
	@RequestMapping({ "/" })
	public String home() {
		return "index";
	}
	
	@RequestMapping({ "/Espace" })
	public String conn() {
		return "EspaceUser";
	}
	
	@RequestMapping("/updateEntreprise")
	public ModelAndView update(@CookieValue(value="username") String username,HttpServletRequest request,HttpServletResponse response,EntrepriseDTO entreprise) {

        DAOEntreprise newentreprise=daoEntreprise.findByUsername(username);
        if(entreprise.getUsername()!=null && entreprise.getUsername()!="") {
            newentreprise.setUsername(entreprise.getUsername());
            Cookie newusername=new Cookie("username", entreprise.getUsername());
			response.addCookie(newusername);
        }
        else if(entreprise.getPassword()!=null && entreprise.getPassword()!="") {
    		newentreprise.setPassword(bcryptEncoder.encode(entreprise.getPassword()));
        }
        else if(entreprise.getRaison()!=null && entreprise.getRaison()!="") {
    		newentreprise.setRaison(entreprise.getRaison());
        }
        else if(entreprise.getLogo()!=null && entreprise.getLogo()!="") {
    		newentreprise.setLogo(entreprise.getLogo());
        }
        else if(entreprise.getLink()!=null && entreprise.getLink()!="") {
    		newentreprise.setLink(entreprise.getLink());
        }
        else if(entreprise.getPhoto()!=null && entreprise.getPhoto()!="") {
    		newentreprise.setPhoto(entreprise.getPhoto());
        }else if(newentreprise==null){
    		return new ModelAndView("redirect:/");
        }
        Cookie success=new Cookie("update","success");
        success.setMaxAge(1);
        response.addCookie(success);
        daoEntreprise.save(newentreprise);
		return new ModelAndView("redirect:/");
	}
	
	@RequestMapping("/updateSponsor")
	public ModelAndView update(@CookieValue(value="username") String username,HttpServletRequest request,HttpServletResponse response,SponsorDTO sponsor) {
		System.out.print(username);
        DAOSponsor newsponsor=daoSponsor.findByUsername(username);
        if(sponsor.getUsername()!=null && sponsor.getUsername()!="") {
            newsponsor.setUsername(sponsor.getUsername());
			Cookie newusername=new Cookie("username", sponsor.getUsername());
			response.addCookie(newusername);
        }
        else if(sponsor.getPassword()!=null && sponsor.getPassword()!="") {
    		newsponsor.setPassword(bcryptEncoder.encode(sponsor.getPassword()));
        }
        else if(sponsor.getRaison()!=null && sponsor.getRaison()!="") {
    		newsponsor.setRaison(sponsor.getRaison());
        }
        else if(sponsor.getLogo()!=null && sponsor.getLogo()!="") {
    		newsponsor.setLogo(sponsor.getLogo());
        }
        else if(sponsor.getLink()!=null && sponsor.getLink()!="") {
    		newsponsor.setLink(sponsor.getLink());
        }
        else if(sponsor.getPhoto()!=null && sponsor.getPhoto()!="") {
    		newsponsor.setPhoto(sponsor.getPhoto());
        }else if(newsponsor==null){
    		return new ModelAndView("redirect:/");
        }
        Cookie success=new Cookie("update","success");
        success.setMaxAge(1);
        response.addCookie(success);
        daoSponsor.save(newsponsor);
		return new ModelAndView("redirect:/");
	}
	
	@RequestMapping("/updateParticipant")
	public ModelAndView update(@CookieValue(value="username") String username,HttpServletRequest request,HttpServletResponse response,ParticipantDTO participant) {
		System.out.print(username);
        DAOParticipant newparticipant=daoParticipant.findByUsername(username);
        if(participant.getUsername()!=null && participant.getUsername()!="") {
            newparticipant.setUsername(participant.getUsername());
			Cookie newusername=new Cookie("username", participant.getUsername());
			response.addCookie(newusername);
        }
        else if(participant.getPassword()!=null && participant.getPassword()!="") {
    		newparticipant.setPassword(bcryptEncoder.encode(participant.getPassword()));
        }
        else if(participant.getNom()!=null && participant.getNom()!="") {
    		newparticipant.setNom(participant.getNom());
        }
        else if(participant.getCv()!=null && participant.getCv()!="") {
    		newparticipant.setCv(participant.getCv());
        }
        else if(participant.getEmail()!=null && participant.getEmail()!="") {
    		newparticipant.setEmail(participant.getEmail());
        }
        else if(participant.getTel()!=null && participant.getTel()!="") {
    		newparticipant.setTel(participant.getTel());
        }else if(newparticipant==null){
    		return new ModelAndView("redirect:/");
        }
        Cookie success=new Cookie("update","success");
        success.setMaxAge(1);
        response.addCookie(success);
        daoParticipant.save(newparticipant);
		return new ModelAndView("redirect:/");
	}
	
	@PostMapping("/feedback")
	public ModelAndView feedback(HttpServletResponse response,HttpServletRequest request, Feedback feedback) {
		String key="username";
        Optional<String> checkusername=Arrays.stream(request.getCookies())
        .filter(c -> key.equals(c.getName()))
        .map(Cookie::getValue)
        .findAny();
        if (checkusername.isPresent()) {
      	  	String username=checkusername.get();
			feedback.setSender_username(username);
			daoFeedback.save(feedback);
        }else {
			feedback.setSender_username("Unknown");
			daoFeedback.save(feedback);
        }
        Cookie mustsignin=new Cookie("sign","sign");
        mustsignin.setMaxAge(10);
        response.addCookie(mustsignin);
		return new ModelAndView("redirect:/#msg");
	}
	@RequestMapping("/Admin")
	public String admin() {
		return "Admin";
	}
}