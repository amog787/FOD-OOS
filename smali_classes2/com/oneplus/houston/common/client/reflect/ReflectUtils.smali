.class public Lcom/oneplus/houston/common/client/reflect/ReflectUtils;
.super Ljava/lang/Object;
.source "ReflectUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ReflectUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIActivityManager()Ljava/lang/Object;
    .locals 5

    .line 108
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    move-result-object v1

    const-string v2, "android.app.ActivityManagerNative"

    .line 109
    invoke-virtual {v1, v2}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 110
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    const-string v2, "getDefault"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-static {v1, v2, v3, v4}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->getCachedMethod(Ljava/lang/Class;Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 111
    .local v2, "method":Ljava/lang/reflect/Method;
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 112
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ReflectUtils"

    const-string v3, "getIActivityManager exception: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method

.method public static getIAppOpsManager()Ljava/lang/Object;
    .locals 6

    .line 120
    :try_start_0
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    move-result-object v0

    const-string v1, "com.android.internal.app.IAppOpsService$Stub"

    .line 121
    invoke-virtual {v0, v1}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 122
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    const-string v1, "asInterface"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/os/IBinder;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v5, v3}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->getCachedMethod(Ljava/lang/Class;Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 124
    .local v1, "method":Ljava/lang/reflect/Method;
    const-string v3, "appops"

    invoke-static {v3}, Lcom/oneplus/houston/common/client/reflect/ReflectUtils;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 125
    .local v3, "packageService":Landroid/os/IBinder;
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 126
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "packageService":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIAppOpsManager exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReflectUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getIBatteryStats()Ljava/lang/Object;
    .locals 6

    .line 134
    :try_start_0
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    move-result-object v0

    const-string v1, "com.android.internal.app.IBatteryStats$Stub"

    .line 135
    invoke-virtual {v0, v1}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 136
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    const-string v1, "asInterface"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/os/IBinder;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v5, v3}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->getCachedMethod(Ljava/lang/Class;Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 138
    .local v1, "method":Ljava/lang/reflect/Method;
    const-string v3, "batterystats"

    invoke-static {v3}, Lcom/oneplus/houston/common/client/reflect/ReflectUtils;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 139
    .local v3, "packageService":Landroid/os/IBinder;
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 140
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "packageService":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIBatteryStats exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReflectUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getIBinder(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .line 148
    :try_start_0
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    move-result-object v0

    const-string v1, "android.os.ServiceManager"

    invoke-virtual {v0, v1}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 149
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    const-string v1, "getService"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v5, v3}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->getCachedMethod(Ljava/lang/Class;Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 151
    .local v1, "m":Ljava/lang/reflect/Method;
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 152
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIBinder exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReflectUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getIDeviceIdleController()Ljava/lang/Object;
    .locals 6

    .line 223
    :try_start_0
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    move-result-object v0

    const-string v1, "android.os.IDeviceIdleController$Stub"

    invoke-virtual {v0, v1}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 224
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    const-string v1, "asInterface"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/os/IBinder;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v5, v3}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->getCachedMethod(Ljava/lang/Class;Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 226
    .local v1, "method":Ljava/lang/reflect/Method;
    const-string v3, "deviceidle"

    invoke-static {v3}, Lcom/oneplus/houston/common/client/reflect/ReflectUtils;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 227
    .local v3, "deviceidleservice":Landroid/os/IBinder;
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 228
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "deviceidleservice":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIDeviceIdleController exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReflectUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getIFlymePermissionService()Ljava/lang/Object;
    .locals 6

    .line 94
    :try_start_0
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    move-result-object v0

    const-string v1, "meizu.security.IFlymePermissionService$Stub"

    .line 95
    invoke-virtual {v0, v1}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 96
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    const-string v1, "asInterface"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/os/IBinder;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v5, v3}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->getCachedMethod(Ljava/lang/Class;Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 98
    .local v1, "method":Ljava/lang/reflect/Method;
    const-string v3, "flyme_permission"

    invoke-static {v3}, Lcom/oneplus/houston/common/client/reflect/ReflectUtils;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 99
    .local v3, "windowService":Landroid/os/IBinder;
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 100
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "windowService":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIFlymePermissionService exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReflectUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getIPackageManager()Ljava/lang/Object;
    .locals 6

    .line 29
    :try_start_0
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    move-result-object v0

    const-string v1, "android.content.pm.IPackageManager$Stub"

    invoke-virtual {v0, v1}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 30
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    const-string v1, "asInterface"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/os/IBinder;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v5, v3}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->getCachedMethod(Ljava/lang/Class;Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 32
    .local v1, "method":Ljava/lang/reflect/Method;
    const-string v3, "package"

    invoke-static {v3}, Lcom/oneplus/houston/common/client/reflect/ReflectUtils;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 33
    .local v3, "packageService":Landroid/os/IBinder;
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 34
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "packageService":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIPackageManager exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReflectUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getIPowerManager()Ljava/lang/Object;
    .locals 6

    .line 42
    :try_start_0
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    move-result-object v0

    const-string v1, "android.os.IPowerManager$Stub"

    invoke-virtual {v0, v1}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 43
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    const-string v1, "asInterface"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/os/IBinder;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v5, v3}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->getCachedMethod(Ljava/lang/Class;Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 45
    .local v1, "method":Ljava/lang/reflect/Method;
    const-string v3, "power"

    invoke-static {v3}, Lcom/oneplus/houston/common/client/reflect/ReflectUtils;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 46
    .local v3, "packageService":Landroid/os/IBinder;
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 47
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "packageService":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIPowerManager exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReflectUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getITelephonyExt()Ljava/lang/Object;
    .locals 6

    .line 55
    :try_start_0
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    move-result-object v0

    const-string v1, "android.telephony.ITelephonyExt$Stub"

    invoke-virtual {v0, v1}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 56
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    const-string v1, "asInterface"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/os/IBinder;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v5, v3}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->getCachedMethod(Ljava/lang/Class;Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 58
    .local v1, "method":Ljava/lang/reflect/Method;
    const-string v3, "phone_ext"

    invoke-static {v3}, Lcom/oneplus/houston/common/client/reflect/ReflectUtils;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 59
    .local v3, "packageService":Landroid/os/IBinder;
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 60
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "packageService":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getITelephonyExt exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReflectUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getIVoiceSenseService()Ljava/lang/Object;
    .locals 6

    .line 80
    :try_start_0
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    move-result-object v0

    const-string v1, "android.os.IVoiceSenseService$Stub"

    invoke-virtual {v0, v1}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 81
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    const-string v1, "asInterface"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/os/IBinder;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v5, v3}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->getCachedMethod(Ljava/lang/Class;Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 84
    .local v1, "method":Ljava/lang/reflect/Method;
    const-string v3, "voicesense"

    invoke-static {v3}, Lcom/oneplus/houston/common/client/reflect/ReflectUtils;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 85
    .local v3, "packageService":Landroid/os/IBinder;
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 86
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "packageService":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIVoiceSenseService exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReflectUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getIWindowManager()Ljava/lang/Object;
    .locals 6

    .line 210
    :try_start_0
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    move-result-object v0

    const-string v1, "android.view.IWindowManager$Stub"

    invoke-virtual {v0, v1}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 211
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    const-string v1, "asInterface"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/os/IBinder;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v5, v3}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->getCachedMethod(Ljava/lang/Class;Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 213
    .local v1, "method":Ljava/lang/reflect/Method;
    const-string v3, "window"

    invoke-static {v3}, Lcom/oneplus/houston/common/client/reflect/ReflectUtils;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 214
    .local v3, "windowservice":Landroid/os/IBinder;
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 215
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "windowservice":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIBatteryStats exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReflectUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p0, "service"    # Ljava/lang/String;

    .line 160
    :try_start_0
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    move-result-object v0

    const-string v1, "android.os.ServiceManager"

    invoke-virtual {v0, v1}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 161
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    const-string v1, "getService"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v5, v3}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->getCachedMethod(Ljava/lang/Class;Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 163
    .local v1, "m":Ljava/lang/reflect/Method;
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 164
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getService exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReflectUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getStaticVariableInt(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "variableName"    # Ljava/lang/String;

    .line 185
    :try_start_0
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 186
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->getCachedField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 187
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 188
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 189
    .local v1, "object":Ljava/lang/Object;
    move-object v3, v1

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 190
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "object":Ljava/lang/Object;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, -0x1

    return v1
.end method

.method public static getStaticVariableString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "variableName"    # Ljava/lang/String;

    .line 172
    :try_start_0
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 173
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->getCachedField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 174
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 175
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 176
    .local v1, "object":Ljava/lang/Object;
    move-object v3, v1

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 177
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "object":Ljava/lang/Object;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getTelephonyManager(Landroid/content/Context;)Ljava/lang/Object;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 68
    :try_start_0
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    move-result-object v0

    const-string v1, "android.telephony.TelephonyManager"

    invoke-virtual {v0, v1}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 69
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    const-string v1, "from"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v5, v3}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->getCachedMethod(Ljava/lang/Class;Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 71
    .local v1, "method":Ljava/lang/reflect/Method;
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 72
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTelephonyManager exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReflectUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getWifiManager(Landroid/content/Context;)Ljava/lang/Object;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 198
    :try_start_0
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    move-result-object v0

    const-string v1, "android.net.WifiManager"

    invoke-virtual {v0, v1}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 199
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    const-string v1, "from"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v5, v3}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->getCachedMethod(Ljava/lang/Class;Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 201
    .local v1, "method":Ljava/lang/reflect/Method;
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 202
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWifiManager exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReflectUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method
