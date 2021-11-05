.class Lcom/android/server/wm/WindowManagerService$4;
.super Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/WindowManagerService;

    .line 1105
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppTransitionCancelledLocked(I)V
    .locals 0
    .param p1, "transit"    # I

    .line 1109
    return-void
.end method

.method public onAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1113
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getActivityRecord(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1114
    .local v0, "atoken":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_0

    .line 1115
    return-void

    .line 1121
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 1122
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/RecentsAnimationController;->isTargetApp(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 1123
    .local v1, "isRecentsAnimationTarget":Z
    :goto_0
    iget-boolean v3, v0, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v3, :cond_2

    if-nez v1, :cond_2

    .line 1125
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    invoke-interface {v3, v4}, Landroid/app/IActivityTaskManager;->notifyLaunchTaskBehindComplete(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1127
    goto :goto_1

    .line 1126
    :catch_0
    move-exception v3

    .line 1128
    :goto_1
    iput-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    goto :goto_2

    .line 1130
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->updateReportedVisibilityLocked()V

    .line 1133
    iget-boolean v3, v0, Lcom/android/server/wm/ActivityRecord;->mEnteringAnimation:Z

    if-eqz v3, :cond_4

    if-nez v1, :cond_4

    .line 1134
    iput-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->mEnteringAnimation:Z

    .line 1138
    :try_start_1
    sget-boolean v2, Landroid/os/Build;->AUTO_TEST_ONEPLUS:Z

    if-eqz v2, :cond_3

    .line 1139
    const-string v2, "APP_LAUNCH"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " WMS: onAppTransitionFinishedLocked "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    invoke-interface {v2, v3}, Landroid/app/IActivityTaskManager;->notifyEnterAnimationComplete(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1144
    goto :goto_2

    .line 1143
    :catch_1
    move-exception v2

    .line 1147
    :cond_4
    :goto_2
    return-void
.end method
