.class Lcom/android/server/wm/ActivityRecord$AddStartingWindow;
.super Ljava/lang/Object;
.source "ActivityRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddStartingWindow"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 2071
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "x1"    # Lcom/android/server/wm/ActivityRecord$1;

    .line 2071
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 2077
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2079
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2081
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_1

    .line 2083
    sget-boolean v1, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    sget-object v5, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/server/wm/ProtoLogGroup;

    const v6, 0x6d726936

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v4

    invoke-static {v5, v6, v4, v3, v2}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2086
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2088
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 2089
    .local v1, "startingData":Lcom/android/server/wm/StartingData;
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2091
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    const/4 v5, 0x2

    if-eqz v0, :cond_2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam1":Ljava/lang/String;
    sget-object v7, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/server/wm/ProtoLogGroup;

    const v8, 0x6728e9b

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v0, v9, v4

    aput-object v6, v9, v2

    invoke-static {v7, v8, v4, v3, v9}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2096
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v6    # "protoLogParam1":Ljava/lang/String;
    :cond_2
    sget-boolean v0, Landroid/os/Build;->AUTO_TEST_ONEPLUS:Z

    if-eqz v0, :cond_3

    .line 2097
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " WMS: ADD_STARTING "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "APP_LAUNCH"

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2101
    :cond_3
    const/4 v0, 0x0

    .line 2103
    .local v0, "surface":Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
    :try_start_2
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v6}, Lcom/android/server/wm/StartingData;->createStartingSurface(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v6

    .line 2106
    goto :goto_0

    .line 2104
    :catch_0
    move-exception v6

    .line 2105
    .local v6, "e":Ljava/lang/Exception;
    const-string v7, "ActivityTaskManager"

    const-string v8, "Exception when adding starting window"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2107
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v0, :cond_8

    .line 2108
    const/4 v6, 0x0

    .line 2109
    .local v6, "abort":Z
    iget-object v7, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v7

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2111
    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-nez v8, :cond_5

    .line 2112
    sget-boolean v8, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .local v8, "protoLogParam0":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    iget-object v9, v9, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .local v9, "protoLogParam1":Ljava/lang/String;
    sget-object v10, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/server/wm/ProtoLogGroup;

    const v11, 0x6ca66349

    new-array v12, v5, [Ljava/lang/Object;

    aput-object v8, v12, v4

    aput-object v9, v12, v2

    invoke-static {v10, v11, v4, v3, v12}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2115
    .end local v8    # "protoLogParam0":Ljava/lang/String;
    .end local v9    # "protoLogParam1":Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    iput-object v3, v8, Lcom/android/server/wm/ActivityRecord;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 2116
    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    iput-object v3, v8, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 2117
    const/4 v6, 0x1

    goto :goto_1

    .line 2119
    :cond_5
    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, v8, Lcom/android/server/wm/ActivityRecord;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    .line 2121
    :goto_1
    if-nez v6, :cond_6

    .line 2122
    sget-boolean v8, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "protoLogParam0":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    iget-object v9, v9, Lcom/android/server/wm/ActivityRecord;->startingWindow:Lcom/android/server/wm/WindowState;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "protoLogParam1":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    iget-object v10, v10, Lcom/android/server/wm/ActivityRecord;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .local v10, "protoLogParam2":Ljava/lang/String;
    sget-object v11, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/server/wm/ProtoLogGroup;

    const v12, -0x4d0762a6

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v8, v13, v4

    aput-object v9, v13, v2

    aput-object v10, v13, v5

    invoke-static {v11, v12, v4, v3, v13}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2126
    .end local v8    # "protoLogParam0":Ljava/lang/String;
    .end local v9    # "protoLogParam1":Ljava/lang/String;
    .end local v10    # "protoLogParam2":Ljava/lang/String;
    :cond_6
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2127
    if-eqz v6, :cond_7

    .line 2128
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;->remove()V

    .line 2130
    .end local v6    # "abort":Z
    :cond_7
    goto :goto_2

    .line 2126
    .restart local v6    # "abort":Z
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 2131
    .end local v6    # "abort":Z
    :cond_8
    sget-boolean v5, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam0":Ljava/lang/String;
    sget-object v6, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/server/wm/ProtoLogGroup;

    const v7, 0x4ac4af81    # 6444992.5f

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v5, v2, v4

    invoke-static {v6, v7, v4, v3, v2}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2134
    .end local v5    # "protoLogParam0":Ljava/lang/String;
    :cond_9
    :goto_2
    return-void

    .line 2089
    .end local v0    # "surface":Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
    .end local v1    # "startingData":Lcom/android/server/wm/StartingData;
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
