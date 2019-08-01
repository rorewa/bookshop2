
namespace my.adressbook;
using { Country, managed } from '@sap/cds/common';

entity Inhabitants : managed {
  key ID  : UUID;
  firstName: String;
  lastName : String;
  telephone : Integer;
  country : Country;
  mail  : String;
}
