.class public abstract Lcom/android/server/storage/AppFuseBridge$MountScope;
.super Ljava/lang/Object;
.source "AppFuseBridge.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/storage/AppFuseBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MountScope"
.end annotation


# instance fields
.field private mMountResult:Z

.field private final mMounted:Ljava/util/concurrent/CountDownLatch;

.field public final mountId:I

.field public final uid:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "mountId"    # I

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/storage/AppFuseBridge$MountScope;->mMounted:Ljava/util/concurrent/CountDownLatch;

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/storage/AppFuseBridge$MountScope;->mMountResult:Z

    .line 145
    iput p1, p0, Lcom/android/server/storage/AppFuseBridge$MountScope;->uid:I

    .line 146
    iput p2, p0, Lcom/android/server/storage/AppFuseBridge$MountScope;->mountId:I

    .line 147
    return-void
.end method


# virtual methods
.method public abstract open()Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation
.end method

.method public abstract openFile(III)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation
.end method

.method setMountResultLocked(Z)V
    .locals 4
    .param p1, "result"    # Z

    .line 151
    iget-object v0, p0, Lcom/android/server/storage/AppFuseBridge$MountScope;->mMounted:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 152
    return-void

    .line 154
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/storage/AppFuseBridge$MountScope;->mMountResult:Z

    .line 155
    iget-object v0, p0, Lcom/android/server/storage/AppFuseBridge$MountScope;->mMounted:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 156
    return-void
.end method

.method waitForMount()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/android/server/storage/AppFuseBridge$MountScope;->mMounted:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 160
    iget-boolean v0, p0, Lcom/android/server/storage/AppFuseBridge$MountScope;->mMountResult:Z

    return v0
.end method
