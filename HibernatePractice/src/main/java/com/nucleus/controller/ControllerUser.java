package com.nucleus.controller;

import com.nucleus.entity.PremiumDTO;
import com.nucleus.entity.PremiumEntity;
import com.nucleus.entity.PremiumEntityDTO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.client.RestTemplate;

import java.util.HashMap;
import java.util.Map;

@Controller
public class ControllerUser {
    @RequestMapping(path = "/loginU")
    public String login() {
        return "loginU";
    }

    @RequestMapping(path = "/dashboard")
    public String dashboard(@RequestParam("username") String username, @RequestParam("password") String password, Model model) {
        model.addAttribute("user", username);
        return "dashboardU";
    }

    @RequestMapping(path = "/predictPremium")
    public String predictPremiumDB(Model model) {
        PremiumEntityDTO premiumEntityDTO = new PremiumEntityDTO();
        model.addAttribute("PremiumEntity", premiumEntityDTO);
        return "predictPremiumDB";
    }

    @PostMapping("/addAndPredict")
    public String addAndPredict(@ModelAttribute("PremiumEntity") PremiumEntityDTO premiumEntity, Model model) {
            // Create HttpHeaders
            HttpHeaders headers = new HttpHeaders();
            headers.setContentType(MediaType.APPLICATION_JSON);

            // Create HttpEntity with request body and headers
            HttpEntity<PremiumEntityDTO> requestEntity = new HttpEntity<>(premiumEntity, headers);
        System.out.println(requestEntity);
            // Create RestTemplate instance
            RestTemplate restTemplate = new RestTemplate();

            // Define URL of Flask API
            String apiUrl = "http://127.0.0.1:8086/predict";

            // Send POST request to Flask API
            ResponseEntity<Map> responseEntity = restTemplate.postForEntity(apiUrl, requestEntity,Map.class);
            // Get the response body
        System.out.println(responseEntity.getBody());
            // Add the predicted premium price to the model
            model.addAttribute("predictedPremiumPrice", responseEntity.getBody().get("PremiumPrice"));

            // Return the view name to be rendered
            return "Prediction";
        }
    }

