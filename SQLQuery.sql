CREATE TABLE Clients (
   client_id INT PRIMARY KEY,
   nom VARCHAR(255) NOT NULL,
   email VARCHAR(245) NOT NULL,
   adresses VARCHAR(241) NOT NULL
);


CREATE TABLE Produits (
 produit_id INT PRIMARY KEY,
 nom VARCHAR(255) NOT NULL,
 prix DECIMAL(38, 1) NOT NULL CHECK (prix>0)
);


CREATE TABLE Commandes (
      commande_id INT PRIMARY KEY,
	  client_id INT NOT NULL,
	  produit_id INT NOT NULL,
	  quantite INT NOT NULL,
	  datecommande DATE NOT NULL,
	  FOREIGN KEY (client_id) REFERENCES Clients(client_id),
	  FOREIGN KEY (produit_id) REFERENCES Produits(produit_id)
);
