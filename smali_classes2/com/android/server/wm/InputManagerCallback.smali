.class final Lcom/android/server/wm/InputManagerCallback;
.super Ljava/lang/Object;
.source "InputManagerCallback.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;


# static fields
.field private static final PRE_DUMP_MIN_INTERVAL_MS:J

.field private static final PRE_DUMP_MONITOR_TIMEOUT_MS:J

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private mFocusedWindow:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/view/IWindow;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusedWindowHasCapture:Z

.field private mInputDevicesReady:Z

.field private final mInputDevicesReadyMonitor:Ljava/lang/Object;

.field private mInputDispatchEnabled:Z

.field private mInputDispatchFrozen:Z

.field private mInputFreezeReason:Ljava/lang/String;

.field private volatile mLastPreDumpTimeMs:J

.field private final mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 46
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/wm/InputManagerCallback;->PRE_DUMP_MIN_INTERVAL_MS:J

    .line 48
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/wm/InputManagerCallback;->PRE_DUMP_MONITOR_TIMEOUT_MS:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputFreezeReason:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mFocusedWindow:Ljava/util/concurrent/atomic/AtomicReference;

    .line 78
    iput-object p1, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 79
    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .line 42
    sget-wide v0, Lcom/android/server/wm/InputManagerCallback;->PRE_DUMP_MONITOR_TIMEOUT_MS:J

    return-wide v0
.end method

.method private dispatchPointerCaptureChanged(Landroid/view/IWindow;Z)Z
    .locals 1
    .param p1, "focusedWindow"    # Landroid/view/IWindow;
    .param p2, "enabled"    # Z

    .line 449
    iget-boolean v0, p0, Lcom/android/server/wm/InputManagerCallback;->mFocusedWindowHasCapture:Z

    if-eq v0, p2, :cond_0

    .line 450
    iput-boolean p2, p0, Lcom/android/server/wm/InputManagerCallback;->mFocusedWindowHasCapture:Z

    .line 452
    :try_start_0
    invoke-interface {p1, p2}, Landroid/view/IWindow;->dispatchPointerCaptureChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    goto :goto_0

    .line 453
    :catch_0
    move-exception v0

    .line 456
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 458
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isWindowAboveSystem(Lcom/android/server/wm/WindowState;)Z
    .locals 3
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;

    .line 283
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mOwnerCanAddInternalSystemWindow:Z

    const/16 v2, 0x7f6

    invoke-interface {v0, v2, v1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result v0

    .line 285
    .local v0, "systemAlertLayer":I
    iget v1, p1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-le v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private notifyANRInner(Landroid/view/InputApplicationHandle;Landroid/os/IBinder;Ljava/lang/String;)J
    .locals 9
    .param p1, "inputApplicationHandle"    # Landroid/view/InputApplicationHandle;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "reason"    # Ljava/lang/String;

    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, "activity":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    .line 196
    .local v1, "windowState":Lcom/android/server/wm/WindowState;
    const/4 v2, 0x0

    .line 197
    .local v2, "aboveSystem":Z
    const/4 v3, -0x1

    .line 199
    .local v3, "windowPid":I
    invoke-direct {p0}, Lcom/android/server/wm/InputManagerCallback;->preDumpIfLockTooSlow()V

    .line 202
    iget-object v4, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 205
    if-eqz p2, :cond_0

    .line 206
    iget-object v5, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mInputToWindowMap:Ljava/util/HashMap;

    invoke-virtual {v5, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    move-object v1, v5

    .line 207
    if-eqz v1, :cond_0

    .line 208
    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    move-object v0, v5

    .line 209
    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v5, v5, Lcom/android/server/wm/Session;->mPid:I

    move v3, v5

    .line 213
    invoke-direct {p0, v1}, Lcom/android/server/wm/InputManagerCallback;->isWindowAboveSystem(Lcom/android/server/wm/WindowState;)Z

    move-result v5

    move v2, v5

    .line 218
    :cond_0
    if-eqz p2, :cond_2

    if-nez v1, :cond_2

    .line 219
    iget-object v5, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mEmbeddedWindowController:Lcom/android/server/wm/EmbeddedWindowController;

    invoke-virtual {v5, p2}, Lcom/android/server/wm/EmbeddedWindowController;->get(Landroid/os/IBinder;)Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    move-result-object v5

    .line 220
    .local v5, "embeddedWindow":Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    if-eqz v5, :cond_2

    .line 221
    iget v6, v5, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerPid:I

    move v3, v6

    .line 222
    iget-object v6, v5, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    .line 223
    .local v6, "hostWindowState":Lcom/android/server/wm/WindowState;
    if-nez v6, :cond_1

    .line 226
    const/4 v2, 0x1

    goto :goto_0

    .line 228
    :cond_1
    invoke-direct {p0, v6}, Lcom/android/server/wm/InputManagerCallback;->isWindowAboveSystem(Lcom/android/server/wm/WindowState;)Z

    move-result v7

    move v2, v7

    .line 236
    .end local v5    # "embeddedWindow":Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    .end local v6    # "hostWindowState":Lcom/android/server/wm/WindowState;
    :cond_2
    :goto_0
    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 237
    iget-object v5, p1, Landroid/view/InputApplicationHandle;->token:Landroid/os/IBinder;

    invoke-static {v5}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    move-object v0, v5

    .line 240
    :cond_3
    if-eqz v1, :cond_4

    .line 241
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Input event dispatching timed out sending to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 242
    invoke-virtual {v7}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ".  Reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 241
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 244
    :cond_4
    if-eqz v0, :cond_5

    .line 245
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Input event dispatching timed out sending to application "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/wm/ActivityRecord;->stringName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".  Reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 249
    :cond_5
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Input event dispatching timed out .  Reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :goto_1
    iget-object v5, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v0, v1, p3}, Lcom/android/server/wm/WindowManagerService;->saveANRStateLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowState;Ljava/lang/String;)V

    .line 254
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 257
    iget-object v4, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v4, p3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->saveANRState(Ljava/lang/String;)V

    .line 259
    const-wide/16 v4, 0x0

    if-eqz v0, :cond_7

    iget-object v6, v0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    if-eqz v6, :cond_7

    .line 262
    invoke-virtual {v0, p3, v3}, Lcom/android/server/wm/ActivityRecord;->keyDispatchingTimedOut(Ljava/lang/String;I)Z

    move-result v6

    .line 263
    .local v6, "abort":Z
    if-nez v6, :cond_6

    .line 266
    iget-wide v4, v0, Lcom/android/server/wm/ActivityRecord;->mInputDispatchingTimeoutNanos:J

    return-wide v4

    .line 263
    .end local v6    # "abort":Z
    :cond_6
    goto :goto_2

    .line 268
    :cond_7
    if-nez v1, :cond_9

    const/4 v6, -0x1

    if-eq v3, v6, :cond_8

    goto :goto_3

    :cond_8
    :goto_2
    goto :goto_4

    .line 271
    :cond_9
    :goto_3
    iget-object v6, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v6, v3, v2, p3}, Landroid/app/ActivityManagerInternal;->inputDispatchingTimedOut(IZLjava/lang/String;)J

    move-result-wide v6

    .line 273
    .local v6, "timeout":J
    cmp-long v8, v6, v4

    if-ltz v8, :cond_a

    .line 276
    const-wide/32 v4, 0xf4240

    mul-long/2addr v4, v6

    return-wide v4

    .line 279
    .end local v6    # "timeout":J
    :cond_a
    :goto_4
    return-wide v4

    .line 254
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v5
.end method

.method private preDumpIfLockTooSlow()V
    .locals 19

    .line 109
    move-object/from16 v9, p0

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_0

    .line 110
    return-void

    .line 112
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 113
    .local v10, "now":J
    iget-wide v0, v9, Lcom/android/server/wm/InputManagerCallback;->mLastPreDumpTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-wide v0, v9, Lcom/android/server/wm/InputManagerCallback;->mLastPreDumpTimeMs:J

    sub-long v0, v10, v0

    sget-wide v2, Lcom/android/server/wm/InputManagerCallback;->PRE_DUMP_MIN_INTERVAL_MS:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 114
    return-void

    .line 117
    :cond_1
    const/4 v12, 0x1

    new-array v0, v12, [Z

    const/4 v13, 0x0

    aput-boolean v12, v0, v13

    move-object v14, v0

    .line 118
    .local v14, "shouldDumpSf":[Z
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v15, v0

    .line 119
    .local v15, "monitors":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Runnable;>;"
    iget-object v0, v9, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$TDUtW_T9flkdwvGQ9AliNjGyzdY;

    invoke-direct {v1, v0}, Lcom/android/server/wm/-$$Lambda$TDUtW_T9flkdwvGQ9AliNjGyzdY;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    const-string v8, "WindowManager"

    invoke-virtual {v15, v8, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, v9, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$Pl4__K9hqf4p4lme99AnaMrbXe0;

    invoke-direct {v1, v0}, Lcom/android/server/wm/-$$Lambda$Pl4__K9hqf4p4lme99AnaMrbXe0;-><init>(Landroid/app/ActivityManagerInternal;)V

    const-string v0, "ActivityManager"

    invoke-virtual {v15, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v7, v0

    .line 123
    .local v7, "latch":Ljava/util/concurrent/CountDownLatch;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 124
    invoke-virtual {v15, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Ljava/lang/String;

    .line 125
    .local v16, "name":Ljava/lang/String;
    invoke-virtual {v15, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Ljava/lang/Runnable;

    .line 128
    .local v17, "monitor":Ljava/lang/Runnable;
    new-instance v18, Lcom/android/server/wm/InputManagerCallback$1;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-object/from16 v3, v17

    move-object v4, v7

    move-wide v5, v10

    move-object v13, v7

    .end local v7    # "latch":Ljava/util/concurrent/CountDownLatch;
    .local v13, "latch":Ljava/util/concurrent/CountDownLatch;
    move-object/from16 v7, v16

    move-object v12, v8

    move-object v8, v14

    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/InputManagerCallback$1;-><init>(Lcom/android/server/wm/InputManagerCallback;Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;JLjava/lang/String;[Z)V

    .line 142
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/InputManagerCallback$1;->start()V

    .line 123
    .end local v16    # "name":Ljava/lang/String;
    .end local v17    # "monitor":Ljava/lang/Runnable;
    add-int/lit8 v0, v0, 0x1

    move-object v8, v12

    move-object v7, v13

    const/4 v12, 0x1

    const/4 v13, 0x0

    goto :goto_0

    .end local v13    # "latch":Ljava/util/concurrent/CountDownLatch;
    .restart local v7    # "latch":Ljava/util/concurrent/CountDownLatch;
    :cond_2
    move-object v13, v7

    move-object v12, v8

    .line 145
    .end local v0    # "i":I
    .end local v7    # "latch":Ljava/util/concurrent/CountDownLatch;
    .restart local v13    # "latch":Ljava/util/concurrent/CountDownLatch;
    :try_start_0
    sget-wide v0, Lcom/android/server/wm/InputManagerCallback;->PRE_DUMP_MONITOR_TIMEOUT_MS:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v13, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    .line 146
    return-void

    .line 148
    :catch_0
    move-exception v0

    :cond_3
    nop

    .line 149
    iput-wide v10, v9, Lcom/android/server/wm/InputManagerCallback;->mLastPreDumpTimeMs:J

    .line 150
    const-string v0, "Pre-dump for unresponsive"

    invoke-static {v12, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 153
    .local v0, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    const/4 v1, 0x0

    .line 155
    .local v1, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    aget-boolean v3, v14, v2

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 156
    const-string v3, "/system/bin/surfaceflinger"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v3

    goto :goto_1

    .line 157
    :cond_4
    move-object v3, v4

    :goto_1
    nop

    .line 158
    .local v3, "pids":[I
    if-eqz v3, :cond_5

    .line 159
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v5

    .line 160
    array-length v5, v3

    :goto_2
    if-ge v2, v5, :cond_5

    aget v6, v3, v2

    .line 161
    .local v6, "pid":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .end local v6    # "pid":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 165
    :cond_5
    invoke-static {v0, v4, v4, v1, v4}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/io/StringWriter;)Ljava/io/File;

    move-result-object v2

    .line 168
    .local v2, "tracesFile":Ljava/io/File;
    if-eqz v2, :cond_6

    .line 169
    new-instance v4, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_pre"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 171
    :cond_6
    return-void
.end method

.method private updateInputDispatchModeLw()V
    .locals 3

    .line 519
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-boolean v1, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDispatchEnabled:Z

    iget-boolean v2, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDispatchFrozen:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->setInputDispatchMode(ZZ)V

    .line 520
    return-void
.end method


# virtual methods
.method public dispatchUnhandledKey(Landroid/os/IBinder;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 1
    .param p1, "focusedToken"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .line 351
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->dispatchUnhandledKey(Landroid/os/IBinder;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 523
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputFreezeReason:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mInputFreezeReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/InputManagerCallback;->mInputFreezeReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 526
    :cond_0
    return-void
.end method

.method public freezeInputDispatchingLw()V
    .locals 2

    .line 481
    iget-boolean v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDispatchFrozen:Z

    if-nez v0, :cond_2

    .line 482
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT:Z

    if-eqz v0, :cond_0

    .line 483
    const-string v0, "WindowManager"

    const-string v1, "Freezing input dispatching"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDispatchFrozen:Z

    .line 488
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT:Z

    if-eqz v0, :cond_1

    .line 489
    const/4 v0, 0x6

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputFreezeReason:Ljava/lang/String;

    .line 491
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/InputManagerCallback;->updateInputDispatchModeLw()V

    .line 493
    :cond_2
    return-void
.end method

.method public getPointerDisplayId()I
    .locals 6

    .line 365
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 367
    iget-object v1, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mForceDesktopModeOnExternalDisplays:Z

    if-nez v1, :cond_0

    .line 368
    const/4 v1, 0x0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 372
    :cond_0
    const/4 v1, 0x0

    .line 373
    .local v1, "firstExternalDisplayId":I
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 374
    iget-object v3, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v3, v3, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 378
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getWindowingMode()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    .line 379
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    .line 382
    :cond_1
    if-nez v1, :cond_2

    .line 383
    :try_start_2
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    if-eqz v4, :cond_2

    .line 384
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    move v1, v4

    .line 373
    .end local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 389
    .end local v2    # "i":I
    :cond_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 390
    .end local v1    # "firstExternalDisplayId":I
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getPointerLayer()I
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/16 v1, 0x7e2

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J
    .locals 2
    .param p1, "focusedToken"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .line 341
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .line 323
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v0

    return v0
.end method

.method public interceptMotionBeforeQueueingNonInteractive(IJI)I
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "whenNanos"    # J
    .param p4, "policyFlags"    # I

    .line 330
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/policy/WindowManagerPolicy;->interceptMotionBeforeQueueingNonInteractive(IJI)I

    move-result v0

    return v0
.end method

.method public notifyANR(Landroid/view/InputApplicationHandle;Landroid/os/IBinder;Ljava/lang/String;)J
    .locals 10
    .param p1, "inputApplicationHandle"    # Landroid/view/InputApplicationHandle;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "reason"    # Ljava/lang/String;

    .line 182
    const-string v0, "ms"

    const-string v1, "notifyANR took "

    const-string v2, "WindowManager"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 184
    .local v3, "startTime":J
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/InputManagerCallback;->notifyANRInner(Landroid/view/InputApplicationHandle;Landroid/os/IBinder;Ljava/lang/String;)J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v3

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-wide v5

    .line 188
    :catchall_0
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    throw v5
.end method

.method public notifyCameraLensCoverSwitchChanged(JZ)V
    .locals 1
    .param p1, "whenNanos"    # J
    .param p3, "lensCovered"    # Z

    .line 314
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->notifyCameraLensCoverSwitchChanged(JZ)V

    .line 315
    return-void
.end method

.method public notifyConfigurationChanged()V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 294
    iget-object v1, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()V

    .line 295
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 297
    iget-object v1, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 298
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReady:Z

    if-nez v0, :cond_0

    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReady:Z

    .line 300
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 302
    :cond_0
    monitor-exit v1

    .line 303
    return-void

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 295
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public notifyFocusChanged(Landroid/os/IBinder;Landroid/os/IBinder;)Z
    .locals 7
    .param p1, "oldToken"    # Landroid/os/IBinder;
    .param p2, "newToken"    # Landroid/os/IBinder;

    .line 409
    const/4 v0, 0x0

    .line 414
    .local v0, "requestRefreshConfiguration":Z
    iget-object v1, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 415
    iget-object v2, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputToWindowMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 416
    .local v2, "win":Lcom/android/server/wm/WindowState;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 417
    if-eqz v2, :cond_0

    iget-object v1, v2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 419
    .local v1, "newFocusedWindow":Landroid/view/IWindow;
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/InputManagerCallback;->mFocusedWindow:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/IWindow;

    .line 420
    .local v3, "focusedWindow":Landroid/view/IWindow;
    if-eqz v3, :cond_2

    .line 421
    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 422
    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-ne v5, v6, :cond_1

    .line 423
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyFocusChanged called with unchanged mFocusedWindow="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WindowManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    return v4

    .line 427
    :cond_1
    invoke-direct {p0, v3, v4}, Lcom/android/server/wm/InputManagerCallback;->dispatchPointerCaptureChanged(Landroid/view/IWindow;Z)Z

    move-result v0

    .line 429
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/InputManagerCallback;->mFocusedWindow:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 430
    return v0

    .line 416
    .end local v1    # "newFocusedWindow":Landroid/view/IWindow;
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    .end local v3    # "focusedWindow":Landroid/view/IWindow;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public notifyInputChannelBroken(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 88
    if-nez p1, :cond_0

    .line 89
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 93
    iget-object v1, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputToWindowMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 94
    .local v1, "windowState":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_1

    .line 95
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WINDOW DIED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->removeIfPossible()V

    .line 98
    .end local v1    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 99
    return-void

    .line 98
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 1
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .line 308
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->notifyLidSwitchChanged(JZ)V

    .line 309
    return-void
.end method

.method public onPointerDownOutsideFocus(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "touchedToken"    # Landroid/os/IBinder;

    .line 398
    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->isGestureButtonEnabled()Z

    move-result v0

    const/16 v1, 0x3e

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 401
    return-void

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 405
    return-void
.end method

.method public requestPointerCapture(Landroid/os/IBinder;Z)Z
    .locals 5
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "enabled"    # Z

    .line 435
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mFocusedWindow:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/IWindow;

    .line 436
    .local v0, "focusedWindow":Landroid/view/IWindow;
    const/4 v1, 0x0

    const-string v2, "WindowManager"

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-eq v3, p1, :cond_0

    goto :goto_1

    .line 441
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/wm/InputManagerCallback;->mFocusedWindowHasCapture:Z

    if-ne v3, p2, :cond_2

    .line 442
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestPointerCapture: already "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    const-string v4, "enabled"

    goto :goto_0

    :cond_1
    const-string v4, "disabled"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    return v1

    .line 445
    :cond_2
    invoke-direct {p0, v0, p2}, Lcom/android/server/wm/InputManagerCallback;->dispatchPointerCaptureChanged(Landroid/view/IWindow;Z)Z

    move-result v1

    return v1

    .line 437
    :cond_3
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestPointerCapture called for a window that has no focus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return v1
.end method

.method public setEventDispatchingLw(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 508
    iget-boolean v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDispatchEnabled:Z

    if-eq v0, p1, :cond_1

    .line 509
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT:Z

    if-eqz v0, :cond_0

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting event dispatching to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDispatchEnabled:Z

    .line 514
    invoke-direct {p0}, Lcom/android/server/wm/InputManagerCallback;->updateInputDispatchModeLw()V

    .line 516
    :cond_1
    return-void
.end method

.method public thawInputDispatchingLw()V
    .locals 2

    .line 496
    iget-boolean v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDispatchFrozen:Z

    if-eqz v0, :cond_1

    .line 497
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT:Z

    if-eqz v0, :cond_0

    .line 498
    const-string v0, "WindowManager"

    const-string v1, "Thawing input dispatching"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDispatchFrozen:Z

    .line 502
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputFreezeReason:Ljava/lang/String;

    .line 503
    invoke-direct {p0}, Lcom/android/server/wm/InputManagerCallback;->updateInputDispatchModeLw()V

    .line 505
    :cond_1
    return-void
.end method

.method public waitForInputDevicesReady(J)Z
    .locals 4
    .param p1, "timeoutMillis"    # J

    .line 463
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 464
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 466
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 474
    goto :goto_0

    .line 467
    :catch_0
    move-exception v1

    .line 470
    .local v1, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT:Z

    if-eqz v2, :cond_0

    .line 471
    const-string v2, "WindowManager"

    const-string v3, "waitForInputDevicesReady fail."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 476
    .end local v1    # "ex":Ljava/lang/InterruptedException;
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReady:Z

    monitor-exit v0

    return v1

    .line 477
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
