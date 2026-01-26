# 🍽️ Restaurant POS System

A complete Point of Sale system for restaurants with menu management, billing, WhatsApp invoice sharing, and daily reports.

## Features

- **📊 Dashboard** - Main navigation hub
- **🍕 Menu Management** - Add, edit, delete menu items with images
- **🧾 Billing System** - Create bills with item selection and quantity management
- **📱 WhatsApp Integration** - Send invoices directly via WhatsApp
- **📈 Daily Reports** - View sales reports by date
- **🖨️ Print Invoices** - Professional invoice printing

## Quick Start

### 1. Backend Setup
```bash
cd restaurant-backend
npm install
npm start
```
Backend runs on: http://localhost:10000

### 2. Frontend Setup
```bash
cd restaurant-frontend
npm install
npm run dev
```
Frontend runs on: http://localhost:5173

### 3. Database Setup
The app uses PostgreSQL. Set your `DATABASE_URL` in `restaurant-backend/.env`:
```
DATABASE_URL=your_postgresql_connection_string
```

## Usage

1. **Start with Dashboard** - Navigate between different modules
2. **Add Menu Items** - Go to Menu section to add food items with prices and images
3. **Create Bills** - Use Billing section to select items, set quantities, and generate bills
4. **Send Invoices** - Bills automatically generate WhatsApp links to send to customers
5. **View Reports** - Check daily sales in the Reports section

## Project Structure

```
restaurant-pos/
├── restaurant-backend/     # Node.js + Express + PostgreSQL
│   ├── server.mjs         # Main server file
│   ├── package.json       # Backend dependencies
│   └── .env              # Environment variables
└── restaurant-frontend/    # React + Vite
    ├── src/
    │   ├── pages/         # All page components
    │   ├── api.js         # API configuration
    │   └── App.jsx        # Main app with routing
    ├── package.json       # Frontend dependencies
    └── .env              # Frontend environment variables

```

## API Endpoints

- `GET /api/menu` - Get all menu items
- `POST /api/menu` - Add new menu item
- `DELETE /api/menu/:id` - Delete menu item
- `POST /api/bill` - Create new bill
- `GET /api/bill/:id` - Get invoice by ID
- `GET /api/report?date=YYYY-MM-DD` - Get daily sales report

## Technologies Used

- **Frontend**: React, React Router, Axios, Vite
- **Backend**: Node.js, Express.js, PostgreSQL
- **Styling**: CSS-in-JS with responsive design
- **Integration**: WhatsApp Web API for invoice sharing

## Development

The application is designed to be mobile-friendly and works well on both desktop and mobile devices. All components are styled with modern gradients and responsive layouts.