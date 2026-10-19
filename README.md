<<<<<<< HEAD
# Experiment 7: Conversion of HTML into JSP

## 📖 Overview
This project demonstrates the transition from traditional HTML + PrintWriter servlets to a clean Model-View-Controller (MVC) architecture using **JavaServer Pages (JSP)**, **Jakarta Servlets**, and **Expression Language (EL)** on **Apache Tomcat 11**.

---

## 🏗️ Architecture & MVC Flow

1. **Browser** sends a `POST` request with form data (`name`, `email`, `course`, `age`) to `/hello`.
2. **Controller (`HelloServlet.java`)**:
   - Intercepts the request (`doPost`).
   - Extracts parameters via `request.getParameter(...)`.
   - Stores data attributes in request scope using `request.setAttribute(...)`.
   - Dispatches and forwards the request to `result.jsp` using `RequestDispatcher.forward(...)`.
3. **View (`result.jsp`)**:
   - Accesses request-scoped attributes cleanly using JSP Expression Language (`${name}`, `${email}`, `${course}`, `${age}`).
   - Employs JSTL tags (`<c:choose>`, `<c:when>`) for robust presentation rendering.

---

## 📂 Project Structure

```
servlet/
├── pom.xml
├── RUN_SERVLET.bat
├── src/
│   └── main/
│       ├── java/
│       │   └── com/servlet/HelloServlet.java
│       └── webapp/
│           ├── index.html        (Step 1: Original HTML Form)
│           ├── student.jsp       (Step 2: Converted JSP Form)
│           ├── result.jsp        (Result Presentation View with EL)
│           └── WEB-INF/
│               └── web.xml       (Jakarta Web App Deployment Descriptor)
└── target/
    └── servlet.war
```

---

## 🚀 How to Build and Run

### 1. Build WAR using Maven
```bash
mvn clean package
```
This generates `target/servlet.war`.

### 2. Run with Tomcat
- Double-click `RUN_SERVLET.bat` (available both in the project folder and on your Desktop).
- Or copy `target/servlet.war` directly to Tomcat's `webapps/` directory and start Tomcat via `bin\startup.bat`.

### 3. Access in Browser
- **JSP Registration Form**: [http://localhost:8080/servlet/student.jsp](http://localhost:8080/servlet/student.jsp)
- **Original HTML Form**: [http://localhost:8080/servlet/index.html](http://localhost:8080/servlet/index.html)
- Submitting the form posts to `http://localhost:8080/servlet/hello` and displays `result.jsp`.
=======
# html-to-jsp-conversion
>>>>>>> 896bdd8128c82cac67dc1a8622db032db6d15ce2
