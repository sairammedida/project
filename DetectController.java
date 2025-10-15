package com.example.issue.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.example.issue.service.TicketService;
import com.example.issue.entity.Ticket;
import com.example.issue.repo.TicketRepository;
import java.util.List;

@RestController
@RequestMapping("/api")
public class DetectController {
    @Autowired private TicketService ticketService;
    @Autowired private TicketRepository ticketRepo;

    @PostMapping("/detect/simulate")
    public Ticket simulate(@RequestBody Ticket ticket) {
        return ticketService.createAndAssign(ticket);
    }

    @GetMapping("/tickets")
    public List<Ticket> listTickets() {
        return ticketRepo.findAll();
    }
}
