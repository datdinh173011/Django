[1mdiff --git a/hrm/settings.py b/hrm/settings.py[m
[1mindex 547e7dd..ca89776 100644[m
[1m--- a/hrm/settings.py[m
[1m+++ b/hrm/settings.py[m
[36m@@ -26,11 +26,13 @@[m [mSECRET_KEY = 'j#qdf69z3j0q(#q5-+n8mn5et5+zey&xinm$17ij72vp2sr*(*'[m
 DEBUG = True[m
 [m
 ALLOWED_HOSTS = [][m
[31m-[m
[32m+[m[32mAUTH_USER_MODEL = 'users.User'[m
 [m
 # Application definition[m
 [m
 INSTALLED_APPS = [[m
[32m+[m[32m    'users.apps.UsersConfig',[m
[32m+[m[32m    'employee.apps.EmployeeConfig',[m
     'django.contrib.admin',[m
     'django.contrib.auth',[m
     'django.contrib.contenttypes',[m
[1mdiff --git a/hrm/urls.py b/hrm/urls.py[m
[1mindex 5cfda23..fcf87bf 100644[m
[1m--- a/hrm/urls.py[m
[1m+++ b/hrm/urls.py[m
[36m@@ -14,8 +14,10 @@[m [mIncluding another URLconf[m
     2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))[m
 """[m
 from django.contrib import admin[m
[31m-from django.urls import path[m
[32m+[m[32mfrom django.urls import include, path[m
 [m
 urlpatterns = [[m
     path('admin/', admin.site.urls),[m
[32m+[m[32m    path('users/', include('users.urls')),[m
[32m+[m[32m    path('employee/',include('employee.urls'))[m
 ][m
