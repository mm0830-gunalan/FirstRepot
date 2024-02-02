using my.bookshop as my from '../db/data-model';

service CatalogService {
     entity Books as projection on my.Books;
    @readonly entity Student as projection on my.Student;
     @readonly entity Employee as projection on my.Employee;
          @readonly entity Department as projection on my.Department;
             
}

