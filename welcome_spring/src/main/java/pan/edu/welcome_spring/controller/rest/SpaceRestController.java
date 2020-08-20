package pan.edu.welcome_spring.controller.rest;

/*
 * @author Andrii Skryp
 *
 * @date 18.08.2020
 *
 * @version 1.0
 */

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import pan.edu.welcome_spring.model.Client;
import pan.edu.welcome_spring.model.Space;
import pan.edu.welcome_spring.service.space.impls.SpaceServiceImpl;

import java.util.List;
@RequestMapping("/api/space")
@RestController
public class SpaceRestController {

    @Autowired
    SpaceServiceImpl spaceService;

    @RequestMapping("")
    String getIndex(){
        return "<h1>Index Web Controller</h1>";
    }

    @GetMapping("/hello")
    String getHello(){
        return "<h1>Hello form Space Controller</h1>";
    }

    @RequestMapping(value = "get/list", method = RequestMethod.GET)
    List<Space> getSpacesList(){
        return spaceService.getAll();
    }

    @RequestMapping(value = "/get/{id}", method = RequestMethod.GET)
    Space getSpace(@PathVariable("id") String id){
        return spaceService.get(id);
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    Space deleteSpaces(@PathVariable("id") String id){
        return spaceService.delete(id);
    }

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    Space createClients(@RequestBody Space space){
        return spaceService.create(space);
    }



}
