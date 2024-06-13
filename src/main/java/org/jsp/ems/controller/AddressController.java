package org.jsp.ems.controller;

import javax.servlet.http.HttpServletRequest;

import org.jsp.ems.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AddressController {

	@Autowired
	AddressService addressService;

	@GetMapping(value = "/addaddress")
	public ModelAndView addAddressPage(@RequestParam int id, ModelAndView mv) {
		return addressService.addAddressPage(id, mv);
	}

	@PostMapping(value = "/saveaddress")
	public ModelAndView saveAddress(@RequestParam int id, ModelAndView mv, HttpServletRequest req) {
		return addressService.saveAddress(id, req, mv);
	}

}
