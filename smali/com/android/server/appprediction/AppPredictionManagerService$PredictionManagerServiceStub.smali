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

    .line 107
    iput-object p1, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->this$0:Lcom/android/server/appprediction/AppPredictionManagerService;

    invoke-direct {p0}, Landroid/app/prediction/IPredictionManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/appprediction/AppPredictionManagerService;Lcom/android/server/appprediction/AppPredictionManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/appprediction/AppPredictionManagerService;
    .param p2, "x1"    # Lcom/android/server/appprediction/AppPredictionManagerService$1;

    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;-><init>(Lcom/android/server/appprediction/AppPredictionManagerService;)V

    return-void
.end method

.method static synthetic lambda$createPredictionSession$0(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;Lcom/android/server/appprediction/AppPredictionPerUserService;)V
    .locals 0
    .param p0, "context"    # Landroid/app/prediction/AppPredictionContext;
    .param p1, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p2, "service"    # Lcom/android/server/appprediction/AppPredictionPerUserService;

    .line 113
    invoke-virtual {p2, p0, p1}, Lcom/android/server/appprediction/AppPredictionPerUserService;->onCreatePredictionSessionLocked(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;)V

    return-void
.end method

.method static synthetic lambda$notifyAppTargetEvent$1(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;Lcom/android/server/appprediction/AppPredictionPerUserService;)V
    .locals 0
    .param p0, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p1, "event"    # Landroid/app/prediction/AppTargetEvent;
    .param p2, "service"    # Lcom/android/server/appprediction/AppPredictionPerUserService;

    .line 120
    invoke-virtual {p2, p0, p1}, Lcom/android/server/appprediction/AppPredictionPerUserService;->notifyAppTargetEventLocked(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;)V

    return-void
.end method

.method static synthetic lambda$notifyLaunchLocationShown$2(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Lcom/android/server/appprediction/AppPredictionPerUserService;)V
    .locals 0
    .param p0, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p1, "launchLocation"    # Ljava/lang/String;
    .param p2, "targetIds"    # Landroid/content/pm/ParceledListSlice;
    .param p3, "service"    # Lcom/android/server/appprediction/AppPredictionPerUserService;

    .line 127
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/appprediction/AppPredictionPerUserService;->notifyLaunchLocationShownLocked(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    return-void
.end method

.method static synthetic lambda$onDestroyPredictionSession$7(Landroid/app/prediction/AppPredictionSessionId;Lcom/android/server/appprediction/AppPredictionPerUserService;)V
    .locals 0
    .param p0, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p1, "service"    # Lcom/android/server/appprediction/AppPredictionPerUserService;

    .line 160
    invoke-virtual {p1, p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->onDestroyPredictionSessionLocked(Landroid/app/prediction/AppPredictionSessionId;)V

    return-void
.end method

.method static synthetic lambda$registerPredictionUpdates$4(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;Lcom/android/server/appprediction/AppPredictionPerUserService;)V
    .locals 0
    .param p0, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p1, "callback"    # Landroid/app/prediction/IPredictionCallback;
    .param p2, "service"    # Lcom/android/server/appprediction/AppPredictionPerUserService;

    .line 142
    invoke-virtual {p2, p0, p1}, Lcom/android/server/appprediction/AppPredictionPerUserService;->registerPredictionUpdatesLocked(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    return-void
.end method

.method static synthetic lambda$requestPredictionUpdate$6(Landroid/app/prediction/AppPredictionSessionId;Lcom/android/server/appprediction/AppPredictionPerUserService;)V
    .locals 0
    .param p0, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p1, "service"    # Lcom/android/server/appprediction/AppPredictionPerUserService;

    .line 154
    invoke-virtual {p1, p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->requestPredictionUpdateLocked(Landroid/app/prediction/AppPredictionSessionId;)V

    return-void
.end method

.method static synthetic lambda$sortAppTargets$3(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;Lcom/android/server/appprediction/AppPredictionPerUserService;)V
    .locals 0
    .param p0, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p1, "targets"    # Landroid/content/pm/ParceledListSlice;
    .param p2, "callback"    # Landroid/app/prediction/IPredictionCallback;
    .param p3, "service"    # Lcom/android/server/appprediction/AppPredictionPerUserService;

    .line 135
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/appprediction/AppPredictionPerUserService;->sortAppTargetsLocked(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V

    return-void
.end method

.method static synthetic lambda$unregisterPredictionUpdates$5(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;Lcom/android/server/appprediction/AppPredictionPerUserService;)V
    .locals 0
    .param p0, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p1, "callback"    # Landroid/app/prediction/IPredictionCallback;
    .param p2, "service"    # Lcom/android/server/appprediction/AppPredictionPerUserService;

    .line 148
    invoke-virtual {p2, p0, p1}, Lcom/android/server/appprediction/AppPredictionPerUserService;->unregisterPredictionUpdatesLocked(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    return-void
.end method

.method private runForUserLocked(Ljava/lang/String;Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V
    .locals 9
    .param p1, "func"    # Ljava/lang/String;
    .param p2, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/prediction/AppPredictionSessionId;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/appprediction/AppPredictionPerUserService;",
            ">;)V"
        }
    .end annotation

    .line 174
    .local p3, "c":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/appprediction/AppPredictionPerUserService;>;"
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 175
    .local v0, "am":Landroid/app/ActivityManagerInternal;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 176
    invoke-virtual {p2}, Landroid/app/prediction/AppPredictionSessionId;->getUserId()I

    move-result v4

    .line 175
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 178
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->this$0:Lcom/android/server/appprediction/AppPredictionManagerService;

    invoke-virtual {v2}, Lcom/android/server/appprediction/AppPredictionManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 179
    .local v2, "ctx":Landroid/content/Context;
    const-string v3, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->this$0:Lcom/android/server/appprediction/AppPredictionManagerService;

    .line 180
    invoke-static {v3}, Lcom/android/server/appprediction/AppPredictionManagerService;->access$100(Lcom/android/server/appprediction/AppPredictionManagerService;)Lcom/android/server/infra/ServiceNameResolver;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/android/server/infra/ServiceNameResolver;->isTemporary(I)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->this$0:Lcom/android/server/appprediction/AppPredictionManagerService;

    .line 181
    invoke-static {v3}, Lcom/android/server/appprediction/AppPredictionManagerService;->access$200(Lcom/android/server/appprediction/AppPredictionManagerService;)Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isCallerRecents(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " expected caller to hold PACKAGE_USAGE_STATS permission"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, "msg":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/appprediction/AppPredictionManagerService;->access$300()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v4, Ljava/lang/SecurityException;

    invoke-direct {v4, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 191
    .end local v3    # "msg":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 193
    .local v3, "origId":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->this$0:Lcom/android/server/appprediction/AppPredictionManagerService;

    invoke-static {v5}, Lcom/android/server/appprediction/AppPredictionManagerService;->access$400(Lcom/android/server/appprediction/AppPredictionManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 194
    :try_start_1
    iget-object v6, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->this$0:Lcom/android/server/appprediction/AppPredictionManagerService;

    invoke-static {v6, v1}, Lcom/android/server/appprediction/AppPredictionManagerService;->access$500(Lcom/android/server/appprediction/AppPredictionManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/appprediction/AppPredictionPerUserService;

    .line 195
    .local v6, "service":Lcom/android/server/appprediction/AppPredictionPerUserService;
    invoke-interface {p3, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 196
    .end local v6    # "service":Lcom/android/server/appprediction/AppPredictionPerUserService;
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 199
    nop

    .line 200
    return-void

    .line 196
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "am":Landroid/app/ActivityManagerInternal;
    .end local v1    # "userId":I
    .end local v2    # "ctx":Landroid/content/Context;
    .end local v3    # "origId":J
    .end local p0    # "this":Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;
    .end local p1    # "func":Ljava/lang/String;
    .end local p2    # "sessionId":Landroid/app/prediction/AppPredictionSessionId;
    .end local p3    # "c":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/appprediction/AppPredictionPerUserService;>;"
    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 198
    .restart local v0    # "am":Landroid/app/ActivityManagerInternal;
    .restart local v1    # "userId":I
    .restart local v2    # "ctx":Landroid/content/Context;
    .restart local v3    # "origId":J
    .restart local p0    # "this":Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;
    .restart local p1    # "func":Ljava/lang/String;
    .restart local p2    # "sessionId":Landroid/app/prediction/AppPredictionSessionId;
    .restart local p3    # "c":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/appprediction/AppPredictionPerUserService;>;"
    :catchall_1
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 199
    throw v5
.end method


# virtual methods
.method public createPredictionSession(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;)V
    .locals 2
    .param p1, "context"    # Landroid/app/prediction/AppPredictionContext;
    .param p2, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;

    .line 112
    new-instance v0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$NmwmTMZXXS4S7viVNKzU2genXA8;

    invoke-direct {v0, p1, p2}, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$NmwmTMZXXS4S7viVNKzU2genXA8;-><init>(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;)V

    const-string v1, "createPredictionSession"

    invoke-direct {p0, v1, p2, v0}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->runForUserLocked(Ljava/lang/String;Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    .line 114
    return-void
.end method

.method public notifyAppTargetEvent(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;)V
    .locals 2
    .param p1, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p2, "event"    # Landroid/app/prediction/AppTargetEvent;

    .line 119
    new-instance v0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$4yDhFef-19aMlJ-Y7O6RdjSAvnk;

    invoke-direct {v0, p1, p2}, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$4yDhFef-19aMlJ-Y7O6RdjSAvnk;-><init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;)V

    const-string/jumbo v1, "notifyAppTargetEvent"

    invoke-direct {p0, v1, p1, v0}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->runForUserLocked(Ljava/lang/String;Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    .line 121
    return-void
.end method

.method public notifyLaunchLocationShown(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    .locals 2
    .param p1, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p2, "launchLocation"    # Ljava/lang/String;
    .param p3, "targetIds"    # Landroid/content/pm/ParceledListSlice;

    .line 126
    new-instance v0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$vWB3PdxOOvPr7p0_NmoqXeH8Ros;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$vWB3PdxOOvPr7p0_NmoqXeH8Ros;-><init>(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    const-string/jumbo v1, "notifyLaunchLocationShown"

    invoke-direct {p0, v1, p1, v0}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->runForUserLocked(Ljava/lang/String;Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    .line 128
    return-void
.end method

.method public onDestroyPredictionSession(Landroid/app/prediction/AppPredictionSessionId;)V
    .locals 2
    .param p1, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;

    .line 159
    new-instance v0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$gV-NT40YbIbIqIJKiNGjlZGVJjc;

    invoke-direct {v0, p1}, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$gV-NT40YbIbIqIJKiNGjlZGVJjc;-><init>(Landroid/app/prediction/AppPredictionSessionId;)V

    const-string/jumbo v1, "onDestroyPredictionSession"

    invoke-direct {p0, v1, p1, v0}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->runForUserLocked(Ljava/lang/String;Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    .line 161
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

    .line 167
    new-instance v0, Lcom/android/server/appprediction/AppPredictionManagerServiceShellCommand;

    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->this$0:Lcom/android/server/appprediction/AppPredictionManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/appprediction/AppPredictionManagerServiceShellCommand;-><init>(Lcom/android/server/appprediction/AppPredictionManagerService;)V

    .line 168
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/appprediction/AppPredictionManagerServiceShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 169
    return-void
.end method

.method public registerPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V
    .locals 2
    .param p1, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p2, "callback"    # Landroid/app/prediction/IPredictionCallback;

    .line 141
    new-instance v0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$40EK4qcr-rG55ENTthOaXAXWDA4;

    invoke-direct {v0, p1, p2}, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$40EK4qcr-rG55ENTthOaXAXWDA4;-><init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    const-string/jumbo v1, "registerPredictionUpdates"

    invoke-direct {p0, v1, p1, v0}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->runForUserLocked(Ljava/lang/String;Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    .line 143
    return-void
.end method

.method public requestPredictionUpdate(Landroid/app/prediction/AppPredictionSessionId;)V
    .locals 2
    .param p1, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;

    .line 153
    new-instance v0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$vSY20eQq5y5FXrxhhqOTcEmezTs;

    invoke-direct {v0, p1}, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$vSY20eQq5y5FXrxhhqOTcEmezTs;-><init>(Landroid/app/prediction/AppPredictionSessionId;)V

    const-string/jumbo v1, "requestPredictionUpdate"

    invoke-direct {p0, v1, p1, v0}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->runForUserLocked(Ljava/lang/String;Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    .line 155
    return-void
.end method

.method public sortAppTargets(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V
    .locals 2
    .param p1, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p2, "targets"    # Landroid/content/pm/ParceledListSlice;
    .param p3, "callback"    # Landroid/app/prediction/IPredictionCallback;

    .line 134
    new-instance v0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$3-HMCieo6-UZfG43p_6ip1hrL0k;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$3-HMCieo6-UZfG43p_6ip1hrL0k;-><init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V

    const-string/jumbo v1, "sortAppTargets"

    invoke-direct {p0, v1, p1, v0}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->runForUserLocked(Ljava/lang/String;Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    .line 136
    return-void
.end method

.method public unregisterPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V
    .locals 2
    .param p1, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p2, "callback"    # Landroid/app/prediction/IPredictionCallback;

    .line 147
    new-instance v0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$s2vrDOHz5x1TW_6jMihxp1iCAvg;

    invoke-direct {v0, p1, p2}, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$s2vrDOHz5x1TW_6jMihxp1iCAvg;-><init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    const-string/jumbo v1, "unregisterPredictionUpdates"

    invoke-direct {p0, v1, p1, v0}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->runForUserLocked(Ljava/lang/String;Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    .line 149
    return-void
.end method
