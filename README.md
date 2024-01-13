# Bridge Bidding Translator

Web tool designed for bridge card game enthusiasts, focusing on the Polish Club bidding language.

---
### App Description

The Bridge Bidding Translator is a comprehensive tool designed for bridge card game enthusiasts, focusing on the Polish Club bidding language.
This project offers a two-way translation system:

- First, it translates bidding sequences from the Polish Club language to natural language, providing detailed information about each player's hand and the bidding strategy.
- Second, it enables users to input their hand of cards and initiates an automated bidding process, generating strategic bids based on the established conventions within the Polish Club language.

---
### Technological Stack

- **Frontend:** React + Vite
- **Backend:** Python
- **Database:** PostgreSQL

---
### Features

- **Bidding Translation:** Seamlessly translates bidding sequences between Polish Club language and natural language for improved communication and understanding among bridge players.
- **Card Input and Automated Bidding:** Allows users to input their hand of cards and employs a sophisticated bidding engine to perform the bidding process, providing strategic bids based on the user's cards and the established bidding conventions.
- **User-Friendly Interface:** Provides an intuitive and user-friendly interface for easy input of bidding sequences and card information, ensuring a smooth experience for players of all skill levels.

---
### Usage

To run this application you will need to have installed several prerequisites on your local machine. Project was made and tested with **Python v3.12.1**, **PostgreSQL v16.1** and **node.js v20.10.0** so it is recommended to use at least these versions of the described software. 

Once the software is installed you should go into the project directory and start from importing database with translations. To do so run the following command in the database subdirectory of the project:
- **...\project_dir\database> psql -U postgres -f .\init.sql**

This command will import the translations to the newly created database and therefore will make it possible for the server to process the bidding sequence. After this step you will need to run the server and client by using correcponding commands:
- For server initialization: **...\project_dir\backend> py .\main.py**
- For client initialization: **...\project_dir\frontend> npm i | npm run dev**

Once these steps are done you can open your web browser and head to the **http://localhost:8000/** address.

---
