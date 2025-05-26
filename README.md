# 🚚 Supply Chain Optimization & Inventory Forecasting

## 🎯 Project Overview

**Objective:**  
To optimize supply chain processes and improve inventory forecasting using data-driven insights.

**Business Problem:**  
Managing stock levels, fulfilling orders on time, and predicting demand are challenging, often leading to lost sales or overstock situations.

**Solution Summary:**  
An analytical solution was developed using **MySQL**, **Excel**, and **Power BI** to analyze sales, orders, and inventory. The project delivers actionable insights to enhance decision-making and operational efficiency.

---

## 🛠 Tools & Technologies

- **Database:** MySQL  
- **Visualization:** Power BI  
- **Language:** SQL  
- **Support Tools:** Microsoft Excel  

---

## 📊 Dataset Description

**Data Sources:**  
CSV files imported from Excel into MySQL.

**Main Tables:**
- `SCO_Sales`: Sales records  
- `SCO_Orders`: Order details  
- `SCO_Inventory`: Inventory levels & reorder points  
- `SCO_Products`: Product metadata (category, price)

**Key Fields:**
- `Sale_ID`, `Date`, `Product_ID`, `Units_Sold`, `Unit_Price`, `Region`  
- `Order_ID`, `Order_Quantity`, `Order_Date`, `Supplier`, `Order_Status`  
- `Inventory_ID`, `Stock_Quantity`, `Reorder_Level`, `Safety_Stock`, `Warehouse_Location`

---

## 🧮 SQL Analysis Summary

- ✅ Total Orders Placed  
- 📅 Orders by Month  
- 🏆 Most Ordered Product  
- 📦 Orders by Status  
- 🧾 Supplier Performance  
- ❌ Cancelled Orders Summary  
- ⏱ Average Delivery Time  
- 📈 Daily Order Trends  
- 🔁 Reordered Products  
- 🕒 Recent Pending Orders  

---

## 📈 Power BI Dashboard #1 – Sales & Orders

### KPI Cards:
1. Sum of Units Sold  
2. Total Revenue  
3. Total Units Sold  
4. Delivered Orders  
5. Cancelled Orders  
6. In Transit Orders  
7. Pending Orders  

### Visuals:
- **Sales Trend Over Time** – Line chart (Year, Month, Day)  
- **Sales by Region** – Bar/Column chart  
- **Order Status Distribution** – Donut/Stacked Column chart  

---

## 📦 Power BI Dashboard #2 – Inventory Overview

### KPI Cards:
1. Total Inventory Stock  
2. Products Below Reorder  
3. Pending Orders  
4. Total Suppliers  

### Visuals:
- **Inventory Summary** – Clustered bar (Product ID vs Reorder Point, Safety Stock & Current Stock)  
- **Order Status Breakdown** – Stacked bar (Product ID vs Order Status)  
- **Daily Order Status Trends** – Line chart  

---

## 🖼 Screenshots

![Dashboard 1 Sales   Orders](https://github.com/user-attachments/assets/789433c0-ebd4-4b26-9d96-89e062894cf1)


![Dashboard 2 Inventory Forecasting   Optimization](https://github.com/user-attachments/assets/2f05712a-b571-4cd3-9fd2-f2c1730b6322)


![EXCEL Charts](https://github.com/user-attachments/assets/ed4b4661-85a9-48c9-b82e-2dc6da093559)


![EXCEL WorkBook](https://github.com/user-attachments/assets/02311f2a-37c0-46f1-bd82-a4e76f595886)


![Pivot Tables](https://github.com/user-attachments/assets/41bae1f3-038c-43c4-a396-6b24a1cd1b22)


![MySQL Dump](https://github.com/user-attachments/assets/f0c4d9f4-c8c8-44b4-ba88-87b5b994a78d)


![SQL Analysis Report](https://github.com/user-attachments/assets/edbea008-079a-4081-902f-1a432b108c17)


![Project Documentation](https://github.com/user-attachments/assets/7c4c808b-d960-4d7b-a9c6-d49e9b8eb1cc)


## 💡 Insights & Recommendations

- Maintain **safety stock** for top 5 selling products  
- Automate reorders for frequently low-stock items  
- Reallocate inventory using **regional sales trends**  
- Analyze delayed deliveries by **supplier and region**

---

## ✅ Conclusion

Using SQL, Excel, and Power BI, this project enabled data-driven decisions to enhance supply chain visibility, improve inventory forecasting, and streamline operations, thereby reducing risks and improving business outcomes.

---

## 👤 Created By

**Name:** Gaurav Gaikwad
**Email** gauravgaikwad1609@gmail.com


---



