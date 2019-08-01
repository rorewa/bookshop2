
using my.adressbook from '../db/schema';

service CatalogService {
  entity Inhabitants @insertonly as projection on adressbook.Inhabitants;

}