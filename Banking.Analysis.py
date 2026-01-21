import pandas as pd
df = pd.read_csv("banking_data.csv")

df.columns = df.columns.str.strip()
df['Transaction_Date'] = pd.to_datetime(df['Transaction_Date'])

df['Amount'] = pd.to_numeric(df['Amount'], errors='coerce')
df['Balance'] = pd.to_numeric(df['Balance'], errors='coerce')
df['Credit_Score'] = pd.to_numeric(df['Credit_Score'], errors='coerce')

def credit_category(score):
    if score > 700:
        return "Excellent"
    elif score < 500:
        return "Poor"
    else:
        return "Fair"

df['CS_Category'] = df['Credit_Score'].apply(credit_category)


total_customers = df['Customer_id'].nunique()
total_transaction_amount = df['Amount'].sum()
total_balance = df['Balance'].sum()
active_accounts = df[df['Account_Status'] == 'Active']['Customer_id'].nunique()

kpi_df = pd.DataFrame({
    'Total_Customers': [total_customers],
    'Total_Transaction_Amount': [total_transaction_amount],
    'Total_Balance': [total_balance],
    'Active_Accounts': [active_accounts]
})


credit_debit_df = df.groupby('Transaction_Type')['Amount'].sum().reset_index()
city_customers_df = (
    df.groupby('City')['Customer_id']
    .nunique()
    .reset_index(name='Customer_Count')
)
account_status_df = (
    df.groupby('Account_Status')['Customer_id']
    .nunique()
    .reset_index(name='Customer_Count')
)
credit_category_df = (
    df.groupby('CS_Category')['Customer_id']
    .nunique()
    .reset_index(name='Customer_Count')
)
with pd.ExcelWriter("banking_dashboard_output.xlsx", engine="xlsxwriter") as writer:
    df.to_excel(writer, sheet_name="Raw_Data", index=False)
    kpi_df.to_excel(writer, sheet_name="KPIs", index=False)
    credit_debit_df.to_excel(writer, sheet_name="Credit_vs_Debit", index=False)
    city_customers_df.to_excel(writer, sheet_name="City_Wise_Customers", index=False)
    account_status_df.to_excel(writer, sheet_name="Account_Status", index=False)
    credit_category_df.to_excel(writer, sheet_name="Credit_Category", index=False)

print("✅ Data processed successfully!")
print("📊 Output file created: banking_dashboard_output.xlsx")
