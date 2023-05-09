package rikkei.crud.service;

import rikkei.crud.model.Customer;

import java.util.List;

public interface ICustomerService {
    List<Customer> findAll();
    void save(Customer customer);
    Customer findByID(int id);
    void  deleteByID(int id);
}
