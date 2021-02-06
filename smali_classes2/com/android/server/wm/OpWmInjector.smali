.class public Lcom/android/server/wm/OpWmInjector;
.super Ljava/lang/Object;
.source "OpWmInjector.java"


# static fields
.field private static final DEBUG_ONEPLUS:Z

.field private static final TAG:Ljava/lang/String; = "OpWmInjector"

.field public static mNetBoostFeature:Z

.field private static mRwc:Lcom/android/server/wm/RootWindowContainer;

.field private static mWms:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/wm/OpWmInjector;->DEBUG_ONEPLUS:Z

    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/OpWmInjector;->mNetBoostFeature:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkUserRelation(Lcom/android/server/wm/ActivityRecord;I)Z
    .locals 4
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "userId"    # I

    .line 154
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x1a

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    const/16 v2, 0x3e7

    if-nez v1, :cond_0

    if-eq p1, v2, :cond_2

    :cond_0
    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v1, v2, :cond_1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    :cond_2
    :goto_0
    return v0
.end method

.method public static doUpdateProcessDuration(Ljava/lang/String;Ljava/lang/Long;Landroid/os/Handler;Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 5
    .param p0, "mPackageName"    # Ljava/lang/String;
    .param p1, "mTime"    # Ljava/lang/Long;
    .param p2, "mHandler"    # Landroid/os/Handler;
    .param p3, "mService"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 160
    const/16 v0, 0x457

    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 161
    .local v0, "m":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 162
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "pkg"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v4, "time"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 164
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 165
    iget-object v2, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 166
    return-void
.end method

.method public static doUpdateProcessLaunchTimes(Ljava/lang/String;Landroid/os/Handler;Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 4
    .param p0, "mPkgName"    # Ljava/lang/String;
    .param p1, "mHandler"    # Landroid/os/Handler;
    .param p2, "mService"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 169
    const/16 v0, 0x458

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 170
    .local v0, "m":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 171
    .local v1, "bundle":Landroid/os/Bundle;
    move-object v2, p0

    .line 172
    .local v2, "pkgName":Ljava/lang/String;
    const-string v3, "pkg"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 174
    iget-object v3, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 175
    return-void
.end method

.method public static findFocusedWindow()V
    .locals 0

    .line 73
    return-void
.end method

.method public static getSysAlertWindowUids()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v0, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v1, Lcom/android/server/wm/OpWmInjector;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 104
    sget-object v2, Lcom/android/server/wm/OpWmInjector;->mRwc:Lcom/android/server/wm/RootWindowContainer;

    if-eqz v2, :cond_0

    .line 105
    sget-object v2, Lcom/android/server/wm/OpWmInjector;->mRwc:Lcom/android/server/wm/RootWindowContainer;

    new-instance v3, Lcom/android/server/wm/-$$Lambda$OpWmInjector$Rdindzz5umGmvQqVSQgXcGlARII;

    invoke-direct {v3, v0}, Lcom/android/server/wm/-$$Lambda$OpWmInjector$Rdindzz5umGmvQqVSQgXcGlARII;-><init>(Ljava/util/ArrayList;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    goto :goto_0

    .line 115
    :cond_0
    sget-boolean v2, Lcom/android/server/wm/OpWmInjector;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_1

    .line 116
    const-string v2, "OpWmInjector"

    const-string v3, "mRwc is still null on getSysAlertWindowUids"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_1
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 120
    return-object v0

    .line 119
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public static getSysAlertWindowUidsForScreenOff()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 124
    sget-object v0, Lcom/android/server/wm/OpWmInjector;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 127
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v0, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v1, Lcom/android/server/wm/OpWmInjector;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 130
    sget-object v2, Lcom/android/server/wm/OpWmInjector;->mRwc:Lcom/android/server/wm/RootWindowContainer;

    if-eqz v2, :cond_1

    .line 131
    sget-object v2, Lcom/android/server/wm/OpWmInjector;->mRwc:Lcom/android/server/wm/RootWindowContainer;

    new-instance v3, Lcom/android/server/wm/-$$Lambda$OpWmInjector$59cs-KAjkLbqogMxxexL6qH6Aso;

    invoke-direct {v3, v0}, Lcom/android/server/wm/-$$Lambda$OpWmInjector$59cs-KAjkLbqogMxxexL6qH6Aso;-><init>(Ljava/util/ArrayList;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    goto :goto_0

    .line 141
    :cond_1
    sget-boolean v2, Lcom/android/server/wm/OpWmInjector;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_2

    .line 142
    const-string v2, "OpWmInjector"

    const-string v3, "mRwc is still null on getSysAlertWindowUidsForScreenOff"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_2
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 146
    return-object v0

    .line 145
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public static getVisibleWindowUids()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v0, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v1, Lcom/android/server/wm/OpWmInjector;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 83
    sget-object v2, Lcom/android/server/wm/OpWmInjector;->mRwc:Lcom/android/server/wm/RootWindowContainer;

    if-eqz v2, :cond_0

    .line 84
    sget-object v2, Lcom/android/server/wm/OpWmInjector;->mRwc:Lcom/android/server/wm/RootWindowContainer;

    new-instance v3, Lcom/android/server/wm/-$$Lambda$OpWmInjector$6jlkcQfl7asnJQU3vkQTiHVBDYg;

    invoke-direct {v3, v0}, Lcom/android/server/wm/-$$Lambda$OpWmInjector$6jlkcQfl7asnJQU3vkQTiHVBDYg;-><init>(Ljava/util/ArrayList;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    goto :goto_0

    .line 92
    :cond_0
    sget-boolean v2, Lcom/android/server/wm/OpWmInjector;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_1

    .line 93
    const-string v2, "OpWmInjector"

    const-string v3, "mRwc is still null on getVisibleWindowUids"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_1
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 97
    return-object v0

    .line 96
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public static hasBoostFeature()Z
    .locals 1

    .line 76
    sget-boolean v0, Lcom/android/server/wm/OpWmInjector;->mNetBoostFeature:Z

    return v0
.end method

.method public static initInstance(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2
    .param p0, "wms"    # Lcom/android/server/wm/WindowManagerService;

    .line 50
    sput-object p0, Lcom/android/server/wm/OpWmInjector;->mWms:Lcom/android/server/wm/WindowManagerService;

    .line 51
    sget-boolean v0, Lcom/android/server/wm/OpWmInjector;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 52
    const-string v0, "OpWmInjector"

    const-string v1, "init mWms on OpWmInjector"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    return-void
.end method

.method public static initRootWindowContainer(Lcom/android/server/wm/RootWindowContainer;)V
    .locals 2
    .param p0, "rwc"    # Lcom/android/server/wm/RootWindowContainer;

    .line 57
    sput-object p0, Lcom/android/server/wm/OpWmInjector;->mRwc:Lcom/android/server/wm/RootWindowContainer;

    .line 58
    sget-boolean v0, Lcom/android/server/wm/OpWmInjector;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "OpWmInjector"

    const-string v1, "init mRwc on OpWmInjector"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    return-void
.end method

.method static synthetic lambda$getSysAlertWindowUids$1(Ljava/util/ArrayList;Lcom/android/server/wm/WindowState;)V
    .locals 2
    .param p0, "uids"    # Ljava/util/ArrayList;
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 106
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/android/server/wm/WindowState;->mAppOp:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/android/server/wm/WindowState;->mAppOp:I

    .line 109
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SYSTEM_ALERT_WINDOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_0

    .line 111
    iget v0, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_0
    return-void
.end method

.method static synthetic lambda$getSysAlertWindowUidsForScreenOff$2(Ljava/util/ArrayList;Lcom/android/server/wm/WindowState;)V
    .locals 2
    .param p0, "uids"    # Ljava/util/ArrayList;
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 132
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/android/server/wm/WindowState;->mAppOp:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/android/server/wm/WindowState;->mAppOp:I

    .line 135
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SYSTEM_ALERT_WINDOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_0

    .line 137
    iget v0, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_0
    return-void
.end method

.method static synthetic lambda$getVisibleWindowUids$0(Ljava/util/ArrayList;Lcom/android/server/wm/WindowState;)V
    .locals 2
    .param p0, "uids"    # Ljava/util/ArrayList;
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 85
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 86
    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfaceController;->getShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_0

    .line 88
    iget v0, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_0
    return-void
.end method

.method public static topActivitySingleInstance(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 150
    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
