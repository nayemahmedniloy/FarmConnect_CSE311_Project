## FarmConnect: A Government-Mediated Agricultural Trading System

FarmConnect is a database-driven platform designed to facilitate direct transactions between farmers and
the government, eliminate third-party interference, and ensure fair pricing for agricultural products. The
government acts as an intermediary, purchasing goods from farmers and selling them to vendors with a
fixed 10% tax, which serves as government revenue. To prevent monopolization, vendors are assessed and
classified, with purchase limits set based on their profile. The system promotes fairness, transparency, and
economic sustainability for farmers while maintaining market balance.

![Image](https://github.com/user-attachments/assets/56346773-a304-4e60-a75e-219c5142db3a)
![Image](https://github.com/user-attachments/assets/ad909d7f-b53d-43e0-bc42-ff5c538a3a25)
![Image](https://github.com/user-attachments/assets/59000def-f6f6-45a9-bdb6-cbaeedc7145f)

## Features

Our database system,FarmConnect, is a robust platform designed to ensure fair and efficient agricultural
trade in Bangladesh. It empowers farmers by enabling them to directly sell their products to the government,
eliminating third-party interference and maximizing their profits. The system also allows governmentapproved vendors to place product orders under monitored conditions, maintaining fair distribution and
preventing market monopolization.
The farmer table holds details such as farmer_id, name, contact, location, registration_date,
and approved_by (linked to government). Farmers list products in the product table, which includes attributes like product_id, farmer_id, product_name, category, quantity_available, price_per_unit,
and listing_date.
Vendors are registered in the vendor table with fields like vendor_id, name, contact, location, category,
max_purchase_limit, and approved_by. Orders are managed through the order table, which tracks
order_id, vendor_id, product_id, quantity_ordered, total_price, tax_amount, order_date, pickup_location,
and order_status.
The government table stores gov_id, official_name, department, role, and contact. Financial activities are recorded in the transaction_log table, which includes transaction_id, order_id, vendor_id,
tax_collected, and transaction_date.
By integrating all stakeholders into a centralized and monitored system, FarmConnect ensures fair pricing,
equitable vendor access, and transparent tax management, fostering a sustainable agricultural economy.

## Database Screenshots

![Image](https://github.com/user-attachments/assets/d0602cec-e2af-4041-8c4c-452060a86d80)
![Image](https://github.com/user-attachments/assets/b3a7e769-5363-4160-853e-53b2709c462f)
![Image](https://github.com/user-attachments/assets/b28d97f3-cda9-4186-af9e-78b8aa7f8382)
![Image](https://github.com/user-attachments/assets/55bd69be-8da3-42ef-baf2-4e8e5cc451cb)
![Image](https://github.com/user-attachments/assets/2d20127c-709d-4ce0-b9a5-a329c2c8ad8e)
![Image](https://github.com/user-attachments/assets/5d15723f-fa3a-4550-8e58-81b11a885ba4)


## License

[MIT](https://choosealicense.com/licenses/mit/)

![Image](https://github.com/user-attachments/assets/0f265c87-443f-4f67-a770-761bcabf707e)
