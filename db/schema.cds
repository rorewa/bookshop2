
namespace my.adressbook;
using { Country, managed } from '@sap/cds/common';

entity Books {
  key ID : Integer;
  title  : localized String;
  author : Association to Authors;
  stock  : Integer;
}

entity Authors {
  key ID : Integer;
  name   : String;
  books  : Association to many Books on books.author = $self;
}



entity Inhabitants : managed {
  key ID  : UUID;
  firstName: String;
  lastName : String;
  country : Country;
  amount  : Integer;
}
