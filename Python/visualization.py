import matplotlib.pyplot as plt
import pandas as pd 
def orders_revenue(df):
  plt.figure(figsize=(10, 6))
  plt.bar(df['employee_name'], df['orders'], color='steelblue')
  plt.xlabel('Employee Name')
  plt.ylabel('Number of Orders')
  plt.title('Orders by Employee') 
  plt.xticks(rotation=45)
  plt.tight_layout()
  plt.show()

# 2. Pie chart for category revenue (from query8)
def cat_revenue(df):
  figure, ax =plt.subplots(figsize=(10, 7))
  wedges, texts, autotexts = ax.pie(df['category_revenue'], autopct='%1.1f%%', startangle=140,pctdistance=0.85,wedgeprops=dict(width=0.3))
  
  ax.legend(wedges,df['product_category'],
          title="Categories",
          loc="center left",
          bbox_to_anchor=(1, 0, 0.5, 1))
  plt.title('Revenue Distribution by Product Category')
  plt.tight_layout()
  plt.show()
  

# 3. Horizontal bar chart for department revenue (from query9)
def dep_revenue(df):
  plt.figure(figsize=(10, 6))
  plt.barh(df['department'], df['department_revenue'], color='yellow')
  plt.xlabel('Revenue')
  plt.ylabel('Department')
  plt.title('Revenue by Department')
  plt.tight_layout()
  plt.show()