namespace application;
using { Country, managed } from '@sap/cds/common';

entity Users {
  key ID    : UUID;
  name      : String;
  username  : String;
  password  : String;
}

entity Ticket {
  key ID      : UUID;
  centro_ori  : String;
  centro_des  : String;
  empresa     : String;
}
