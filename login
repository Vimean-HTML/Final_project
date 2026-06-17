<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Smart Library — Sign In</title>

  <!-- Bootstrap 5 -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

  <!-- Tabler Icons -->
  <link href="https://cdn.jsdelivr.net/npm/@tabler/icons-webfont@3.3.0/tabler-icons.min.css" rel="stylesheet">

  <!-- Google Fonts: Playfair Display + Inter -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;600;700&family=Inter:wght@300;400;500;600&display=swap" rel="stylesheet">

  <style>
    /* ── Reset & base ─────────────────────────────────── */
    *, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }

    body {
        /* put the background image of the library login page here */
       background-image: url('https://i.pinimg.com/736x/54/e9/db/54e9db9d17266db9d9747fa1c7d9ae2b.jpg');
        background-size: cover;
        min-height: 100vh;
        font-family: 'Inter', sans-serif;
        background: #060d1e;
      font-family: 'Inter', sans-serif;
      background: #060d1e;
      display: flex;
      align-items: center;
      justify-content: center;
      padding: 24px;
      overflow-x: hidden;
    }

    /* animated star field */
    body::before {
      content: '';
      position: fixed;
      inset: 0;
      background-image:
        radial-gradient(1px 1px at 12% 18%, rgba(255,255,255,0.35) 0%, transparent 100%),
        radial-gradient(1px 1px at 34% 55%, rgba(255,255,255,0.25) 0%, transparent 100%),
        radial-gradient(1px 1px at 67% 22%, rgba(255,255,255,0.3) 0%, transparent 100%),
        radial-gradient(1px 1px at 80% 70%, rgba(255,255,255,0.2) 0%, transparent 100%),
        radial-gradient(1px 1px at 50% 88%, rgba(255,255,255,0.28) 0%, transparent 100%),
        radial-gradient(1px 1px at 91% 40%, rgba(255,255,255,0.22) 0%, transparent 100%);
      pointer-events: none;
      z-index: 0;
    }

    /* ── Card shell ───────────────────────────────────── */
    .login-card {
      position: relative;
      z-index: 1;
      width: 100%;
      max-width: 1020px;
      min-height: 580px;
      border-radius: 24px;
      border: 1px solid rgba(255,255,255,0.09);
      overflow: hidden;
      display: flex;
      animation: rise 0.65s cubic-bezier(0.22,1,0.36,1) both;
        box-shadow: 0 8px 32px rgba(61, 86, 228, 0.25);
    }
    .login-card::hover {
      box-shadow: 0 12px 48px rgba(61, 86, 228, 0.35);

    }

    @keyframes rise {
      from { opacity: 0; transform: translateY(28px); }
      to   { opacity: 1; transform: translateY(0); }
    }

    /* ── Left panel ───────────────────────────────────── */
    .panel-left {
      flex: 0 0 420px;
      background: linear-gradient(160deg, #0d1f44 0%, #071229 100%);
      padding: 52px 44px;
      display: flex;
      flex-direction: column;
      justify-content: space-between;
      position: relative;
      overflow: hidden;
    }

    /* decorative orb */
    .panel-left::before {
      content: '';
      position: absolute;
      top: -80px; right: -80px;
      width: 320px; height: 320px;
      border-radius: 50%;
      background: radial-gradient(circle, rgba(56,98,200,0.28) 0%, transparent 70%);
      pointer-events: none;
    }

    .panel-left::after {
      content: '';
      position: absolute;
      bottom: -60px; left: -60px;
      width: 240px; height: 240px;
      border-radius: 50%;
      background: radial-gradient(circle, rgba(30,60,140,0.3) 0%, transparent 70%);
      pointer-events: none;
    }

    .brand-badge {
      display: inline-flex;
      align-items: center;
      gap: 7px;
      background: rgba(99,141,255,0.12);
      border: 1px solid rgba(99,141,255,0.25);
      border-radius: 30px;
      padding: 5px 14px 5px 10px;
      font-size: 11px;
      font-weight: 500;
      color: #8aadff;
      letter-spacing: 0.07em;
      text-transform: uppercase;
      width: fit-content;
      margin-bottom: 24px;
    }

    .brand-badge .ti {
      font-size: 14px;
    }

    .panel-title {
      font-family: 'Playfair Display', serif;
      font-size: 2.15rem;
      font-weight: 700;
      color: #e8eeff;
      line-height: 1.22;
      margin-bottom: 16px;
    }

    .panel-desc {
      font-size: 13.5px;
      font-weight: 300;
      color: #6a87b8;
      line-height: 1.78;
    }

    /* stats grid */
    .stats-grid {
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 10px;
      margin-top: 32px;
      position: relative;
      z-index: 1;
    }

    .stat-box {
      background: rgba(255,255,255,0.04);
      border: 1px solid rgba(255,255,255,0.08);
      border-radius: 12px;
      padding: 14px 16px;
    }

    .stat-num {
      font-family: 'Playfair Display', serif;
      font-size: 1.4rem;
      font-weight: 600;
      color: #7badff;
    }

    .stat-label {
      font-size: 11px;
      color: #3e5a80;
      margin-top: 3px;
    }

    /* book spine decoration */
    .bookshelf {
      display: flex;
      align-items: flex-end;
      gap: 5px;
      margin-top: 28px;
      position: relative;
      z-index: 1;
    }

    .book-spine {
      border-radius: 3px 3px 0 0;
      flex: 1;
    }

    /* ── Right panel ──────────────────────────────────── */
    .panel-right {
      flex: 1;
      background: #ffffff;
      padding: 52px 48px;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }

    .form-eyebrow {
      font-size: 11px;
      font-weight: 600;
      letter-spacing: 0.1em;
      text-transform: uppercase;
      color: #3b62d4;
      margin-bottom: 6px;
    }

    .form-heading {
      font-family: 'Playfair Display', serif;
      font-size: 1.75rem;
      font-weight: 600;
      color: #0d1a36;
      margin-bottom: 4px;
    }

    .form-sub {
      font-size: 13.5px;
      color: #7a8aaa;
      margin-bottom: 32px;
      font-weight: 400;
    }

    /* field labels */
    .field-label {
      font-size: 11.5px;
      font-weight: 600;
      letter-spacing: 0.06em;
      text-transform: uppercase;
      color: #4a5568;
      margin-bottom: 7px;
      display: block;
    }

    /* input overrides on top of Bootstrap */
    .lib-input-group .input-group-text {
      background: #f4f6fb;
      border: 1px solid #dde3f0;
      border-right: none;
      color: #8898b4;
      border-radius: 11px 0 0 11px;
      padding: 0 14px;
    }

    .lib-input-group .form-control {
      background: #f4f6fb;
      border: 1px solid #dde3f0;
      border-left: none;
      border-radius: 0 11px 11px 0;
      height: 48px;
      font-family: 'Inter', sans-serif;
      font-size: 14px;
      color: #0d1a36;
      box-shadow: none;
    }

    .lib-input-group .form-control::placeholder { color: #b0bcd4; }

    .lib-input-group .form-control:focus {
      border-color: #3b62d4;
      background: #fff;
      box-shadow: none;
    }

    .lib-input-group .form-control:focus + .input-group-text,
    .lib-input-group:focus-within .input-group-text {
      border-color: #3b62d4;
      background: #fff;
    }

    /* role cards */
    .role-card {
      border: 1px solid #dde3f0;
      border-radius: 12px;
      padding: 14px 16px;
      cursor: pointer;
      display: flex;
      align-items: center;
      gap: 12px;
      background: #f8f9fd;
      transition: border-color 0.15s, background 0.15s, box-shadow 0.15s;
      user-select: none;
    }

    .role-card:hover {
      border-color: #b0c0e8;
      background: #f2f5fd;
    }

    .role-card.selected {
      border-color: #3b62d4;
      background: #fff;
      box-shadow: 0 0 0 3px rgba(59,98,212,0.1);
    }

    .role-icon {
      width: 36px; height: 36px;
      border-radius: 9px;
      display: flex; align-items: center; justify-content: center;
      font-size: 17px;
      flex-shrink: 0;
    }

    .role-name {
      font-size: 13.5px;
      font-weight: 600;
      color: #0d1a36;
    }

    .role-hint {
      font-size: 11px;
      color: #8898b4;
      margin-top: 1px;
    }

    /* sign-in button */
    .btn-signin {
      width: 100%;
      height: 50px;
      background: #1a3699;
      border: none;
      border-radius: 12px;
      font-family: 'Inter', sans-serif;
      font-size: 14.5px;
      font-weight: 500;
      color: #dce7ff;
      letter-spacing: 0.03em;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
      transition: background 0.18s, transform 0.1s;
      cursor: pointer;
    }

    .btn-signin:hover { background: #1e42b8; color: #fff; }
    .btn-signin:active { transform: scale(0.99); }

    /* message */
    #msg {
      min-height: 22px;
      text-align: center;
      font-size: 13px;
      font-weight: 500;
      margin-top: 14px;
    }

    .msg-ok  { color: #16a34a; }
    .msg-err { color: #dc2626; }

    /* ── Responsive ───────────────────────────────────── */
    @media (max-width: 768px) {
      .login-card { flex-direction: column; max-width: 480px; }
      .panel-left { flex: none; padding: 36px 28px; }
      .panel-right { padding: 36px 28px; }
      .panel-title { font-size: 1.7rem; }
    }
  </style>
</head>
<body>

<div class="login-card">

  <!-- ── LEFT PANEL ── -->
  <div class="panel-left">

    <div>
      <div class="brand-badge">
        <i class="ti ti-books"></i> Digital Library
      </div>

      <h1 class="panel-title">Smart Library<br>Management<br>System</h1>

      <p class="panel-desc">
        One secure platform for books, readers,
        borrowing records, and every operation
        your library runs — beautifully unified.
      </p>

      <div class="stats-grid">
        <div class="stat-box">
          <div class="stat-num">12,400</div>
          <div class="stat-label">Books catalogued</div>
        </div>
        <div class="stat-box">
          <div class="stat-num">3,800</div>
          <div class="stat-label">Active readers</div>
        </div>
        <div class="stat-box">
          <div class="stat-num">98.4%</div>
          <div class="stat-label">Return rate</div>
        </div>
        <div class="stat-box">
          <div class="stat-num">240</div>
          <div class="stat-label">Borrows today</div>
        </div>
      </div>
    </div>

    <!-- decorative bookshelf -->
    <div class="bookshelf">
      <div class="book-spine" style="height:70px;background:#1c3f85;"></div>
      <div class="book-spine" style="height:55px;background:#254da0;"></div>
      <div class="book-spine" style="height:80px;background:#1a3870;"></div>
      <div class="book-spine" style="height:50px;background:#14306a;"></div>
      <div class="book-spine" style="height:65px;background:#1e4898;"></div>
      <div class="book-spine" style="height:75px;background:#1c3f85;"></div>
      <div class="book-spine" style="height:46px;background:#254da0;"></div>
      <div class="book-spine" style="height:68px;background:#1a3870;"></div>
      <div class="book-spine" style="height:58px;background:#14306a;"></div>
      <div class="book-spine" style="height:72px;background:#1e4898;"></div>
      <div class="book-spine" style="height:44px;background:#1c3f85;"></div>
      <div class="book-spine" style="height:62px;background:#254da0;"></div>
    </div>

  </div>

  <!-- ── RIGHT PANEL ── -->
  <div class="panel-right">

    <p class="form-eyebrow">Library Portal</p>
    <h2 class="form-heading">Welcome back</h2>
    <p class="form-sub">Sign in to access your reading experience</p>

    <!-- Username -->
    <div class="mb-3">
      <label class="field-label">Username</label>
      <div class="input-group lib-input-group">
        <span class="input-group-text">
          <i class="ti ti-user" style="font-size:16px;"></i>
        </span>
        <input type="text" id="username" class="form-control" placeholder="Enter your username">
      </div>
    </div>

    <!-- Password -->
    <div class="mb-3">
      <label class="field-label">Password</label>
      <div class="input-group lib-input-group">
        <span class="input-group-text">
          <i class="ti ti-lock" style="font-size:16px;"></i>
        </span>
        <input type="password" id="password" class="form-control" placeholder="Enter your password">
      </div>
    </div>

    <!-- Role selection -->
    <div class="mb-4">
      <label class="field-label">Sign in as</label>
      <div class="row g-2">
        <div class="col-6">
          <div class="role-card" id="card-admin" onclick="selectRole('admin')">
            <div class="role-icon" style="background:#eef2ff;">
              <i class="ti ti-shield-check" style="color:#3b62d4;"></i>
            </div>
            <div>
              <div class="role-name">Admin</div>
              <div class="role-hint">Full access</div>
            </div>
          </div>
        </div>
        <div class="col-6">
          <div class="role-card" id="card-reader" onclick="selectRole('reader')">
            <div class="role-icon" style="background:#f0fdf4;">
              <i class="ti ti-book-2" style="color:#16a34a;"></i>
            </div>
            <div>
              <div class="role-name">Reader</div>
              <div class="role-hint">Browse &amp; borrow</div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Submit -->
    <button class="btn-signin" onclick="doLogin()">
      <i class="ti ti-login" style="font-size:18px;"></i>
      Sign in
    </button>

    <div id="msg" role="alert"></div>

  </div><!-- /panel-right -->

</div><!-- /login-card -->

<!-- Bootstrap JS bundle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<script>
  let selectedRole = '';

  function selectRole(role) {
    selectedRole = role;
    document.getElementById('card-admin').classList.toggle('selected', role === 'admin');
    document.getElementById('card-reader').classList.toggle('selected', role === 'reader');
  }

  function doLogin() {
    const user = document.getElementById('username').value.trim();
    const pass = document.getElementById('password').value.trim();
    const msg  = document.getElementById('msg');

    if (!user || !pass || !selectedRole) {
      msg.className = 'msg-err';
      msg.textContent = 'Please fill in all fields and select a role.';
      return;
    }

    if (user === 'admin' && pass === 'admin123' && selectedRole === 'admin') {
      msg.className = 'msg-ok';
      msg.textContent = '✓ Welcome, Admin — redirecting to dashboard…';
    } else if (user === 'reader' && pass === 'reader123' && selectedRole === 'reader') {
      msg.className = 'msg-ok';
      msg.textContent = '✓ Welcome, Reader — your shelf awaits!';
    } else {
      msg.className = 'msg-err';
      msg.textContent = 'Incorrect credentials or mismatched role. Try again.';
    }
  }

  // Allow Enter key to submit
  document.addEventListener('keydown', e => {
    if (e.key === 'Enter') doLogin();
  });
</script>

</body>
</html>
