.class final Lcom/android/server/dreams/DreamController;
.super Ljava/lang/Object;
.source "DreamController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/dreams/DreamController$DreamRecord;,
        Lcom/android/server/dreams/DreamController$Listener;
    }
.end annotation


# static fields
.field private static final DREAM_CONNECTION_TIMEOUT:I = 0x1388

.field private static final DREAM_FINISH_TIMEOUT:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "DreamController"


# instance fields
.field private final mCloseNotificationShadeIntent:Landroid/content/Intent;

.field private final mContext:Landroid/content/Context;

.field private mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

.field private mDreamStartTime:J

.field private final mDreamingStartedIntent:Landroid/content/Intent;

.field private final mDreamingStoppedIntent:Landroid/content/Intent;

.field private final mHandler:Landroid/os/Handler;

.field private final mIWindowManager:Landroid/view/IWindowManager;

.field private final mListener:Lcom/android/server/dreams/DreamController$Listener;

.field private final mStopStubbornDreamRunnable:Ljava/lang/Runnable;

.field private final mStopUnconnectedDreamRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/dreams/DreamController$Listener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "listener"    # Lcom/android/server/dreams/DreamController$Listener;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DREAMING_STARTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/dreams/DreamController;->mDreamingStartedIntent:Landroid/content/Intent;

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DREAMING_STOPPED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/dreams/DreamController;->mDreamingStoppedIntent:Landroid/content/Intent;

    .line 79
    new-instance v0, Lcom/android/server/dreams/DreamController$1;

    invoke-direct {v0, p0}, Lcom/android/server/dreams/DreamController$1;-><init>(Lcom/android/server/dreams/DreamController;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamController;->mStopUnconnectedDreamRunnable:Ljava/lang/Runnable;

    .line 89
    new-instance v0, Lcom/android/server/dreams/DreamController$2;

    invoke-direct {v0, p0}, Lcom/android/server/dreams/DreamController$2;-><init>(Lcom/android/server/dreams/DreamController;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamController;->mStopStubbornDreamRunnable:Ljava/lang/Runnable;

    .line 98
    iput-object p1, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    .line 100
    iput-object p3, p0, Lcom/android/server/dreams/DreamController;->mListener:Lcom/android/server/dreams/DreamController$Listener;

    .line 101
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/dreams/DreamController;->mIWindowManager:Landroid/view/IWindowManager;

    .line 102
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamController;->mCloseNotificationShadeIntent:Landroid/content/Intent;

    .line 103
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mCloseNotificationShadeIntent:Landroid/content/Intent;

    const-string/jumbo v1, "reason"

    const-string v2, "dream"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/dreams/DreamController;)Lcom/android/server/dreams/DreamController$DreamRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/dreams/DreamController;

    .line 55
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/dreams/DreamController;)Lcom/android/server/dreams/DreamController$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/dreams/DreamController;

    .line 55
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mListener:Lcom/android/server/dreams/DreamController$Listener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/dreams/DreamController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/dreams/DreamController;

    .line 55
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/dreams/DreamController;Landroid/service/dreams/IDreamService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/dreams/DreamController;
    .param p1, "x1"    # Landroid/service/dreams/IDreamService;

    .line 55
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamController;->attach(Landroid/service/dreams/IDreamService;)V

    return-void
.end method

.method private attach(Landroid/service/dreams/IDreamService;)V
    .locals 4
    .param p1, "service"    # Landroid/service/dreams/IDreamService;

    .line 280
    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p1}, Landroid/service/dreams/IDreamService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 281
    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mToken:Landroid/os/Binder;

    iget-object v2, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-boolean v2, v2, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    iget-object v3, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v3, v3, Lcom/android/server/dreams/DreamController$DreamRecord;->mDreamingStartedCallback:Landroid/os/IRemoteCallback;

    invoke-interface {p1, v1, v2, v3}, Landroid/service/dreams/IDreamService;->attach(Landroid/os/IBinder;ZLandroid/os/IRemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    nop

    .line 289
    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iput-object p1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    .line 291
    iget-boolean v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mIsTest:Z

    if-nez v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/dreams/DreamController;->mDreamingStartedIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 293
    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iput-boolean v0, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mSentStartBroadcast:Z

    .line 295
    :cond_0
    return-void

    .line 283
    :catch_0
    move-exception v1

    .line 284
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "DreamController"

    const-string v3, "The dream service died unexpectedly."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    invoke-virtual {p0, v0}, Lcom/android/server/dreams/DreamController;->stopDream(Z)V

    .line 286
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 107
    const-string v0, "Dreamland:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    if-eqz v0, :cond_0

    .line 109
    const-string v0, "  mCurrentDream:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mIsTest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-boolean v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mIsTest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mCanDoze="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-boolean v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-boolean v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mBound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mSentStartBroadcast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-boolean v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mSentStartBroadcast:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mWakingGently="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-boolean v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mWakingGently:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_0
    const-string v0, "  mCurrentDream: null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    :goto_0
    return-void
.end method

.method public onSingleTap()V
    .locals 3

    .line 261
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    if-eqz v0, :cond_0

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    invoke-interface {v0}, Landroid/service/dreams/IDreamService;->onSingleTap()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "DreamController"

    const-string v2, "The dream service died unexpectedly."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 267
    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/dreams/DreamController$4;

    invoke-direct {v2, p0}, Lcom/android/server/dreams/DreamController$4;-><init>(Lcom/android/server/dreams/DreamController;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 275
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public startDream(Landroid/os/Binder;Landroid/content/ComponentName;ZZILandroid/os/PowerManager$WakeLock;)V
    .locals 18
    .param p1, "token"    # Landroid/os/Binder;
    .param p2, "name"    # Landroid/content/ComponentName;
    .param p3, "isTest"    # Z
    .param p4, "canDoze"    # Z
    .param p5, "userId"    # I
    .param p6, "wakeLock"    # Landroid/os/PowerManager$WakeLock;

    .line 126
    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move/from16 v11, p5

    const-string v12, "Unable to bind dream service: "

    const-string v13, "DreamController"

    const/4 v14, 0x1

    invoke-virtual {v9, v14}, Lcom/android/server/dreams/DreamController;->stopDream(Z)V

    .line 128
    const-wide/32 v7, 0x20000

    const-string/jumbo v0, "startDream"

    invoke-static {v7, v8, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 131
    :try_start_0
    iget-object v0, v9, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    iget-object v1, v9, Lcom/android/server/dreams/DreamController;->mCloseNotificationShadeIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting dream: name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isTest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move/from16 v15, p3

    :try_start_1
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canDoze="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v0, Lcom/android/server/dreams/DreamController$DreamRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-wide/from16 v16, v7

    move/from16 v7, p5

    move-object/from16 v8, p6

    :try_start_2
    invoke-direct/range {v1 .. v8}, Lcom/android/server/dreams/DreamController$DreamRecord;-><init>(Lcom/android/server/dreams/DreamController;Landroid/os/Binder;Landroid/content/ComponentName;ZZILandroid/os/PowerManager$WakeLock;)V

    iput-object v0, v9, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 139
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v9, Lcom/android/server/dreams/DreamController;->mDreamStartTime:J

    .line 140
    iget-object v0, v9, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    .line 141
    iget-object v1, v9, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-boolean v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    if-eqz v1, :cond_0

    const/16 v1, 0xdf

    goto :goto_0

    :cond_0
    const/16 v1, 0xde

    .line 140
    :goto_0
    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 144
    :try_start_3
    iget-object v0, v9, Lcom/android/server/dreams/DreamController;->mIWindowManager:Landroid/view/IWindowManager;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 v1, 0x7e7

    const/4 v2, 0x0

    move-object/from16 v3, p1

    :try_start_4
    invoke-interface {v0, v3, v1, v2}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;II)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 149
    nop

    .line 151
    :try_start_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.dreams.DreamService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 152
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 153
    const/high16 v0, 0x800000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 155
    :try_start_6
    iget-object v0, v9, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    iget-object v2, v9, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    const v4, 0x4000001

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v11}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {v9, v14}, Lcom/android/server/dreams/DreamController;->stopDream(Z)V
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 171
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 160
    return-void

    .line 166
    :cond_1
    nop

    .line 168
    :try_start_7
    iget-object v0, v9, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iput-boolean v14, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mBound:Z

    .line 169
    iget-object v0, v9, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    iget-object v2, v9, Lcom/android/server/dreams/DreamController;->mStopUnconnectedDreamRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 171
    nop

    .end local v1    # "intent":Landroid/content/Intent;
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 172
    nop

    .line 173
    return-void

    .line 162
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 163
    .local v0, "ex":Ljava/lang/SecurityException;
    :try_start_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    invoke-virtual {v9, v14}, Lcom/android/server/dreams/DreamController;->stopDream(Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 171
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 165
    return-void

    .line 171
    .end local v0    # "ex":Ljava/lang/SecurityException;
    .end local v1    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 145
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object/from16 v3, p1

    .line 146
    .local v0, "ex":Landroid/os/RemoteException;
    :goto_1
    :try_start_9
    const-string v1, "Unable to add window token for dream."

    invoke-static {v13, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    invoke-virtual {v9, v14}, Lcom/android/server/dreams/DreamController;->stopDream(Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 171
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 148
    return-void

    .line 171
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catchall_1
    move-exception v0

    move-object/from16 v3, p1

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v3, p1

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object/from16 v3, p1

    move/from16 v15, p3

    :goto_2
    move-wide/from16 v16, v7

    :goto_3
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public stopDream(Z)V
    .locals 11
    .param p1, "immediate"    # Z

    .line 176
    const-string v0, "DreamController"

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    if-nez v1, :cond_0

    .line 177
    return-void

    .line 180
    :cond_0
    const-wide/32 v1, 0x20000

    const-string/jumbo v3, "stopDream"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 182
    if-nez p1, :cond_2

    .line 183
    :try_start_0
    iget-object v3, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-boolean v3, v3, Lcom/android/server/dreams/DreamController$DreamRecord;->mWakingGently:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 254
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 184
    return-void

    .line 187
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v3, v3, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    if-eqz v3, :cond_2

    .line 189
    iget-object v3, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/dreams/DreamController$DreamRecord;->mWakingGently:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    :try_start_2
    iget-object v3, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v3, v3, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    invoke-interface {v3}, Landroid/service/dreams/IDreamService;->wakeUp()V

    .line 192
    iget-object v3, p0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/dreams/DreamController;->mStopStubbornDreamRunnable:Ljava/lang/Runnable;

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 254
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 193
    return-void

    .line 194
    :catch_0
    move-exception v3

    .line 200
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 201
    .local v3, "oldDream":Lcom/android/server/dreams/DreamController$DreamRecord;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 202
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stopping dream: name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/dreams/DreamController$DreamRecord;->mName:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", isTest="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v3, Lcom/android/server/dreams/DreamController$DreamRecord;->mIsTest:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", canDoze="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v3, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", userId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/android/server/dreams/DreamController$DreamRecord;->mUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v5, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    .line 206
    iget-boolean v6, v3, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    if-eqz v6, :cond_3

    const/16 v6, 0xdf

    goto :goto_0

    :cond_3
    const/16 v6, 0xde

    .line 205
    :goto_0
    invoke-static {v5, v6}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 207
    iget-object v5, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    .line 208
    iget-boolean v6, v3, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    if-eqz v6, :cond_4

    const-string v6, "dozing_minutes"

    goto :goto_1

    :cond_4
    const-string v6, "dreaming_minutes"

    .line 209
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/server/dreams/DreamController;->mDreamStartTime:J

    sub-long/2addr v7, v9

    const-wide/32 v9, 0xea60

    div-long/2addr v7, v9

    long-to-int v7, v7

    .line 207
    invoke-static {v5, v6, v7}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 211
    iget-object v5, p0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/dreams/DreamController;->mStopUnconnectedDreamRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 212
    iget-object v5, p0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/dreams/DreamController;->mStopStubbornDreamRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 214
    iget-boolean v5, v3, Lcom/android/server/dreams/DreamController$DreamRecord;->mSentStartBroadcast:Z

    if-eqz v5, :cond_5

    .line 215
    iget-object v5, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/dreams/DreamController;->mDreamingStoppedIntent:Landroid/content/Intent;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 218
    :cond_5
    iget-object v5, v3, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v6, 0x0

    if-eqz v5, :cond_6

    .line 223
    :try_start_4
    iget-object v5, v3, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    invoke-interface {v5}, Landroid/service/dreams/IDreamService;->detach()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 226
    goto :goto_2

    .line 224
    :catch_1
    move-exception v5

    .line 229
    :goto_2
    :try_start_5
    iget-object v5, v3, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    invoke-interface {v5}, Landroid/service/dreams/IDreamService;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v5, v3, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_5
    .catch Ljava/util/NoSuchElementException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 232
    goto :goto_3

    .line 230
    :catch_2
    move-exception v5

    .line 233
    :goto_3
    :try_start_6
    iput-object v4, v3, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    .line 236
    :cond_6
    iget-boolean v4, v3, Lcom/android/server/dreams/DreamController$DreamRecord;->mBound:Z

    if-eqz v4, :cond_7

    .line 237
    iget-object v4, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 239
    :cond_7
    invoke-virtual {v3}, Lcom/android/server/dreams/DreamController$DreamRecord;->releaseWakeLockIfNeeded()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 242
    :try_start_7
    iget-object v4, p0, Lcom/android/server/dreams/DreamController;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v5, v3, Lcom/android/server/dreams/DreamController$DreamRecord;->mToken:Landroid/os/Binder;

    invoke-interface {v4, v5, v6}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 245
    goto :goto_4

    .line 243
    :catch_3
    move-exception v4

    .line 244
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_8
    const-string v5, "Error removing window token for dream."

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    .end local v4    # "ex":Landroid/os/RemoteException;
    :goto_4
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/dreams/DreamController$3;

    invoke-direct {v4, p0, v3}, Lcom/android/server/dreams/DreamController$3;-><init>(Lcom/android/server/dreams/DreamController;Lcom/android/server/dreams/DreamController$DreamRecord;)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 254
    nop

    .end local v3    # "oldDream":Lcom/android/server/dreams/DreamController$DreamRecord;
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 255
    nop

    .line 256
    return-void

    .line 254
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method
