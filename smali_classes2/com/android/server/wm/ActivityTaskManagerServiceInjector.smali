.class public Lcom/android/server/wm/ActivityTaskManagerServiceInjector;
.super Ljava/lang/Object;
.source "ActivityTaskManagerServiceInjector.java"


# static fields
.field private static final DEBUG:Z

.field public static final IS_LANDSCAPE_APP_ANIMATION_IMPROVEMENT_ENABLED:Z

.field private static final PROCESS_RESIDENT_ENABLED:Z

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManagerInjector"

.field private static opProcessResident:Lcom/android/server/wm/IOpProcessResident;

.field public static sHypnusService:Lcom/android/internal/app/IHypnusService;

.field private static sOpActivityTaskManagerService:Lcom/android/server/wm/IOpActivityTaskManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 33
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->DEBUG:Z

    .line 36
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x5d

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 37
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->PROCESS_RESIDENT_ENABLED:Z

    .line 38
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->opProcessResident:Lcom/android/server/wm/IOpProcessResident;

    .line 41
    new-array v0, v0, [I

    const/16 v2, 0xb0

    aput v2, v0, v3

    .line 42
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->IS_LANDSCAPE_APP_ANIMATION_IMPROVEMENT_ENABLED:Z

    .line 45
    sput-object v1, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->sHypnusService:Lcom/android/internal/app/IHypnusService;

    .line 55
    sput-object v1, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->sOpActivityTaskManagerService:Lcom/android/server/wm/IOpActivityTaskManagerService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStartActivityFromRecents()Z
    .locals 1

    .line 117
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->initInstance()V

    .line 118
    sget-object v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->sOpActivityTaskManagerService:Lcom/android/server/wm/IOpActivityTaskManagerService;

    if-eqz v0, :cond_0

    .line 119
    invoke-interface {v0}, Lcom/android/server/wm/IOpActivityTaskManagerService;->getStartActivityFromRecents()Z

    move-result v0

    return v0

    .line 121
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getTopRunningPackageName()Ljava/lang/String;
    .locals 1

    .line 174
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->initInstance()V

    .line 175
    sget-object v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->sOpActivityTaskManagerService:Lcom/android/server/wm/IOpActivityTaskManagerService;

    if-eqz v0, :cond_0

    .line 176
    invoke-interface {v0}, Lcom/android/server/wm/IOpActivityTaskManagerService;->getTopRunningPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 178
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static init(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 1
    .param p0, "atms"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 70
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->initInstance()V

    .line 71
    sget-object v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->sOpActivityTaskManagerService:Lcom/android/server/wm/IOpActivityTaskManagerService;

    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpActivityTaskManagerService;->init(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 74
    :cond_0
    return-void
.end method

.method private static initInstance()V
    .locals 1

    .line 58
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->IS_LANDSCAPE_APP_ANIMATION_IMPROVEMENT_ENABLED:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->sOpActivityTaskManagerService:Lcom/android/server/wm/IOpActivityTaskManagerService;

    if-nez v0, :cond_0

    .line 60
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_activitytaskmanagerservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 61
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpActivityTaskManagerService;

    sput-object v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->sOpActivityTaskManagerService:Lcom/android/server/wm/IOpActivityTaskManagerService;

    .line 65
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_hypnus:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IHypnusService;

    sput-object v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->sHypnusService:Lcom/android/internal/app/IHypnusService;

    .line 67
    return-void
.end method

.method public static isKeyguardGoingAway()Z
    .locals 1

    .line 166
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->initInstance()V

    .line 167
    sget-object v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->sOpActivityTaskManagerService:Lcom/android/server/wm/IOpActivityTaskManagerService;

    if-eqz v0, :cond_0

    .line 168
    invoke-interface {v0}, Lcom/android/server/wm/IOpActivityTaskManagerService;->isKeyguardGoingAway()Z

    move-result v0

    return v0

    .line 170
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static removeTaskById(Lcom/android/server/wm/ActivityStackSupervisor;IZZLjava/lang/String;Landroid/util/SparseArray;I)Z
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

    .line 140
    .local p5, "pidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;"
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 141
    const-string v0, "ActivityTaskManagerInjector"

    const-string v1, "in framework.jar, ActivityTaskManagerServiceInjector"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    if-nez p0, :cond_1

    .line 145
    const/4 v0, 0x0

    return v0

    .line 148
    :cond_1
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->PROCESS_RESIDENT_ENABLED:Z

    if-eqz v0, :cond_3

    .line 149
    sget-object v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->opProcessResident:Lcom/android/server/wm/IOpProcessResident;

    if-nez v0, :cond_2

    .line 150
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_process_resident:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpProcessResident;

    sput-object v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->opProcessResident:Lcom/android/server/wm/IOpProcessResident;

    .line 154
    :cond_2
    sget-object v1, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->opProcessResident:Lcom/android/server/wm/IOpProcessResident;

    if-eqz v1, :cond_3

    .line 155
    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move v8, p6

    invoke-interface/range {v1 .. v8}, Lcom/android/server/wm/IOpProcessResident;->removeTaskById(Lcom/android/server/wm/ActivityStackSupervisor;IZZLjava/lang/String;Landroid/util/SparseArray;I)Z

    move-result v0

    return v0

    .line 160
    :cond_3
    const/4 v0, 0x1

    const-string v1, "remove-task"

    invoke-virtual {p0, p1, v0, v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTaskById(IZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;)V
    .locals 5
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 84
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->initInstance()V

    .line 85
    sget-object v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->sOpActivityTaskManagerService:Lcom/android/server/wm/IOpActivityTaskManagerService;

    if-eqz v0, :cond_0

    .line 86
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpActivityTaskManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 89
    :cond_0
    sget-object v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->sHypnusService:Lcom/android/internal/app/IHypnusService;

    if-nez v0, :cond_1

    .line 90
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_hypnus:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IHypnusService;

    sput-object v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->sHypnusService:Lcom/android/internal/app/IHypnusService;

    .line 94
    :cond_1
    sget-object v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->sHypnusService:Lcom/android/internal/app/IHypnusService;

    if-eqz v0, :cond_2

    .line 96
    if-eqz p0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_2

    .line 97
    sget-object v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->sHypnusService:Lcom/android/internal/app/IHypnusService;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 98
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getPid()I

    move-result v4

    .line 97
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/app/IHypnusService;->hypnusSetScene(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HypnusService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManagerInjector"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    .line 104
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void
.end method

.method public static setStartActivityFromRecents(Z)V
    .locals 1
    .param p0, "flag"    # Z

    .line 110
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->initInstance()V

    .line 111
    sget-object v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->sOpActivityTaskManagerService:Lcom/android/server/wm/IOpActivityTaskManagerService;

    if-eqz v0, :cond_0

    .line 112
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpActivityTaskManagerService;->setStartActivityFromRecents(Z)V

    .line 114
    :cond_0
    return-void
.end method

.method public static setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1
    .param p0, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .line 77
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->initInstance()V

    .line 78
    sget-object v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->sOpActivityTaskManagerService:Lcom/android/server/wm/IOpActivityTaskManagerService;

    if-eqz v0, :cond_0

    .line 79
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpActivityTaskManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 81
    :cond_0
    return-void
.end method
