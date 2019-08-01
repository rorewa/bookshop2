
using my.adressbook from '../db/schema';

service CatalogService {
  entity Authors @readonly as projection on adressbook.Authors;
  entity Inhabitants @insertonly as projection on adressbook.Inhabitants;

}