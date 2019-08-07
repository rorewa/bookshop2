
namespace my.adressbook;
/*using { Country, managed } from '@sap/cds/common';*/


entity Inhabitants /*: managed*/ {
  key ID  : String;
  firstName: String;
  lastName : String;
  telephone : Integer;
  country : String;
  email  : String;
  place : String;
  postcode : Integer;
  street : String;
  housenumber : Integer;
}
