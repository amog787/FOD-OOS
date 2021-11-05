.class public Lcom/android/server/wm/DisplayAreaOrganizerController;
.super Landroid/window/IDisplayAreaOrganizerController$Stub;
.source "DisplayAreaOrganizerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplayAreaOrganizerController"


# instance fields
.field private final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field private final mOrganizersByFeatureIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/window/IDisplayAreaOrganizer;",
            ">;"
        }
    .end annotation
.end field

.field final mService:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 1
    .param p1, "atm"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 58
    invoke-direct {p0}, Landroid/window/IDisplayAreaOrganizerController$Stub;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    .line 59
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 60
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/DisplayAreaOrganizerController;)Lcom/android/server/wm/WindowManagerGlobalLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayAreaOrganizerController;

    .line 30
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/DisplayAreaOrganizerController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayAreaOrganizerController;

    .line 30
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    return-object v0
.end method

.method private enforceStackPermission(Ljava/lang/String;)V
    .locals 2
    .param p1, "func"    # Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method static synthetic lambda$registerOrganizer$0(ILandroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;)V
    .locals 1
    .param p0, "feature"    # I
    .param p1, "organizer"    # Landroid/window/IDisplayAreaOrganizer;
    .param p2, "da"    # Lcom/android/server/wm/DisplayArea;

    .line 85
    iget v0, p2, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    if-eq v0, p0, :cond_0

    return-void

    .line 86
    :cond_0
    invoke-virtual {p2, p1}, Lcom/android/server/wm/DisplayArea;->setOrganizer(Landroid/window/IDisplayAreaOrganizer;)V

    .line 87
    return-void
.end method

.method static synthetic lambda$unregisterOrganizer$1(Landroid/window/IDisplayAreaOrganizer;Ljava/util/Map$Entry;)Z
    .locals 2
    .param p0, "organizer"    # Landroid/window/IDisplayAreaOrganizer;
    .param p1, "entry"    # Ljava/util/Map$Entry;

    .line 103
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/IDisplayAreaOrganizer;

    invoke-interface {v0}, Landroid/window/IDisplayAreaOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p0}, Landroid/window/IDisplayAreaOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$unregisterOrganizer$2(Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;)V
    .locals 1
    .param p0, "organizer"    # Landroid/window/IDisplayAreaOrganizer;
    .param p1, "da"    # Lcom/android/server/wm/DisplayArea;

    .line 106
    iget-object v0, p1, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    if-eq v0, p0, :cond_0

    return-void

    .line 107
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayArea;->setOrganizer(Landroid/window/IDisplayAreaOrganizer;)V

    .line 108
    return-void
.end method


# virtual methods
.method onDisplayAreaAppeared(Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;)V
    .locals 3
    .param p1, "organizer"    # Landroid/window/IDisplayAreaOrganizer;
    .param p2, "da"    # Lcom/android/server/wm/DisplayArea;

    .line 117
    :try_start_0
    new-instance v0, Landroid/view/SurfaceControl;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    const-string v2, "DisplayAreaOrganizerController.onDisplayAreaAppeared"

    invoke-direct {v0, v1, v2}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 119
    .local v0, "outSurfaceControl":Landroid/view/SurfaceControl;
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getDisplayAreaInfo()Landroid/window/DisplayAreaInfo;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Landroid/window/IDisplayAreaOrganizer;->onDisplayAreaAppeared(Landroid/window/DisplayAreaInfo;Landroid/view/SurfaceControl;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v0    # "outSurfaceControl":Landroid/view/SurfaceControl;
    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 123
    :goto_0
    return-void
.end method

.method onDisplayAreaInfoChanged(Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;)V
    .locals 1
    .param p1, "organizer"    # Landroid/window/IDisplayAreaOrganizer;
    .param p2, "da"    # Lcom/android/server/wm/DisplayArea;

    .line 135
    :try_start_0
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getDisplayAreaInfo()Landroid/window/DisplayAreaInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/window/IDisplayAreaOrganizer;->onDisplayAreaInfoChanged(Landroid/window/DisplayAreaInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 139
    :goto_0
    return-void
.end method

.method onDisplayAreaVanished(Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;)V
    .locals 1
    .param p1, "organizer"    # Landroid/window/IDisplayAreaOrganizer;
    .param p2, "da"    # Lcom/android/server/wm/DisplayArea;

    .line 127
    :try_start_0
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getDisplayAreaInfo()Landroid/window/DisplayAreaInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/window/IDisplayAreaOrganizer;->onDisplayAreaVanished(Landroid/window/DisplayAreaInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 131
    :goto_0
    return-void
.end method

.method public registerOrganizer(Landroid/window/IDisplayAreaOrganizer;I)V
    .locals 6
    .param p1, "organizer"    # Landroid/window/IDisplayAreaOrganizer;
    .param p2, "feature"    # I

    .line 69
    const-string v0, "registerOrganizer()"

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayAreaOrganizerController;->enforceStackPermission(Ljava/lang/String;)V

    .line 70
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 72
    .local v0, "origId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 73
    iget-object v3, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 78
    new-instance v3, Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;-><init>(Lcom/android/server/wm/DisplayAreaOrganizerController;Landroid/window/IDisplayAreaOrganizer;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .local v3, "dr":Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;
    :try_start_2
    invoke-interface {p1}, Landroid/window/IDisplayAreaOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    goto :goto_0

    .line 81
    :catch_0
    move-exception v4

    .line 84
    :goto_0
    :try_start_3
    iget-object v4, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance v5, Lcom/android/server/wm/-$$Lambda$DisplayAreaOrganizerController$mx6kBh7YI0Ihvd4RL7NvMLiVdwc;

    invoke-direct {v5, p2, p1}, Lcom/android/server/wm/-$$Lambda$DisplayAreaOrganizerController$mx6kBh7YI0Ihvd4RL7NvMLiVdwc;-><init>(ILandroid/window/IDisplayAreaOrganizer;)V

    invoke-virtual {v4, v5}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplayAreas(Ljava/util/function/Consumer;)V

    .line 89
    iget-object v4, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    nop

    .end local v3    # "dr":Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 92
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 93
    nop

    .line 94
    return-void

    .line 74
    :cond_0
    :try_start_5
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Replacing existing organizer currently unsupported"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .end local p1    # "organizer":Landroid/window/IDisplayAreaOrganizer;
    .end local p2    # "feature":I
    throw v3

    .line 90
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .restart local p1    # "organizer":Landroid/window/IDisplayAreaOrganizer;
    .restart local p2    # "feature":I
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .end local p1    # "organizer":Landroid/window/IDisplayAreaOrganizer;
    .end local p2    # "feature":I
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 92
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .restart local p1    # "organizer":Landroid/window/IDisplayAreaOrganizer;
    .restart local p2    # "feature":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 93
    throw v2
.end method

.method public unregisterOrganizer(Landroid/window/IDisplayAreaOrganizer;)V
    .locals 5
    .param p1, "organizer"    # Landroid/window/IDisplayAreaOrganizer;

    .line 98
    const-string v0, "unregisterTaskOrganizer()"

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayAreaOrganizerController;->enforceStackPermission(Ljava/lang/String;)V

    .line 99
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 101
    .local v0, "origId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 102
    iget-object v3, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    new-instance v4, Lcom/android/server/wm/-$$Lambda$DisplayAreaOrganizerController$nRbzpv86yu_hPtn9WaGp64X2Pt0;

    invoke-direct {v4, p1}, Lcom/android/server/wm/-$$Lambda$DisplayAreaOrganizerController$nRbzpv86yu_hPtn9WaGp64X2Pt0;-><init>(Landroid/window/IDisplayAreaOrganizer;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 105
    iget-object v3, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance v4, Lcom/android/server/wm/-$$Lambda$DisplayAreaOrganizerController$PjbOQsmTo9SsqYA5W_I1Ng23PYc;

    invoke-direct {v4, p1}, Lcom/android/server/wm/-$$Lambda$DisplayAreaOrganizerController$PjbOQsmTo9SsqYA5W_I1Ng23PYc;-><init>(Landroid/window/IDisplayAreaOrganizer;)V

    invoke-virtual {v3, v4}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplayAreas(Ljava/util/function/Consumer;)V

    .line 109
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 111
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 112
    nop

    .line 113
    return-void

    .line 109
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .end local p1    # "organizer":Landroid/window/IDisplayAreaOrganizer;
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 111
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .restart local p1    # "organizer":Landroid/window/IDisplayAreaOrganizer;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 112
    throw v2
.end method
