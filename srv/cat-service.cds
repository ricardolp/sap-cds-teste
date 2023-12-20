using application from '../db/data-model';

service ApplicationService {
  entity Users as projection on application.Users;
  entity Ticket as projection on application.Ticket;
  action Login(username: String, password: String) returns Users;
}

