# rap-training-tracker
Developer Training Tracker
# 📘 RAP Training Tracker

A self-service SAP S/4HANA application for tracking developer training, skill progress, and certification readiness. Built using the ABAP RESTful Application Programming Model (RAP) with CDS Views, Behavior Definitions, and OData v4.

---

## 🎯 Purpose

To provide developers and teams with an internal tool to log completed courses, track acquired skills, and visualize progress toward certification goals. Designed for extensibility and CPI integration.

---

## 👥 User Roles

| Role            | Description                                      |
|-----------------|--------------------------------------------------|
| Developer       | Tracks personal progress                         |
| Admin           | Views/edits all users’ records                   |
| External System | Posts updates via OData (e.g., from CPI)         |

---

## 📚 Functional Scope

### Core Features
- Log training courses and skill coverage
- Record progress (% complete, status, date)
- Submit feedback and ratings
- Enable draft saving of progress entries
- Provide OData v4 APIs for UI5 or CPI integrations
- Auto-generate UI with Fiori Elements annotations (optional)

---

## 📐 Technical Architecture

| Layer        | Technology                    |
|--------------|-------------------------------|
| Backend      | SAP S/4HANA                    |
| RAP Layer    | ABAP RESTful Application Model |
| Data Access  | CDS Views + Annotations        |
| API          | OData v4 (Service Binding)     |
| UI (optional)| SAP Fiori Elements             |

---

## 🧱 Data Model

### Tables
- `ZCOURSE`: course_id, title, level, instructor
- `ZSKILL`: skill_id, name
- `ZPROGRESS`: progress_id, user_id, course_id, %, status
- `ZCOURSE_SKILL`: course_id + skill_id (join)
- `ZFEEDBACK`: feedback_id, user_id, course_id, comments

---

### CDS Views
- `ZC_COURSE`, `ZI_COURSE`: Courses
- `ZC_SKILL`: Skills
- `ZC_PROGRESS`: Progress (draft-enabled)
- `ZC_FEEDBACK`: Comments & ratings

---

### Behavior Definitions
- `ZC_COURSE`, `ZC_PROGRESS` (BDEF)
- `ZBP_COURSE`, `ZBP_PROGRESS` (BDEF_IMPL)

---

## 🌐 OData Endpoints

| URL                            | Method | Use                            |
|--------------------------------|--------|---------------------------------|
| `/ZC_COURSE`                   | GET    | List courses                   |
| `/ZC_PROGRESS`                 | POST   | Submit progress                |
| `/ZC_FEEDBACK`                 | POST   | Submit course feedback         |
| `/ZC_PROGRESS?$expand=Course`  | GET    | View progress with course info |

---

## 🔒 Authorization & Access

- Developers: See and update only their own progress records
- Admins: Full access to all user training data
- Authorization via `authorization master (instance)` in RAP

---

## 🚀 Roadmap by Phase

| Phase | Focus                                           |
|-------|-------------------------------------------------|
| 1     | RAP CRUD, CDS views, OData exposure             |
| 2     | Draft handling, computed fields, skill linking  |
| 3     | Metadata validation, UI annotations             |
| 4     | CPI integration, GitHub documentation, abapGit  |

---

## 🧪 Integration & Extensibility

- Compatible with SAP Integration Suite (CPI) for real-time updates
- Can be connected to SAP Enable Now or external LMS
- OData supports Fiori or non-SAP frontends

---

## 📦 Repo Structure

```
/src        → ABAP code (CDS, BDEF, BDEF_IMPL)
/docs       → Specs, diagrams, training flows
/ci         → GitHub Actions (e.g., sync tasks.json)
/tasks.json → Developer task board with status
```

---

## 🧾 License

MIT License © Mark Whitted

---

## 📬 Contact

Created and maintained by Mark Whitted  
For questions, integration help, or implementation support — please reach out.
