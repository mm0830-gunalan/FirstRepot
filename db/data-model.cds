namespace my.bookshop;


entity Books {
  key ID : Integer;
  title  : String;
  stock  : Integer;
  virtual price:Integer default 1000;
}


define type User : String(111);
type amount
{
  price:Integer;
  USD_Price:Integer;
}

type email:many
{
  personal:String;
  company:String;
}
entity Student
{
  key ID:Integer;
  Name:String;
  Address:User;
  Amount:amount;
  AllEmail:email;

  
}

// entity ![User-Details] {
//   key ![User-ID] : Integer;
//   ![Email@Address] : String;
//   ![Phone Number] : Integer;
// };
type Gender : String enum { male; female; non_binary;}
// entity Employees {
//   firstName : String;
//   lastName : String;
//   name : String = (firstName || ' ' || lastName) stored;
//   gender:Gender;
// }

entity Department  {
    key id: UUID;
    departmentName: String;
    employees: Association to many Employee on employees.departmentID = $self.id;
}

entity Employee   {
    key id: UUID;
    employeeName: String;
    departmentID: String;
    department: Association to Department on department.id = departmentID;
}


entity Product {
  key ID: UUID;
  productName: String;
  price: Decimal(10, 2);
  category: String;
}
// Projection Definition
// Projection Definition


