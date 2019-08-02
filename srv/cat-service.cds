
using my.adressbook from '../db/schema';

service CatalogService {
  entity Inhabitants @readonly as projection on adressbook.Inhabitants;

}