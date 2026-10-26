# Requirements and Conceptual Model
Marilyn Saeteros, Alvie Ahmed, and Saeed Johnson 

End User:
The end user is Lana, the owner of the dog-walking business 

Project Requirements:
Lana database needs to include information that she can create, update, delete, and read. Some information that her database will have to organize is customer, dog information, payment methods and dogs walking schedule. 

Categories of Data

1. Customer Data
   - Customer ID
   - First Name
   - Last Name 
   - Phone Number
   - Email 
     
2. Dog Data
   - Dog ID
   - Dog Name
   - Dog Breed
   - Dog Age
   - Special Instructions

3. Schedule Walks 
   - Walk ID 
   - Dog ID
   - Date 
   - Duration

4. Payment Method
   - Payment Id
   - Customer ID
   - Payement Method
   - Payment Date
   - Total bill 
   - Payment Status 
   
# Logical Model 

a) Main entities:
   - Customer
   - Dog
   - Walks
   - Payment

b) Attributes:
   - Customer: Customer_ID, First_Name, Last_Name, Phone_Number, Email
   - Dog: Dog_ID, Customer_ID, Dog_Name, Breed, Age, Instructions
   - Walks: Walk_ID, Dog_ID, Walk_Date, Time_Start, Time_End
   - Payment: Payment_ID, Walk_ID, Payment_Method, Payment_Date, Total_Bill, Payment_Status

c) Entity Relationships:
   - Primary Keys: Customer_ID, Dog_ID, Walk_ID, Payment_ID
   - Foreign Keys: Customer_ID, Dog_ID, Walk_ID

Entity Connection:
   - Dog Entity: Customer_ID -> Customer Entity
   - Walk Entity: Dog_ID -> Dog Entity
   - Payment Entity: Walk_ID -> Walk Entity

   With Customer being the main entity, each other entity will be pulling information from one another.
   Dog entity will be using Customer_ID to pull out which customer the dog belongs to from the Customer entity.
   Walk entity will be using Dog_ID to pull out information on what dog is being taken on the walk from the Dog entity. 
   Payment entity will be using Walk_ID to pull out information on which walk is being paid for.

d) Many-to-many relationships:
   - None in the current model. Each walk is for one dog (Walks.Dog_ID), and
     each payment is for one walk (Payment.Walk_ID).
   - If Lana ever walks several dogs together, Walks and Dogs would become
     many-to-many, and we would need a resolving table such as Walk_Dogs
     with Walk_ID and Dog_ID.

e) Done
