
# 🎬 Film Recommendation & Watchlist Web App

A full-stack web application that allows users to search movies, view detailed information, maintain personal watchlists, track viewing statistics, and rate films.  
Built with a **React frontend** and a **Python Flask backend** connected to a relational database.

---

## 📌 **Overview**

This project implements a film discovery and watchlist application where users can:

- Browse and search movies  
- View film details (actors, directors, genres, ratings)  
- Register/login  
- Maintain a **personal watchlist**  
- Track their watch statistics  
- Rate films  
- Explore charts based on community data  

The system integrates a complete backend with data access models, SQL queries, and API endpoints, along with a modern React UI.

---

## 🚀 **Features**

### 🎥 Film Browsing & Discovery
- Real-time film search  
- Display of top-rated and popular movies  
- Detailed film modal with:
  - Cast  
  - Directors  
  - Release year  
  - Genres  
  - Ratings  
  - Description  

### ⭐ User Accounts
- Signup / Login  
- JWT-based session handling  
- Profile page with personalized data  

### 📚 Personal Watchlist
Users can:
- Add/remove films  
- View saved films  
- Mark movies as watched  

### 📊 User Statistics
- Automatically generated analytics based on watch history  
- Modal showing:
  - Number of films watched  
  - Average ratings  
  - Genre distribution  
  - Actor/director preferences  

### ⭐ Film Rating System
- Users can submit and update ratings for each film  
- Backend computes global averages  

### 🎨 Responsive UI (React)
- Component-based architecture  
- Modals, interactive lists, and dynamic rendering  
- Custom CSS styling  

---

## 🏛 **System Architecture**

```
Frontend (React)
│
├── Pages (Home, Profile, Signup, Login, Details, Stats)
├── Components (Navbar, MovieCard, Modal, Lists)
├── Styles (CSS Modules)
└── APIRequests.js (HTTP requests)
        ↓
Backend (Flask)
│
├── Routes (watchlist, films, ratings, actors, directors)
├── DAL (data access layer)
│    ├── model_film.py
│    ├── model_actor.py
│    ├── model_directs.py
│    ├── model_watchlist.py
│    └── model_rating.py
└── app_globals (DB connection + cursor)
        ↓
Database (SQL)
```

---

## 📂 **Project Structure**

```
Comp306-GroupProject-main/
│
├── my-app/                # React Frontend
│   ├── src/
│   │   ├── Pages/
│   │   ├── Components/
│   │   ├── Styles/
│   │   ├── App.js
│   │   └── APIRequests.js
│   └── package.json
│
└── Backend/               # Python Backend
    ├── web_app.py        # Flask entry point
    ├── app_globals.py    # DB connection
    ├── dal/
    │   ├── model_film.py
    │   ├── model_actor.py
    │   ├── model_directs.py
    │   ├── model_watchlist.py
    │   ├── model_rating.py
    │   └── ...
    └── requirements.txt
```

---

## 🧠 **Backend (Flask) — Key Endpoints**

| Endpoint | Description |
|---------|-------------|
| `/movies` | List/search movies |
| `/movies/<id>` | Get film details |
| `/actors/<id>` | Actor info |
| `/directors/<id>` | Director info |
| `/watchlist/<user>` | Get watchlist |
| `/watchlist/add` | Add film |
| `/watchlist/remove` | Remove film |
| `/ratings/submit` | Submit a rating |
| `/stats/<user>` | User statistics |

---

## 🎨 **Frontend (React) — Main Pages**

### 1. **HomePage**
- Displays top films  
- Search functionality  
- Film detail modal  

### 2. **Signup / Login**
- User authentication  
- Form validation  

### 3. **Profile Page**
- Shows user statistics  
- Watchlist  
- Rating history  
- Opens statistics modal  

### 4. **FilmDetailModal**
- Shows complete film metadata  
- Add/remove from watchlist  
- Submit rating  

---

## ⚙️ **How to Run the Project**

### 🟦 1. Start the Backend
```bash
cd Backend
pip install -r requirements.txt
python web_app.py
```

Backend will run on:
```
http://127.0.0.1:5000
```

---

### 🟧 2. Start the Frontend
```bash
cd my-app
npm install
npm start
```

Frontend will run on:
```
http://localhost:3000
```

---

## 🛢 **Database**

Your backend uses:
- SQL queries  
- Python DB cursor (via `app_globals`)  
- DAL classes for each entity  

Tables include:
- `Film`
- `Actor`
- `Director`
- `Directs`
- `Watchlist`
- `Ratings`  
and others.

---

## 🧪 **Testing**

Manually test through:
- Web UI  
- Browser developer tools  
- Backend console logs  

---

## 🚀 **Future Improvements**

- Add recommendation system (content-based or collaborative filtering)  
- Add actor/director pages with filmography  
- Improve login security using JWT refresh tokens  
- Add pagination to film lists  
- Upload user profile images  
- Deploy using Docker + cloud database  

---
