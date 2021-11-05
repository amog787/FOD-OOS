.class public Lcom/android/server/am/OpORMServiceInjector;
.super Ljava/lang/Object;
.source "OpORMServiceInjector.java"


# static fields
.field public static final ORM_BIND_INTENT:Ljava/lang/String; = "com.oneplus.orm.bind"

.field private static final ORM_ENABLE:Ljava/lang/String; = "persist.vendor.orm.enabled"

.field private static final ORM_FEATURE_ENABLE:Ljava/lang/String; = "persist.sys.orm.feature.enable"

.field private static final ORM_OMM_KILL:Ljava/lang/String; = "persist.vendor.omm.enabled.kill"

.field private static final ORM_OMM_RECLAIM:Ljava/lang/String; = "persist.vendor.omm.enabled.reclaim"

.field private static final ORM_PACKAGE:Ljava/lang/String; = "com.oneplus.orm"

.field private static final ORM_RESTART:Ljava/lang/String; = "persist.vendor.orm.restart"

.field public static final ORM_SERVICE:Ljava/lang/String; = "com.oneplus.orm.OPManagerService"

.field private static final TAG:Ljava/lang/String; = "OpORMServiceInjector"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOMMKillEnable()Z
    .locals 2

    .line 73
    const-string/jumbo v0, "persist.vendor.omm.enabled.kill"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getORMFeatureEnable()Z
    .locals 2

    .line 69
    const-string/jumbo v0, "persist.sys.orm.feature.enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getORMNeedDump(Ljava/lang/String;)Z
    .locals 4
    .param p0, "cmd"    # Ljava/lang/String;

    .line 77
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0xf7

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "orm"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    invoke-static {}, Lcom/android/server/am/OpORMServiceInjector;->getORMFeatureEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    .line 77
    :goto_0
    return v0
.end method

.method private static startORMServiceApp(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 62
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 63
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oneplus.orm"

    const-string v3, "com.oneplus.orm.OPManagerService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpORMServiceInjector"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 66
    return-void
.end method

.method public static startORMServiceAppIfNeed(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 37
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0xf7

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    const-string/jumbo v2, "persist.vendor.orm.enabled"

    const-string/jumbo v4, "persist.vendor.omm.enabled.reclaim"

    const-string/jumbo v5, "persist.vendor.omm.enabled.kill"

    const-string v6, "false"

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/server/am/OpORMServiceInjector;->getORMFeatureEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 38
    const-string/jumbo v1, "persist.sys.orm.feature.enable"

    const-string/jumbo v7, "true"

    invoke-static {v1, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string/jumbo v1, "persist.vendor.orm.restart"

    invoke-static {v1, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-array v1, v0, [I

    const/16 v2, 0xf8

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    invoke-static {v5, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_0
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :goto_0
    new-array v0, v0, [I

    const/16 v1, 0xf9

    aput v1, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    invoke-static {v4, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 49
    :cond_1
    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :goto_1
    invoke-static {}, Landroid/os/SystemProperties;->reportSyspropChanged()V

    .line 52
    invoke-static {p0}, Lcom/android/server/am/OpORMServiceInjector;->startORMServiceApp(Landroid/content/Context;)V

    goto :goto_2

    .line 54
    :cond_2
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Landroid/os/SystemProperties;->reportSyspropChanged()V

    .line 59
    :goto_2
    return-void
.end method
