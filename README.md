# ISAD251HK-2019-Coursework

YouTube video link for the demo: https://youtu.be/U7VwBKVUVL0

Develop environment:
• Microsoft Visual Studio Community 2017 (v15.9.18)
• Microsoft SQL Server Management Studio (v18.4)
• Microsoft SQL Server 2017

Used programming languages:
• C#
• jQuery(Ajax)
• HTML
• W3.CSS

Sample Account:
- Admin
1. admin:admin
2. admin02:admin02

- Customer
1. customer01:pass01
2. customer02:pass02
3. customer03:pass03

The application is minimum viable product of a pub ordering system. The application contains functions of: multiple login(customer/admin), product purchases and order histories for the customers, product create/read/update/delete(CRUD) and full view of user order histories.

All data go through a API controller from the server-side and pass to the client-side, processes by jQuery(Ajax), then display on razor(.cshtml) pages.

The login process contains a function to create a unique session for the current user for identification and security purposes. And the user login passwords are hashed by Scrypt and stored within the database to secure user data.

For the customer ordering processes, after login, username of the customer will be displayed at home page and the top navigation bar for easy identification. The count of shopping cart item(s) will also be displayed, and number will be updated as item quantities changes. Customer can view order details after providing a table id and proceeded checkout.

For the admin management, creation of new product will redirect to new page for entering details of the product and back to the product list. Also, the function of edit, view details and delete product can be carry out on the page of product list for ease of use.

When a user is logged out, the processes will delete the current session and reset the related data for further usages.

All of the page will refresh automatically to update its data after a function is carried out.
