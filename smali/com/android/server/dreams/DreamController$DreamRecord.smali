.class final Lcom/android/server/dreams/DreamController$DreamRecord;
.super Ljava/lang/Object;
.source "DreamController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/dreams/DreamController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DreamRecord"
.end annotation


# instance fields
.field public mBound:Z

.field public final mCanDoze:Z

.field public mConnected:Z

.field final mDreamingStartedCallback:Landroid/os/IRemoteCallback;

.field public final mIsTest:Z

.field public final mName:Landroid/content/ComponentName;

.field final mReleaseWakeLockIfNeeded:Ljava/lang/Runnable;

.field public mSentStartBroadcast:Z

.field public mService:Landroid/service/dreams/IDreamService;

.field public final mToken:Landroid/os/Binder;

.field public final mUserId:I

.field public mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mWakingGently:Z

.field final synthetic this$0:Lcom/android/server/dreams/DreamController;


# direct methods
.method public constructor <init>(Lcom/android/server/dreams/DreamController;Landroid/os/Binder;Landroid/content/ComponentName;ZZILandroid/os/PowerManager$WakeLock;)V
    .locals 3
    .param p2, "token"    # Landroid/os/Binder;
    .param p3, "name"    # Landroid/content/ComponentName;
    .param p4, "isTest"    # Z
    .param p5, "canDoze"    # Z
    .param p6, "userId"    # I
    .param p7, "wakeLock"    # Landroid/os/PowerManager$WakeLock;

    .line 320
    iput-object p1, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    new-instance v0, Lcom/android/server/dreams/-$$Lambda$gXC4nM2f5GMCBX0ED45DCQQjqv0;

    invoke-direct {v0, p0}, Lcom/android/server/dreams/-$$Lambda$gXC4nM2f5GMCBX0ED45DCQQjqv0;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mReleaseWakeLockIfNeeded:Ljava/lang/Runnable;

    .line 388
    new-instance v0, Lcom/android/server/dreams/DreamController$DreamRecord$4;

    invoke-direct {v0, p0}, Lcom/android/server/dreams/DreamController$DreamRecord$4;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mDreamingStartedCallback:Landroid/os/IRemoteCallback;

    .line 321
    iput-object p2, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mToken:Landroid/os/Binder;

    .line 322
    iput-object p3, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mName:Landroid/content/ComponentName;

    .line 323
    iput-boolean p4, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mIsTest:Z

    .line 324
    iput-boolean p5, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    .line 325
    iput p6, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mUserId:I

    .line 326
    iput-object p7, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 329
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 330
    invoke-static {p1}, Lcom/android/server/dreams/DreamController;->access$200(Lcom/android/server/dreams/DreamController;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mReleaseWakeLockIfNeeded:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 331
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->access$200(Lcom/android/server/dreams/DreamController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/dreams/DreamController$DreamRecord$1;

    invoke-direct {v1, p0}, Lcom/android/server/dreams/DreamController$DreamRecord$1;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 345
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 350
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->access$200(Lcom/android/server/dreams/DreamController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/dreams/DreamController$DreamRecord$2;

    invoke-direct {v1, p0, p2}, Lcom/android/server/dreams/DreamController$DreamRecord$2;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 362
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 367
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->access$200(Lcom/android/server/dreams/DreamController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/dreams/DreamController$DreamRecord$3;

    invoke-direct {v1, p0}, Lcom/android/server/dreams/DreamController$DreamRecord$3;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 376
    return-void
.end method

.method releaseWakeLockIfNeeded()V
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 381
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 382
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->access$200(Lcom/android/server/dreams/DreamController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mReleaseWakeLockIfNeeded:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 384
    :cond_0
    return-void
.end method
