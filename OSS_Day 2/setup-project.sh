#!/bin/bash

# Script tạo cấu trúc dự án Kanban TODO App hoàn chỉnh
# Chạy script: chmod +x setup-project.sh && ./setup-project.sh

echo "🚀 Đang tạo cấu trúc dự án Kanban TODO App..."

# Tạo thư mục root project
mkdir -p kanban-todo-project
cd kanban-todo-project

echo "📁 Tạo cấu trúc thư mục Backend (FastAPI)..."

# ===== BACKEND STRUCTURE =====
mkdir -p kanban-todo-api/{app,scripts,tests,docs}

# App directory structure
mkdir -p kanban-todo-api/app/{core,database,routers,schemas}

# Core files
touch kanban-todo-api/app/__init__.py
touch kanban-todo-api/app/main.py

# Core module
touch kanban-todo-api/app/core/__init__.py
touch kanban-todo-api/app/core/config.py
touch kanban-todo-api/app/core/security.py
touch kanban-todo-api/app/core/deps.py

# Database module
touch kanban-todo-api/app/database/__init__.py
touch kanban-todo-api/app/database/connection.py
touch kanban-todo-api/app/database/models.py
touch kanban-todo-api/app/database/repository.py

# Routers
touch kanban-todo-api/app/routers/__init__.py
touch kanban-todo-api/app/routers/auth.py
touch kanban-todo-api/app/routers/users.py
touch kanban-todo-api/app/routers/boards.py
touch kanban-todo-api/app/routers/tasks.py

# Schemas (Pydantic models)
touch kanban-todo-api/app/schemas/__init__.py
touch kanban-todo-api/app/schemas/user.py
touch kanban-todo-api/app/schemas/board.py
touch kanban-todo-api/app/schemas/task.py

# Scripts
touch kanban-todo-api/scripts/seed_data.py
touch kanban-todo-api/scripts/reset_database.py
touch kanban-todo-api/scripts/backup_database.py

# Tests
touch kanban-todo-api/tests/__init__.py
touch kanban-todo-api/tests/test_auth.py
touch kanban-todo-api/tests/test_users.py
touch kanban-todo-api/tests/test_boards.py
touch kanban-todo-api/tests/test_tasks.py
touch kanban-todo-api/tests/conftest.py

# Root files
touch kanban-todo-api/.env.example
touch kanban-todo-api/.env
touch kanban-todo-api/.gitignore
touch kanban-todo-api/requirements.txt
touch kanban-todo-api/alembic.ini
touch kanban-todo-api/README.md

# Migrations folder (sẽ tạo bởi Alembic)
mkdir -p kanban-todo-api/migrations

echo "📁 Tạo cấu trúc thư mục Frontend (Vanilla JS)..."

# ===== FRONTEND STRUCTURE =====
mkdir -p kanban-frontend/{assets,docs,tests}

# Assets structure
mkdir -p kanban-frontend/assets/{css,js,images,lib,fonts}

# Main HTML files
touch kanban-frontend/index.html
touch kanban-frontend/login.html
touch kanban-frontend/register.html

# CSS files
touch kanban-frontend/assets/css/style.css
touch kanban-frontend/assets/css/login.css
touch kanban-frontend/assets/css/responsive.css
touch kanban-frontend/assets/css/themes.css

# JavaScript files
touch kanban-frontend/assets/js/api.js
touch kanban-frontend/assets/js/auth.js
touch kanban-frontend/assets/js/app.js
touch kanban-frontend/assets/js/kanban.js
touch kanban-frontend/assets/js/utils.js
touch kanban-frontend/assets/js/config.js

# Library files (external dependencies)
touch kanban-frontend/assets/lib/sortable.min.js
touch kanban-frontend/assets/lib/axios.min.js

# Images placeholder
touch kanban-frontend/assets/images/.gitkeep

# Fonts placeholder  
touch kanban-frontend/assets/fonts/.gitkeep

# Documentation
touch kanban-frontend/docs/API_USAGE.md
touch kanban-frontend/docs/DEPLOYMENT.md

# Tests
touch kanban-frontend/tests/auth.test.js
touch kanban-frontend/tests/api.test.js
touch kanban-frontend/tests/kanban.test.js

# Root files
touch kanban-frontend/.gitignore
touch kanban-frontend/README.md
touch kanban-frontend/package.json

echo "📁 Tạo cấu trúc Documentation và Scripts..."

# ===== DOCUMENTATION & SCRIPTS =====
mkdir -p docs/{buoi-1,buoi-2,buoi-3,buoi-4,buoi-5,buoi-6,buoi-7,buoi-8,api}
mkdir -p scripts

# Documentation files
touch docs/README.md
touch docs/PROJECT_OVERVIEW.md
touch docs/ARCHITECTURE.md
touch docs/DEPLOYMENT_GUIDE.md

# Buổi học documentation
touch docs/buoi-1/SETUP_ENVIRONMENT.md
touch docs/buoi-2/GIT_BASICS.md
touch docs/buoi-3/OOP_KANBAN_DESIGN.md
touch docs/buoi-4/FASTAPI_BASICS.md
touch docs/buoi-5/DATABASE_INTEGRATION.md
touch docs/buoi-6/JWT_AUTHENTICATION.md
touch docs/buoi-7/FRONTEND_DEVELOPMENT.md
touch docs/buoi-8/DEPLOYMENT.md

# API Documentation
touch docs/api/ENDPOINTS.md
touch docs/api/AUTHENTICATION.md
touch docs/api/SCHEMAS.md

# Project scripts
touch scripts/setup-backend.sh
touch scripts/setup-frontend.sh
touch scripts/start-development.sh
touch scripts/run-tests.sh
touch scripts/deploy.sh

# Make scripts executable
chmod +x scripts/*.sh

echo "📁 Tạo cấu trúc Testing và CI/CD..."

# ===== TESTING & CI/CD =====
mkdir -p .github/workflows
mkdir -p tests/integration
mkdir -p tests/e2e

# GitHub Actions
touch .github/workflows/backend-tests.yml
touch .github/workflows/frontend-tests.yml
touch .github/workflows/deploy.yml

# Integration tests
touch tests/integration/test_api_integration.py
touch tests/integration/test_auth_flow.py

# E2E tests
touch tests/e2e/test_user_journey.js
touch tests/e2e/test_kanban_operations.js

echo "📁 Tạo các file cấu hình project..."

# ===== ROOT PROJECT FILES =====
touch .gitignore
touch README.md
touch docker-compose.yml
touch Dockerfile.backend
touch Dockerfile.frontend
touch .env.example
touch CHANGELOG.md
touch LICENSE
touch CONTRIBUTING.md

echo "📝 Tạo nội dung cơ bản cho một số file quan trọng..."

# Tạo .gitignore chung
cat > .gitignore << 'EOF'
# Python
__pycache__/
*.py[cod]
*$py.class
*.so
.Python
build/
develop-eggs/
dist/
downloads/
eggs/
.eggs/
lib/
lib64/
parts/
sdist/
var/
wheels/
*.egg-info/
.installed.cfg
*.egg

# Virtual Environment
venv/
env/
ENV/

# Database
*.db
*.sqlite3

# Environment Variables
.env
.env.local
.env.development.local
.env.test.local
.env.production.local

# Logs
*.log
logs/

# IDE
.vscode/
.idea/
*.swp
*.swo
*~

# OS
.DS_Store
.DS_Store?
._*
.Spotlight-V100
.Trashes
ehthumbs.db
Thumbs.db

# Node modules (if using npm/yarn for frontend tools)
node_modules/
npm-debug.log*
yarn-debug.log*
yarn-error.log*

# Coverage reports
htmlcov/
.coverage
.coverage.*
coverage.xml
*.cover
.hypothesis/
.pytest_cache/
EOF

# Tạo README.md chung
cat > README.md << 'EOF'
# Kanban TODO App - Full Stack Project

Dự án xây dựng ứng dụng quản lý công việc theo mô hình Kanban board với FastAPI backend và Vanilla JavaScript frontend.

## Cấu trúc dự án

```
kanban-todo-project/
├── kanban-todo-api/          # Backend (FastAPI)
├── kanban-frontend/          # Frontend (Vanilla JS)
├── docs/                     # Documentation
├── scripts/                  # Utility scripts
├── tests/                    # Integration & E2E tests
└── .github/workflows/        # CI/CD
```

## Công nghệ sử dụng

### Backend
- FastAPI (Python web framework)
- SQLAlchemy (ORM)
- Alembic (Database migrations)
- JWT Authentication
- SQLite/PostgreSQL

### Frontend
- Vanilla JavaScript (ES6+)
- HTML5 & CSS3
- SortableJS (Drag & Drop)
- Fetch API

## Quick Start

1. Setup Backend:
```bash
cd kanban-todo-api
python -m venv venv
source venv/bin/activate  # Linux/macOS
# venv\Scripts\activate   # Windows
pip install -r requirements.txt
uvicorn app.main:app --reload
```

2. Setup Frontend:
```bash
cd kanban-frontend
# Sử dụng Live Server extension trong VS Code
# hoặc python -m http.server 8080
```

## Tiến độ học tập

- [x] Buổi 1: Setup môi trường
- [ ] Buổi 2: Git basics
- [ ] Buổi 3: OOP & Kanban design
- [ ] Buổi 4: FastAPI implementation
- [ ] Buổi 5: Database integration
- [ ] Buổi 6: JWT authentication
- [ ] Buổi 7: Frontend development
- [ ] Buổi 8: Deployment

## Đóng góp

Vui lòng đọc [CONTRIBUTING.md](CONTRIBUTING.md) để biết cách đóng góp cho dự án.

## License

Dự án này được cấp phép theo [MIT License](LICENSE).
EOF

# Tạo package.json cho frontend (optional)
cat > kanban-frontend/package.json << 'EOF'
{
  "name": "kanban-frontend",
  "version": "1.0.0",
  "description": "Frontend for Kanban TODO App",
  "main": "index.html",
  "scripts": {
    "start": "python -m http.server 8080",
    "test": "echo \"No tests specified\" && exit 0"
  },
  "keywords": ["kanban", "todo", "javascript", "frontend"],
  "author": "Student",
  "license": "MIT"
}
EOF

# Tạo requirements.txt template cho backend
cat > kanban-todo-api/requirements.txt << 'EOF'
# FastAPI và dependencies
fastapi==0.104.1
uvicorn[standard]==0.24.0
python-multipart==0.0.6

# Database
sqlalchemy==2.0.23
alembic==1.12.1

# Authentication & Security
python-jose[cryptography]==3.3.0
passlib[bcrypt]==1.7.4

# Development
pytest==7.4.3
pytest-asyncio==0.21.1
httpx==0.25.2
EOF

# Tạo .env.example
cat > kanban-todo-api/.env.example << 'EOF'
# Database
DATABASE_URL=sqlite:///./kanban_todo.db

# Security
SECRET_KEY=your-super-secret-key-change-in-production
ALGORITHM=HS256
ACCESS_TOKEN_EXPIRE_MINUTES=1440

# Application
DEBUG=true
ALLOWED_HOSTS=localhost,127.0.0.1
CORS_ORIGINS=http://localhost:8080,http://127.0.0.1:5500
EOF

echo "✅ Hoàn thành tạo cấu trúc dự án!"
echo ""
echo "📊 Thống kê:"
echo "   - Folders: $(find kanban-todo-project -type d | wc -l)"
echo "   - Files: $(find kanban-todo-project -type f | wc -l)"
echo ""
echo "🎯 Cấu trúc dự án đã được tạo tại: ./kanban-todo-project"
echo ""
echo "📋 Bước tiếp theo:"
echo "   1. cd kanban-todo-project"
echo "   2. Mở project trong VS Code"
echo "   3. Bắt đầu học từ Buổi 1"
echo "   4. Điền nội dung các file theo từng buổi học"
echo ""
echo "🔧 Các script tiện ích đã tạo:"
echo "   - scripts/setup-backend.sh     : Setup backend environment"
echo "   - scripts/setup-frontend.sh    : Setup frontend environment"  
echo "   - scripts/start-development.sh : Start cả backend và frontend"
echo "   - scripts/run-tests.sh         : Chạy tất cả tests"
echo ""
echo "💡 Tip: Sử dụng 'tree kanban-todo-project' để xem cấu trúc chi tiết"
echo ""
echo "🎉 Chúc bạn học tập hiệu quả!"