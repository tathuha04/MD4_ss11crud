package rikkei.crud.service;

import rikkei.crud.model.Customer;

import java.util.ArrayList;
import java.util.List;

public class CustomerService implements ICustomerService {
    public static List<Customer> customerList = new ArrayList<>();

    static {
        customerList.add(new Customer(1, "Hà", "ha@gmail.com", "Phú Thọ"));
        customerList.add(new Customer(2, "Hà2", "ha2@gmail.com", "Phú Thọ2"));
        customerList.add(new Customer(3, "Hà3", "ha3@gmail.com", "Phú Thọ3"));
        customerList.add(new Customer(4, "Hà4", "ha4@gmail.com", "Phú Thọ4"));
    }

    @Override
    public List<Customer> findAll() {
        return customerList;
    }

    @Override
    public void save(Customer customer) {
        if (findByID(customer.getId()) != null) {
            customerList.set(customerList.indexOf(findByID(customer.getId())), customer);
        } else {
            customerList.add(customer);
        }
    }

    @Override
    public Customer findByID(int id) {
        for (int i = 0; i < customerList.size(); i++) {
            if (customerList.get(i).getId() == id) {
                return customerList.get(i);
            }
        }
        return null;
    }

    @Override
    public void deleteByID(int id) {

    }
}
