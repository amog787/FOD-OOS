.class public Lcom/android/server/wm/ActivityTaskManagerServiceInjector;
.super Ljava/lang/Object;
.source "ActivityTaskManagerServiceInjector.java"


# static fields
.field private static final DEBUG:Z

.field public static final IS_LANDSCAPE_APP_ANIMATION_IMPROVEMENT_ENABLED:Z

.field private static final PROCESS_RESIDENT_ENABLED:Z

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManagerInjector"

.field private static opProcessResident:Lcom/android/server/wm/IOpProcessResident;

.field public static sIsKeyguardDone:Z

.field private static sOpActivityTaskManagerService:Lcom/android/server/wm/IOpActivityTaskManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 28
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->DEBUG:Z

    .line 31
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x75

    aput v3, v1, v2

    .line 32
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->PROCESS_RESIDENT_ENABLED:Z

    .line 35
    new-array v1, v0, [I

    const/16 v3, 0xcf

    aput v3, v1, v2

    .line 36
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->IS_LANDSCAPE_APP_ANIMATION_IMPROVEMENT_ENABLED:Z

    .line 39
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->opProcessResident:Lcom/android/server/wm/IOpProcessResident;

    .line 43
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->sIsKeyguardDone:Z

    .line 48
    sput-object v1, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->sOpActivityTaskManagerService:Lcom/android/server/wm/IOpActivityTaskManagerService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStartActivityFromRecents()Z
    .locals 1

    .line 91
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->initInstance()V

    .line 92
    sget-object v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->sOpActivityTaskManagerService:Lcom/android/server/wm/IOpActivityTaskManagerService;

    if-eqz v0, :cond_0

    .line 93
    invoke-interface {v0}, Lcom/android/server/wm/IOpActivityTaskManagerService;->getStartActivityFromRecents()Z

    move-result v0

    return v0

    .line 95
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getTopRunningPackageName()Ljava/lang/String;
    .locals 1

    .line 148
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->initInstance()V

    .line 149
    sget-object v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->sOpActivityTaskManagerService:Lcom/android/server/wm/IOpActivityTaskManagerService;

    if-eqz v0, :cond_0

    .line 150
    invoke-interface {v0}, Lcom/android/server/wm/IOpActivityTaskManagerService;->getTopRunningPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 152
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static init(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 1
    .param p0, "atms"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 60
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->initInstance()V

    .line 61
    sget-object v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->sOpActivityTaskManagerService:Lcom/android/server/wm/IOpActivityTaskManagerService;

    if-eqz v0, :cond_0

    .line 62
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpActivityTaskManagerService;->init(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 64
    :cond_0
    return-void
.end method

.method private static initInstance()V
    .locals 1

    .line 51
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->IS_LANDSCAPE_APP_ANIMATION_IMPROVEMENT_ENABLED:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->sOpActivityTaskManagerService:Lcom/android/server/wm/IOpActivityTaskManagerService;

    if-nez v0, :cond_0

    .line 53
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_activitytaskmanagerservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 54
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpActivityTaskManagerService;

    sput-object v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->sOpActivityTaskManagerService:Lcom/android/server/wm/IOpActivityTaskManagerService;

    .line 57
    :cond_0
    return-void
.end method

.method public static isKeyguardGoingAway()Z
    .locals 1

    .line 140
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->initInstance()V

    .line 141
    sget-object v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->sOpActivityTaskManagerService:Lcom/android/server/wm/IOpActivityTaskManagerService;

    if-eqz v0, :cond_0

    .line 142
    invoke-interface {v0}, Lcom/android/server/wm/IOpActivityTaskManagerService;->isKeyguardGoingAway()Z

    move-result v0

    return v0

    .line 144
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static removeTaskByIdLocked(Lcom/android/server/wm/ActivityStackSupervisor;IZZLjava/lang/String;Landroid/util/SparseArray;I)Z
    .locals 9
    .param p0, "supervisor"    # Lcom/android/server/wm/ActivityStackSupervisor;
    .param p1, "taskId"    # I
    .param p2, "killProcess"    # Z
    .param p3, "removeFromRecents"    # Z
    .param p4, "reason"    # Ljava/lang/String;
    .param p6, "callingPid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/ActivityStackSupervisor;",
            "IZZ",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/WindowProcessController;",
            ">;I)Z"
        }
    .end annotation

    .line 114
    .local p5, "pidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;"
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 115
    const-string v0, "ActivityTaskManagerInjector"

    const-string v1, "in framework.jar, ActivityTaskManagerServiceInjector"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    if-nez p0, :cond_1

    .line 119
    const/4 v0, 0x0

    return v0

    .line 122
    :cond_1
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->PROCESS_RESIDENT_ENABLED:Z

    if-eqz v0, :cond_3

    .line 123
    sget-object v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->opProcessResident:Lcom/android/server/wm/IOpProcessResident;

    if-nez v0, :cond_2

    .line 124
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_process_resident:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpProcessResident;

    sput-object v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->opProcessResident:Lcom/android/server/wm/IOpProcessResident;

    .line 128
    :cond_2
    sget-object v1, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->opProcessResident:Lcom/android/server/wm/IOpProcessResident;

    if-eqz v1, :cond_3

    .line 129
    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move v8, p6

    invoke-interface/range {v1 .. v8}, Lcom/android/server/wm/IOpProcessResident;->removeTaskByIdLocked(Lcom/android/server/wm/ActivityStackSupervisor;IZZLjava/lang/String;Landroid/util/SparseArray;I)Z

    move-result v0

    return v0

    .line 134
    :cond_3
    const/4 v0, 0x1

    const-string v1, "remove-task"

    invoke-virtual {p0, p1, v0, v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 74
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->initInstance()V

    .line 75
    sget-object v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->sOpActivityTaskManagerService:Lcom/android/server/wm/IOpActivityTaskManagerService;

    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpActivityTaskManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 78
    :cond_0
    return-void
.end method

.method public static setStartActivityFromRecents(Z)V
    .locals 1
    .param p0, "flag"    # Z

    .line 84
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->initInstance()V

    .line 85
    sget-object v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->sOpActivityTaskManagerService:Lcom/android/server/wm/IOpActivityTaskManagerService;

    if-eqz v0, :cond_0

    .line 86
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpActivityTaskManagerService;->setStartActivityFromRecents(Z)V

    .line 88
    :cond_0
    return-void
.end method

.method public static setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1
    .param p0, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .line 67
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->initInstance()V

    .line 68
    sget-object v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->sOpActivityTaskManagerService:Lcom/android/server/wm/IOpActivityTaskManagerService;

    if-eqz v0, :cond_0

    .line 69
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpActivityTaskManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 71
    :cond_0
    return-void
.end method
