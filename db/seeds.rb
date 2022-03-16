# Reset db
Customer.delete_all
AdminUser.delete_all

# Reset primary keys
Customer.connection.execute("UPDATE SQLITE_SEQUENCE SET SEQ=0 WHERE NAME= 'customers'")
AdminUser.connection.execute("UPDATE SQLITE_SEQUENCE SET SEQ=0 WHERE NAME= 'admin_users'")

# Create admin user
if Rails.env.development?
  AdminUser.create!(email: "admin@example.com", password: "password",
                    password_confirmation: "password")
end
