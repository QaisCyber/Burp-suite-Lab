Burp Suite Lab

هذا المستودع مخصص لإعداد بيئة عمل (Lab) لاختبار الاختراق باستخدام Burp Suite وتطبيق OWASP Juice Shop عبر Docker.

هذا المختبر هو جزء من المحتوى التعليمي المقدم على قناة Qais Cyber ويهدف إلى توفير بيئة اختبار حقيقية لتعلم:

- Web Penetration Testing
- Bug Bounty
- Burp Suite عملياً

---

📺 الشرح العملي

يمكنك متابعة شرح إعداد واستخدام المختبر بالتفصيل عبر قناتي على يوتيوب:

Qais Cyber - يوتيوب:
https://www.youtube.com/@Qaiscyber

---

🛠 المتطلبات الأساسية

تأكد من توفر الأدوات التالية:

- Docker
- Burp Suite
- Git

لا حاجة لتثبيت:

- Node.js
- npm

لأن Docker يتكفل بكل شيء تلقائياً.

---

🚀 خطوات التحميل والتشغيل

1. تحميل المشروع

افتح Terminal واكتب:
```
git clone https://github.com/qaiscyber/Burp-suite-Lab.git
cd Burp-suite-Lab
```

---

2. تثبيت البيئة (مرة واحدة فقط)
```
sudo bash install-juice.sh
```
---

3. تشغيل المختبر
```
sudo bash start-juice.sh
```
---

🔍 كيفية الاستخدام

بعد تشغيل المشروع سيظهر في Terminal:

Server listening on port 3000

ثم افتح المتصفح:
```
http://localhost:3000
```
---

⚙️ إعداد Burp Suite

1. افتح Burp Suite
2. اذهب إلى Proxy
3. تأكد من:

127.0.0.1:8080

4. فعّل Intercept

---

🎯 هدف المختبر

ستتعلم من خلال هذا المختبر:

- SQL Injection
- XSS
- Authentication Bypass
- Broken Access Control
- وغيرها من ثغرات OWASP

---

⚠️ تنبيه أخلاقي

هذا المختبر مخصص للأغراض التعليمية فقط.

استخدام هذه الأدوات ضد:

- مواقع حقيقية
- شركات
- أنظمة بدون إذن

قد يعرضك للمساءلة القانونية.

---

👨‍💻 مقدم الكورس

Qais Cyber
Cyber Security Researcher
Bug Bounty Hunter

YouTube:
https://www.youtube.com/@Qaiscyber

---

⭐ دعم المشروع

إذا أعجبك المشروع لا تنسى:

- ⭐ Star للمستودع
- الاشتراك بالقناة
- مشاركة المشروع
