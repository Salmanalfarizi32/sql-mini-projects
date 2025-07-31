1. Tampilkan semua produk yang pernah dibeli, tanpa duplikat:

SELECT DISTINCT products.name, products.price
FROM products
JOIN transaction_items ON products.id = transaction_items.product_id;

2. Total penjualan per hari:

SELECT 
  transactions.date,
  SUM(products.price * transaction_items.quantity) AS total_penjualan
FROM transactions
JOIN transaction_items ON transaction_items.transaction_id = transactions.id
JOIN products ON transaction_items.product_id = products.id
GROUP BY transactions.date
ORDER BY transactions.date;

3. Produk Terlaris:

SELECT 
  products.name,
  SUM(transaction_items.quantity) AS total_terjual
FROM transaction_items
JOIN products ON transaction_items.product_id = products.id
GROUP BY products.name
ORDER BY total_terjual DESC;

4. Rata-rata Pembelian per Transaksi:

SELECT AVG(jumlah_item) AS rata_rata_per_transaksi
FROM (
  SELECT transaction_id, SUM(quantity) AS jumlah_item
  FROM transaction_items
  GROUP BY transaction_id
) AS subquery;

5. Total quantity kopi terjual 25–27 Juli 2025:

SELECT SUM(transaction_items.quantity) AS total_quantity
FROM transactions
JOIN transaction_items ON transaction_items.transaction_id = transactions.id
WHERE transactions.date BETWEEN '2025-07-25' AND '2025-07-27';