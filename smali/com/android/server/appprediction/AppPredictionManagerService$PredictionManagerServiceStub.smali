.class Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;
.super Landroid/app/prediction/IPredictionManager$Stub;
.source "AppPredictionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appprediction/AppPredictionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PredictionManagerServiceStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appprediction/AppPredictionManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/appprediction/AppPredictionManagerService;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->this$0:Lcom/android/server/appprediction/AppPredictionManagerService;

    invoke-direct {p0}, Landroid/app/prediction/IPredictionManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/appprediction/AppPredictionManagerService;Lcom/android/server/appprediction/AppPredictionManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/appprediction/AppPredictionManagerService;
    .param p2, "x1"    # Lcom/android/server/appprediction/AppPredictionManagerService$1;

    .line 88
    invoke-direct {p0, p1}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;-><init>(Lcom/android/server/appprediction/AppPredictionManagerService;)V

    return-void
.end method

.method static synthetic lambda$createPredictionSession$0(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;Lcom/android/server/appprediction/AppPredictionPerUserService;)V
    .locals 0
    .param p0, "context"    # Landroid/app/prediction/AppPredictionContext;
    .param p1, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p2, "service"    # Lcom/android/server/appprediction/AppPredictionPerUserService;

    .line 94
    invoke-virtual {p2, p0, p1}, Lcom/android/server/appprediction/AppPredictionPerUserService;->onCreatePredictionSessionLocked(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;)V

    return-void
.end method

.method static synthetic lambda$notifyAppTargetEvent$1(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;Lcom/android/server/appprediction/AppPredictionPerUserService;)V
    .locals 0
    .param p0, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p1, "event"    # Landroid/app/prediction/AppTargetEvent;
    .param p2, "service"    # Lcom/android/server/appprediction/AppPredictionPerUserService;

    .line 101
    invoke-virtual {p2, p0, p1}, Lcom/android/server/appprediction/AppPredictionPerUserService;->notifyAppTargetEventLocked(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;)V

    return-void
.end method

.method static synthetic lambda$notifyLaunchLocationShown$2(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Lcom/android/server/appprediction/AppPredictionPerUserService;)V
    .locals 0
    .param p0, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p1, "launchLocation"    # Ljava/lang/String;
    .param p2, "targetIds"    # Landroid/content/pm/ParceledListSlice;
    .param p3, "service"    # Lcom/android/server/appprediction/AppPredictionPerUserService;

    .line 108
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/appprediction/AppPredictionPerUserService;->notifyLaunchLocationShownLocked(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    return-void
.end method

.method static synthetic lambda$onDestroyPredictionSession$7(Landroid/app/prediction/AppPredictionSessionId;Lcom/android/server/appprediction/AppPredictionPerUserService;)V
    .locals 0
    .param p0, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p1, "service"    # Lcom/android/server/appprediction/AppPredictionPerUserService;

    .line 141
    invoke-virtual {p1, p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->onDestroyPredictionSessionLocked(Landroid/app/prediction/AppPredictionSessionId;)V

    return-void
.end method

.method static synthetic lambda$registerPredictionUpdates$4(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;Lcom/android/server/appprediction/AppPredictionPerUserService;)V
    .locals 0
    .param p0, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p1, "callback"    # Landroid/app/prediction/IPredictionCallback;
    .param p2, "service"    # Lcom/android/server/appprediction/AppPredictionPerUserService;

    .line 123
    invoke-virtual {p2, p0, p1}, Lcom/android/server/appprediction/AppPredictionPerUserService;->registerPredictionUpdatesLocked(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    return-void
.end method

.method static synthetic lambda$requestPredictionUpdate$6(Landroid/app/prediction/AppPredictionSessionId;Lcom/android/server/appprediction/AppPredictionPerUserService;)V
    .locals 0
    .param p0, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p1, "service"    # Lcom/android/server/appprediction/AppPredictionPerUserService;

    .line 135
    invoke-virtual {p1, p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->requestPredictionUpdateLocked(Landroid/app/prediction/AppPredictionSessionId;)V

    return-void
.end method

.method static synthetic lambda$sortAppTargets$3(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;Lcom/android/server/appprediction/AppPredictionPerUserService;)V
    .locals 0
    .param p0, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p1, "targets"    # Landroid/content/pm/ParceledListSlice;
    .param p2, "callback"    # Landroid/app/prediction/IPredictionCallback;
    .param p3, "service"    # Lcom/android/server/appprediction/AppPredictionPerUserService;

    .line 116
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/appprediction/AppPredictionPerUserService;->sortAppTargetsLocked(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V

    return-void
.end method

.method static synthetic lambda$unregisterPredictionUpdates$5(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;Lcom/android/server/appprediction/AppPredictionPerUserService;)V
    .locals 0
    .param p0, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p1, "callback"    # Landroid/app/prediction/IPredictionCallback;
    .param p2, "service"    # Lcom/android/server/appprediction/AppPredictionPerUserService;

    .line 129
    invoke-virtual {p2, p0, p1}, Lcom/android/server/appprediction/AppPredictionPerUserService;->unregisterPredictionUpdatesLocked(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    return-void
.end method

.method private runForUserLocked(Ljava/lang/String;Ljava/util/function/Consumer;)V
    .locals 6
    .param p1, "func"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/appprediction/AppPredictionPerUserService;",
            ">;)V"
        }
    .end annotation

    .line 154
    .local p2, "c":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/appprediction/AppPredictionPerUserService;>;"
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 156
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->this$0:Lcom/android/server/appprediction/AppPredictionManagerService;

    invoke-virtual {v1}, Lcom/android/server/appprediction/AppPredictionManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 159
    .local v1, "ctx":Landroid/content/Context;
    const-string v2, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->this$0:Lcom/android/server/appprediction/AppPredictionManagerService;

    .line 163
    invoke-static {v2}, Lcom/android/server/appprediction/AppPredictionManagerService;->access$100(Lcom/android/server/appprediction/AppPredictionManagerService;)Lcom/android/server/infra/ServiceNameResolver;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/server/infra/ServiceNameResolver;->isTemporary(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->this$0:Lcom/android/server/appprediction/AppPredictionManagerService;

    .line 164
    invoke-static {v2}, Lcom/android/server/appprediction/AppPredictionManagerService;->access$200(Lcom/android/server/appprediction/AppPredictionManagerService;)Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isCallerRecents(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " expected caller to hold PACKAGE_USAGE_STATS permission"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "msg":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/appprediction/AppPredictionManagerService;->access$300()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 174
    .end local v2    # "msg":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 176
    .local v2, "origId":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->this$0:Lcom/android/server/appprediction/AppPredictionManagerService;

    invoke-static {v4}, Lcom/android/server/appprediction/AppPredictionManagerService;->access$400(Lcom/android/server/appprediction/AppPredictionManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 177
    :try_start_1
    iget-object v5, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->this$0:Lcom/android/server/appprediction/AppPredictionManagerService;

    invoke-static {v5, v0}, Lcom/android/server/appprediction/AppPredictionManagerService;->access$500(Lcom/android/server/appprediction/AppPredictionManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/appprediction/AppPredictionPerUserService;

    .line 178
    .local v5, "service":Lcom/android/server/appprediction/AppPredictionPerUserService;
    invoke-interface {p2, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 179
    .end local v5    # "service":Lcom/android/server/appprediction/AppPredictionPerUserService;
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 182
    nop

    .line 183
    return-void

    .line 179
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "userId":I
    .end local v1    # "ctx":Landroid/content/Context;
    .end local v2    # "origId":J
    .end local p0    # "this":Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;
    .end local p1    # "func":Ljava/lang/String;
    .end local p2    # "c":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/appprediction/AppPredictionPerUserService;>;"
    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 181
    .restart local v0    # "userId":I
    .restart local v1    # "ctx":Landroid/content/Context;
    .restart local v2    # "origId":J
    .restart local p0    # "this":Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;
    .restart local p1    # "func":Ljava/lang/String;
    .restart local p2    # "c":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/appprediction/AppPredictionPerUserService;>;"
    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method


# virtual methods
.method public createPredictionSession(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;)V
    .locals 2
    .param p1, "context"    # Landroid/app/prediction/AppPredictionContext;
    .param p2, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;

    .line 93
    new-instance v0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$NmwmTMZXXS4S7viVNKzU2genXA8;

    invoke-direct {v0, p1, p2}, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$NmwmTMZXXS4S7viVNKzU2genXA8;-><init>(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;)V

    const-string v1, "createPredictionSession"

    invoke-direct {p0, v1, v0}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->runForUserLocked(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 95
    return-void
.end method

.method public notifyAppTargetEvent(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;)V
    .locals 2
    .param p1, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p2, "event"    # Landroid/app/prediction/AppTargetEvent;

    .line 100
    new-instance v0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$4yDhFef-19aMlJ-Y7O6RdjSAvnk;

    invoke-direct {v0, p1, p2}, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$4yDhFef-19aMlJ-Y7O6RdjSAvnk;-><init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;)V

    const-string/jumbo v1, "notifyAppTargetEvent"

    invoke-direct {p0, v1, v0}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->runForUserLocked(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 102
    return-void
.end method

.method public notifyLaunchLocationShown(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    .locals 2
    .param p1, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p2, "launchLocation"    # Ljava/lang/String;
    .param p3, "targetIds"    # Landroid/content/pm/ParceledListSlice;

    .line 107
    new-instance v0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$vWB3PdxOOvPr7p0_NmoqXeH8Ros;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$vWB3PdxOOvPr7p0_NmoqXeH8Ros;-><init>(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    const-string/jumbo v1, "notifyLaunchLocationShown"

    invoke-direct {p0, v1, v0}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->runForUserLocked(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 109
    return-void
.end method

.method public onDestroyPredictionSession(Landroid/app/prediction/AppPredictionSessionId;)V
    .locals 2
    .param p1, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;

    .line 140
    new-instance v0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$gV-NT40YbIbIqIJKiNGjlZGVJjc;

    invoke-direct {v0, p1}, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$gV-NT40YbIbIqIJKiNGjlZGVJjc;-><init>(Landroid/app/prediction/AppPredictionSessionId;)V

    const-string/jumbo v1, "onDestroyPredictionSession"

    invoke-direct {p0, v1, v0}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->runForUserLocked(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 142
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 148
    new-instance v0, Lcom/android/server/appprediction/AppPredictionManagerServiceShellCommand;

    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->this$0:Lcom/android/server/appprediction/AppPredictionManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/appprediction/AppPredictionManagerServiceShellCommand;-><init>(Lcom/android/server/appprediction/AppPredictionManagerService;)V

    .line 149
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/appprediction/AppPredictionManagerServiceShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 150
    return-void
.end method

.method public registerPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V
    .locals 2
    .param p1, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p2, "callback"    # Landroid/app/prediction/IPredictionCallback;

    .line 122
    new-instance v0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$40EK4qcr-rG55ENTthOaXAXWDA4;

    invoke-direct {v0, p1, p2}, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$40EK4qcr-rG55ENTthOaXAXWDA4;-><init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    const-string/jumbo v1, "registerPredictionUpdates"

    invoke-direct {p0, v1, v0}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->runForUserLocked(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 124
    return-void
.end method

.method public requestPredictionUpdate(Landroid/app/prediction/AppPredictionSessionId;)V
    .locals 2
    .param p1, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;

    .line 134
    new-instance v0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$vSY20eQq5y5FXrxhhqOTcEmezTs;

    invoke-direct {v0, p1}, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$vSY20eQq5y5FXrxhhqOTcEmezTs;-><init>(Landroid/app/prediction/AppPredictionSessionId;)V

    const-string/jumbo v1, "requestPredictionUpdate"

    invoke-direct {p0, v1, v0}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->runForUserLocked(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 136
    return-void
.end method

.method public sortAppTargets(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V
    .locals 2
    .param p1, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p2, "targets"    # Landroid/content/pm/ParceledListSlice;
    .param p3, "callback"    # Landroid/app/prediction/IPredictionCallback;

    .line 115
    new-instance v0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$3-HMCieo6-UZfG43p_6ip1hrL0k;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$3-HMCieo6-UZfG43p_6ip1hrL0k;-><init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V

    const-string/jumbo v1, "sortAppTargets"

    invoke-direct {p0, v1, v0}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->runForUserLocked(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 117
    return-void
.end method

.method public unregisterPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V
    .locals 2
    .param p1, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p2, "callback"    # Landroid/app/prediction/IPredictionCallback;

    .line 128
    new-instance v0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$s2vrDOHz5x1TW_6jMihxp1iCAvg;

    invoke-direct {v0, p1, p2}, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$s2vrDOHz5x1TW_6jMihxp1iCAvg;-><init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    const-string/jumbo v1, "unregisterPredictionUpdates"

    invoke-direct {p0, v1, v0}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->runForUserLocked(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 130
    return-void
.end method
