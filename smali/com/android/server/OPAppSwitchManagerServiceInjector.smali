.class public Lcom/android/server/OPAppSwitchManagerServiceInjector;
.super Ljava/lang/Object;
.source "OPAppSwitchManagerServiceInjector.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "OPAppSwitchManagerServiceInjector"

.field private static opAppSwitchManagerServiceHelper:Lcom/android/server/IOPAppSwitchManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OPAppSwitchManagerServiceInjector;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppStartModeLocked(Ljava/lang/String;)I
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .line 70
    sget-object v0, Lcom/android/server/OPAppSwitchManagerServiceInjector;->opAppSwitchManagerServiceHelper:Lcom/android/server/IOPAppSwitchManagerService;

    if-eqz v0, :cond_0

    .line 71
    invoke-interface {v0, p0}, Lcom/android/server/IOPAppSwitchManagerService;->getAppStartModeLocked(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 73
    :cond_0
    const v0, 0x72f58f

    return v0
.end method

.method public static getOposAdsSettings(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "perm"    # Ljava/lang/String;

    .line 77
    sget-object v0, Lcom/android/server/OPAppSwitchManagerServiceInjector;->opAppSwitchManagerServiceHelper:Lcom/android/server/IOPAppSwitchManagerService;

    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v0, p0, p1}, Lcom/android/server/IOPAppSwitchManagerService;->getOposAdsSettings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 80
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static handleActivityPaused(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "nextResuming"    # Lcom/android/server/wm/ActivityRecord;

    .line 52
    sget-object v0, Lcom/android/server/OPAppSwitchManagerServiceInjector;->opAppSwitchManagerServiceHelper:Lcom/android/server/IOPAppSwitchManagerService;

    if-eqz v0, :cond_1

    .line 53
    sget-boolean v0, Lcom/android/server/OPAppSwitchManagerServiceInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 54
    const-string v0, "OPAppSwitchManagerServiceInjector"

    const-string v1, "handle ap"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    sget-object v0, Lcom/android/server/OPAppSwitchManagerServiceInjector;->opAppSwitchManagerServiceHelper:Lcom/android/server/IOPAppSwitchManagerService;

    invoke-interface {v0, p0, p1}, Lcom/android/server/IOPAppSwitchManagerService;->handleActivityPaused(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    .line 58
    :cond_1
    return-void
.end method

.method public static handleActivityResumed(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 61
    sget-object v0, Lcom/android/server/OPAppSwitchManagerServiceInjector;->opAppSwitchManagerServiceHelper:Lcom/android/server/IOPAppSwitchManagerService;

    if-eqz v0, :cond_1

    .line 62
    sget-boolean v0, Lcom/android/server/OPAppSwitchManagerServiceInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "OPAppSwitchManagerServiceInjector"

    const-string v1, "handle ar"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    sget-object v0, Lcom/android/server/OPAppSwitchManagerServiceInjector;->opAppSwitchManagerServiceHelper:Lcom/android/server/IOPAppSwitchManagerService;

    invoke-interface {v0, p0}, Lcom/android/server/IOPAppSwitchManagerService;->handleActivityResumed(Lcom/android/server/wm/ActivityRecord;)V

    .line 67
    :cond_1
    return-void
.end method

.method public static init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 21
    sget-object v0, Lcom/android/server/OPAppSwitchManagerServiceInjector;->opAppSwitchManagerServiceHelper:Lcom/android/server/IOPAppSwitchManagerService;

    if-nez v0, :cond_0

    .line 22
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_op_ads:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 23
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOPAppSwitchManagerService;

    sput-object v0, Lcom/android/server/OPAppSwitchManagerServiceInjector;->opAppSwitchManagerServiceHelper:Lcom/android/server/IOPAppSwitchManagerService;

    .line 25
    :cond_0
    sget-object v0, Lcom/android/server/OPAppSwitchManagerServiceInjector;->opAppSwitchManagerServiceHelper:Lcom/android/server/IOPAppSwitchManagerService;

    if-eqz v0, :cond_1

    .line 26
    const-string v0, "OPAppSwitchManagerServiceInjector"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    sget-object v0, Lcom/android/server/OPAppSwitchManagerServiceInjector;->opAppSwitchManagerServiceHelper:Lcom/android/server/IOPAppSwitchManagerService;

    invoke-interface {v0, p0, p1}, Lcom/android/server/IOPAppSwitchManagerService;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 29
    :cond_1
    return-void
.end method

.method public static registerAppSwitchObserver(Ljava/lang/String;Lcom/android/server/wm/IOPAppSwitchObserver;Lcom/oplus/app/OplusAppSwitchConfig;)Z
    .locals 2
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "observer"    # Lcom/android/server/wm/IOPAppSwitchObserver;
    .param p2, "config"    # Lcom/oplus/app/OplusAppSwitchConfig;

    .line 32
    sget-object v0, Lcom/android/server/OPAppSwitchManagerServiceInjector;->opAppSwitchManagerServiceHelper:Lcom/android/server/IOPAppSwitchManagerService;

    if-eqz v0, :cond_1

    .line 33
    sget-boolean v0, Lcom/android/server/OPAppSwitchManagerServiceInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 34
    const-string v0, "OPAppSwitchManagerServiceInjector"

    const-string/jumbo v1, "register ads observer"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    sget-object v0, Lcom/android/server/OPAppSwitchManagerServiceInjector;->opAppSwitchManagerServiceHelper:Lcom/android/server/IOPAppSwitchManagerService;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/IOPAppSwitchManagerService;->registerAppSwitchObserver(Ljava/lang/String;Lcom/android/server/wm/IOPAppSwitchObserver;Lcom/oplus/app/OplusAppSwitchConfig;)Z

    move-result v0

    return v0

    .line 38
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static unregisterAppSwitchObserver(Ljava/lang/String;Lcom/oplus/app/OplusAppSwitchConfig;)Z
    .locals 2
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "config"    # Lcom/oplus/app/OplusAppSwitchConfig;

    .line 42
    sget-object v0, Lcom/android/server/OPAppSwitchManagerServiceInjector;->opAppSwitchManagerServiceHelper:Lcom/android/server/IOPAppSwitchManagerService;

    if-eqz v0, :cond_1

    .line 43
    sget-boolean v0, Lcom/android/server/OPAppSwitchManagerServiceInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 44
    const-string v0, "OPAppSwitchManagerServiceInjector"

    const-string/jumbo v1, "unregister ads observer"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    sget-object v0, Lcom/android/server/OPAppSwitchManagerServiceInjector;->opAppSwitchManagerServiceHelper:Lcom/android/server/IOPAppSwitchManagerService;

    invoke-interface {v0, p0, p1}, Lcom/android/server/IOPAppSwitchManagerService;->unregisterAppSwitchObserver(Ljava/lang/String;Lcom/oplus/app/OplusAppSwitchConfig;)Z

    move-result v0

    return v0

    .line 48
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
