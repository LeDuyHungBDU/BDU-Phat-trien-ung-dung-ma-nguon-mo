© 2025 - Binh Duong University - Môn học: Phát triển ứng dụng mã nguồn mở

Biên soạn: GV. Lê Duy Hùng



\## Giới thiệu



Khóa học này hướng dẫn chi tiết cách xây dựng một ứng dụng quản lý công việc theo mô hình Kanban Board, sử dụng:



\- \*\*Backend\*\*: FastAPI (Python) với kiến trúc RESTful API

\- \*\*Database\*\*: SQLAlchemy ORM, PostgreSQL hoặc SQLite

\- \*\*Authentication\*\*: JWT Authentication với phân quyền Role-based

\- \*\*Frontend\*\*: Vanilla JavaScript, HTML5, CSS3, Drag \& Drop



Khóa học được thiết kế dành cho sinh viên lần đầu tiếp cận full stack development với quy trình bài bản từ setup môi trường, code backend, database, authentication đến xây dựng frontend giao diện thực tế.



---



\## Nội dung khóa học



| Buổi | Chủ đề chính                                      | Mô tả                                                     |

|-------|-------------------------------------------------|-----------------------------------------------------------|

| 1     | Setup môi trường \& công cụ                       | Cài đặt Python, IDE, Git, FastAPI, tạo project cơ bản     |

| 2     | Git \& quản lý phiên bản                          | Git workflow, các thao tác commit, branch, merge          |

| 3     | Thiết kế OOP \& Kanban Specification             | Lập kế hoạch API, thiết kế lớp domain cơ bản              |

| 4     | Xây dựng FastAPI backend cơ bản                  | Implement CRUD mock data, schema validation               |

| 5     | Database integration với SQLAlchemy              | Tạo models, migration, repository pattern                 |

| 6     | JWT Authentication \& Authorization               | Xác thực JWT, password hashing, phân quyền role-based     |

| 7     | Frontend development với Vanilla JS              | Kết nối API, quản lý giao diện Kanban, token management   |

| 8     | Deployment \& mở rộng                             | Triển khai lên server, thêm tính năng nâng cao            |



---



\## Hướng dẫn sử dụng



\### Backend

cd kanban-todo-api

python -m venv venv

source venv/bin/activate # trên macOS/Linux

venv\\Scripts\\activate # trên Windows

pip install -r requirements.txt

uvicorn app.main:app --reload



API sẽ chạy tại: `http://localhost:8000`



\### Frontend

Mở thư mục frontend và dùng Live Server hoặc Python HTTP Server:

\- Với VS Code: Run Live Server từ file `login.html`

\- Hoặc:

cd kanban-frontend

python -m http.server 8080



Truy cập `http://localhost:8080/login.html`



---



\## Các tài nguyên \& tham khảo

\- \[FastAPI](https://fastapi.tiangolo.com/)

\- \[SQLAlchemy](https://www.sqlalchemy.org/)

\- \[JWT Introduction](https://jwt.io/introduction/)

\- \[SortableJS](https://sortablejs.github.io/Sortable/)

\- \[MDN Web Docs về JavaScript](https://developer.mozilla.org/en-US/docs/Web/JavaScript)



---



\## Đóng góp

Mọi ý kiến đóng góp, phản hồi vui lòng gửi qua issues hoặc pull request trên GitHub.



---



\## Giấy phép

Khóa học và mã nguồn được cấp phép theo MIT License.



---

© 2025 - Binh Duong University - Môn học: Phát triển ứng dụng mã nguồn mở

