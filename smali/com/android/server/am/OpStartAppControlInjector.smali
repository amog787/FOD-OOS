.class public Lcom/android/server/am/OpStartAppControlInjector;
.super Ljava/lang/Object;
.source "OpStartAppControlInjector.java"


# static fields
.field private static final ENABLED:Z

.field public static final TAG:Ljava/lang/String; = "OnePlusStartAppControl"

.field private static mStartAppControl:Lcom/android/server/am/IOpStartAppControl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x13

    aput v2, v0, v1

    .line 25
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activityFinished(Landroid/content/pm/ActivityInfo;)V
    .locals 1
    .param p0, "activity"    # Landroid/content/pm/ActivityInfo;

    .line 280
    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 281
    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    .line 282
    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpStartAppControl;->activityFinished(Landroid/content/pm/ActivityInfo;)V

    .line 284
    :cond_0
    return-void
.end method

.method public static addAccessibilityService(Landroid/content/ComponentName;)V
    .locals 1
    .param p0, "name"    # Landroid/content/ComponentName;

    .line 108
    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 109
    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    .line 110
    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpStartAppControl;->addAccessibilityService(Landroid/content/ComponentName;)V

    .line 112
    :cond_0
    return-void
.end method

.method public static appBecomeVisible(I)V
    .locals 1
    .param p0, "uid"    # I

    .line 273
    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 274
    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    .line 275
    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpStartAppControl;->appBecomeVisible(I)V

    .line 277
    :cond_0
    return-void
.end method

.method public static canActivityGo(Ljava/lang/String;ILandroid/content/Intent;Landroid/content/pm/ActivityInfo;)Z
    .locals 1
    .param p0, "callerPackage"    # Ljava/lang/String;
    .param p1, "callerUid"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "callee"    # Landroid/content/pm/ActivityInfo;

    .line 44
    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 45
    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    .line 46
    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/am/IOpStartAppControl;->canActivityGo(Ljava/lang/String;ILandroid/content/Intent;Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0

    .line 48
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static canInstrumentationGo(Landroid/content/ComponentName;I)Z
    .locals 1
    .param p0, "name"    # Landroid/content/ComponentName;
    .param p1, "callerUid"    # I

    .line 100
    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 101
    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    .line 102
    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpStartAppControl;->canInstrumentationGo(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0

    .line 104
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static canJobSchedulerGo(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "job"    # Ljava/lang/Object;

    .line 175
    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 176
    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    .line 177
    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpStartAppControl;->canJobSchedulerGo(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 179
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static canNotificationListenerServiceGo(Landroid/content/ComponentName;)Z
    .locals 1
    .param p0, "compName"    # Landroid/content/ComponentName;

    .line 52
    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 53
    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    .line 54
    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpStartAppControl;->canNotificationListenerServiceGo(Landroid/content/ComponentName;)Z

    move-result v0

    return v0

    .line 56
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static canProcGo(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .locals 1
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "hostingType"    # Ljava/lang/String;

    .line 221
    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 222
    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    .line 223
    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpStartAppControl;->canProcGo(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 225
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static canProviderGo(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/am/ContentProviderRecord;)Z
    .locals 1
    .param p0, "callerPackage"    # Ljava/lang/String;
    .param p1, "callerUid"    # I
    .param p2, "auth"    # Ljava/lang/String;
    .param p3, "callee"    # Lcom/android/server/am/ContentProviderRecord;

    .line 92
    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 93
    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    .line 94
    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/am/IOpStartAppControl;->canProviderGo(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/am/ContentProviderRecord;)Z

    move-result v0

    return v0

    .line 96
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static canReceiverGo(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .param p0, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p1, "calleeProcess"    # Lcom/android/server/am/ProcessRecord;

    .line 84
    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 85
    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    .line 86
    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpStartAppControl;->canReceiverGo(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    return v0

    .line 88
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static canScheduleServiceRestart(Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .param p0, "r"    # Lcom/android/server/am/ProcessRecord;

    .line 229
    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 230
    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    .line 231
    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpStartAppControl;->canScheduleServiceRestart(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    return v0

    .line 233
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static canServiceGo(Ljava/lang/String;ILandroid/content/Intent;Lcom/android/server/am/ServiceRecord;)Z
    .locals 2
    .param p0, "callerPackage"    # Ljava/lang/String;
    .param p1, "callerUid"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "callee"    # Lcom/android/server/am/ServiceRecord;

    .line 69
    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 70
    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    .line 71
    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/am/IOpStartAppControl;->canServiceGo(Ljava/lang/String;ILandroid/content/Intent;Lcom/android/server/am/ServiceRecord;)Z

    move-result v0

    return v0

    .line 73
    :cond_0
    const-string v0, "Randle"

    if-nez p2, :cond_1

    .line 74
    const-string/jumbo v1, "intent is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_1
    if-nez p3, :cond_2

    .line 77
    const-string v1, "callee is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static dispatchBlockedAuthes(Landroid/app/IApplicationThread;Ljava/lang/String;)V
    .locals 1
    .param p0, "thread"    # Landroid/app/IApplicationThread;
    .param p1, "callerPackage"    # Ljava/lang/String;

    .line 256
    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 257
    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    .line 258
    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpStartAppControl;->dispatchBlockedAuthes(Landroid/app/IApplicationThread;Ljava/lang/String;)V

    .line 260
    :cond_0
    return-void
.end method

.method public static getJobTimeout()J
    .locals 2

    .line 212
    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 213
    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    .line 214
    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0}, Lcom/android/server/am/IOpStartAppControl;->getJobTimeout()J

    move-result-wide v0

    return-wide v0

    .line 216
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static handleAppKilledLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 1
    .param p0, "r"    # Lcom/android/server/am/ProcessRecord;

    .line 237
    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 238
    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    .line 239
    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpStartAppControl;->handleAppKilledLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 241
    :cond_0
    return-void
.end method

.method public static initAms(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 37
    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 38
    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpStartAppControl;->initAms(Lcom/android/server/am/ActivityManagerService;)V

    .line 40
    :cond_0
    return-void
.end method

.method private static initInstance()V
    .locals 1

    .line 30
    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    if-nez v0, :cond_0

    .line 31
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_start_app_control:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpStartAppControl;

    sput-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    .line 34
    :cond_0
    return-void
.end method

.method public static initPackages(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArrayMap;)V
    .locals 1
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;)V"
        }
    .end annotation

    .line 60
    .local p1, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 61
    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    .line 62
    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    if-eqz v0, :cond_0

    .line 63
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpStartAppControl;->initPackages(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArrayMap;)V

    .line 66
    :cond_0
    return-void
.end method

.method public static isJobRestrict(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "job"    # Ljava/lang/Object;

    .line 190
    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 191
    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    .line 192
    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpStartAppControl;->isJobRestrict(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 194
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isOnePixelWindow(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 1
    .param p0, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 265
    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 266
    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    .line 267
    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpStartAppControl;->isOnePixelWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    return v0

    .line 269
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static removeAccessibilityService(Landroid/content/ComponentName;)V
    .locals 1
    .param p0, "name"    # Landroid/content/ComponentName;

    .line 115
    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 116
    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    .line 117
    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpStartAppControl;->removeAccessibilityService(Landroid/content/ComponentName;)V

    .line 119
    :cond_0
    return-void
.end method

.method public static reportRestrictJob(Ljava/lang/Object;J)V
    .locals 1
    .param p0, "job"    # Ljava/lang/Object;
    .param p1, "duration"    # J

    .line 183
    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 184
    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    .line 185
    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpStartAppControl;->reportRestrictJob(Ljava/lang/Object;J)V

    .line 187
    :cond_0
    return-void
.end method

.method public static setCurrentIME(Ljava/lang/String;)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .line 129
    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 130
    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    .line 131
    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpStartAppControl;->setCurrentIME(Ljava/lang/String;)V

    .line 134
    :cond_0
    return-void
.end method

.method public static setCurrentWallpaper(Ljava/lang/String;)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .line 137
    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 138
    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    .line 139
    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpStartAppControl;->setCurrentWallpaper(Ljava/lang/String;)V

    .line 141
    :cond_0
    return-void
.end method

.method public static skipBroadcast(Ljava/lang/String;ILandroid/content/Intent;)Z
    .locals 1
    .param p0, "callerPackage"    # Ljava/lang/String;
    .param p1, "callerUid"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .line 246
    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 247
    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    .line 248
    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpStartAppControl;->skipBroadcast(Ljava/lang/String;ILandroid/content/Intent;)Z

    .line 250
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static startJobMonitoring(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "jsc"    # Ljava/lang/Object;
    .param p1, "job"    # Ljava/lang/Object;

    .line 198
    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 199
    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    .line 200
    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpStartAppControl;->startJobMonitoring(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 202
    :cond_0
    return-void
.end method

.method public static stopJobMonitoring(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "jsc"    # Ljava/lang/Object;
    .param p1, "job"    # Ljava/lang/Object;

    .line 205
    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 206
    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    .line 207
    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpStartAppControl;->stopJobMonitoring(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 209
    :cond_0
    return-void
.end method

.method public static updateAccessibilityService(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 168
    .local p0, "names":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 169
    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpStartAppControl;->updateAccessibilityService(Ljava/util/Set;)V

    .line 171
    :cond_0
    return-void
.end method

.method public static updateGMSActionSet(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 144
    .local p0, "actionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 145
    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpStartAppControl;->updateGMSActionSet(Ljava/util/List;)V

    .line 147
    :cond_0
    return-void
.end method

.method public static updateGMSRestrict(Z)V
    .locals 1
    .param p0, "enable"    # Z

    .line 150
    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 151
    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpStartAppControl;->updateGMSRestrict(Z)V

    .line 153
    :cond_0
    return-void
.end method

.method public static updateHighPowerUsagePackage(Ljava/lang/String;)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .line 156
    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 157
    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpStartAppControl;->updateHighPowerUsagePackage(Ljava/lang/String;)V

    .line 159
    :cond_0
    return-void
.end method

.method public static updateHighPowerUsagePackages(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 162
    .local p0, "packages":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 163
    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpStartAppControl;->updateHighPowerUsagePackages(Ljava/util/Collection;)V

    .line 165
    :cond_0
    return-void
.end method

.method public static updateWidgetComponent(Landroid/content/ComponentName;Z)V
    .locals 1
    .param p0, "component"    # Landroid/content/ComponentName;
    .param p1, "add"    # Z

    .line 122
    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 123
    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    .line 124
    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpStartAppControl;->updateWidgetComponent(Landroid/content/ComponentName;Z)V

    .line 126
    :cond_0
    return-void
.end method
