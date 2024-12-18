INSERT INTO CUSTOMER VALUES (1, 'Admin', 'Admin', date '2000-1-1', null, 'admin@gmail.com', 'admin', 'admin');
INSERT INTO CUSTOMER VALUES (2, 'John', 'Doe', date '2000-1-1', null, 'crandom1@gmail.com', 'username1', 'password1');
INSERT INTO CUSTOMER VALUES (3, 'Jane', 'Smith', date '2000-1-2', '1234567890', 'crandom2@gmail.com', 'username2', 'password2');
INSERT INTO CUSTOMER VALUES (4, 'Mike', 'Johnson', date '2000-2-1', '9876543210', 'crandom3@gmail.com', 'username3', 'password3');

INSERT INTO CHATAGENT VALUES (1, 'Will', 'Smith', null, 'arandom1@gmail.com');
INSERT INTO CHATAGENT VALUES (2, 'Lebron', 'James', 'Marketing', 'arandom2@gmail.com');
INSERT INTO CHATAGENT VALUES (3, 'Bill', 'Gates', 'IT', 'arandom3@gmail.com');

INSERT INTO PRODUCT VALUES (1, 'Tractor', 'Equipment', 1030.99);
INSERT INTO PRODUCT VALUES (2, 'Plow', 'Equipment', 500);
INSERT INTO PRODUCT VALUES (3, 'Wheels', 'Accessories', 202);

INSERT INTO FAQ VALUES (1, 'What types of tractors do you offer?', 'We offer a wide range of tractors, from compact models for small farms to heavy-duty tractors for large-scale operations.');
INSERT INTO FAQ VALUES (2, 'Do you provide maintenance services?', 'Yes, we offer professional maintenance services for all types of tractors, ensuring peak performance year-round.');
INSERT INTO FAQ VALUES (3, 'How can I purchase a tractor?', 'You can purchase directly from our store or through our website. We also offer financing options to help make your purchase more manageable.');
INSERT INTO FAQ VALUES (4, 'Do you offer warranties on tractors?', 'Yes, we provide warranties on most tractors. Coverage details depend on the model and purchase terms.');

INSERT INTO LIVECHAT VALUES (1, 1, 1, timestamp '2024-8-1 10:00:00.00', timestamp '2024-8-1 11:00:00.00', 'test transcript');
INSERT INTO LIVECHAT VALUES (2, 1, 2, timestamp '2024-8-2 11:00:00.00', timestamp '2024-8-2 11:30:00.00', 'test transcript 2');
INSERT INTO LIVECHAT VALUES (3, 2, 3, timestamp '2024-8-3 9:00:00.00', timestamp '2024-8-3 10:36:00.00', 'test transcript 3');

INSERT INTO FORUM VALUES (1, 2, 'How to Maintain Your Tractor', 'Maintaining your tractor is crucial for longevity. Here are some tips on how to ensure your machine runs smoothly...', DATE('2024-01-15'), null);
INSERT INTO FORUM VALUES (2, 3, 'Best Tractor for Small Farms', 'Looking for the perfect tractor for small-scale farming? Let’s discuss the options that offer the best value...', DATE('2024-01-10'), null);
INSERT INTO FORUM VALUES (3, 4, 'How to Troubleshoot Common Tractor Issues', 'Encountered common issues with your tractor? Here’s a guide to troubleshooting frequent problems...', DATE('2023-12-20'), null);

INSERT INTO CHATBOT VALUES (1, 1, 'Test Query 1', 'Test Response 1', CURRENT_TIMESTAMP);
INSERT INTO CHATBOT VALUES (2, 1, 'Test Query 2', 'Test Response 2', CURRENT_TIMESTAMP);
INSERT INTO CHATBOT VALUES (3, 2, 'Test Query 3', 'Test Response 3', CURRENT_TIMESTAMP);