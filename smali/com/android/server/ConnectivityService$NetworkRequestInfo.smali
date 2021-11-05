.class Lcom/android/server/ConnectivityService$NetworkRequestInfo;
.super Ljava/lang/Object;
.source "ConnectivityService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkRequestInfo"
.end annotation


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field final mPendingIntent:Landroid/app/PendingIntent;

.field mPendingIntentSent:Z

.field final mPid:I

.field mSatisfier:Lcom/android/server/connectivity/NetworkAgentInfo;

.field final mUid:I

.field final messenger:Landroid/os/Messenger;

.field final request:Landroid/net/NetworkRequest;

.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;)V
    .locals 1
    .param p2, "r"    # Landroid/net/NetworkRequest;

    .line 5759
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;Landroid/app/PendingIntent;)V

    .line 5760
    return-void
.end method

.method constructor <init>(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;Landroid/app/PendingIntent;)V
    .locals 0
    .param p2, "r"    # Landroid/net/NetworkRequest;
    .param p3, "pi"    # Landroid/app/PendingIntent;

    .line 5729
    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5730
    iput-object p2, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 5731
    invoke-static {p1, p2}, Lcom/android/server/ConnectivityService;->access$8400(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;)V

    .line 5732
    iput-object p3, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    .line 5733
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->messenger:Landroid/os/Messenger;

    .line 5734
    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    .line 5735
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    iput p1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPid:I

    .line 5736
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    iput p1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    .line 5737
    invoke-direct {p0}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->enforceRequestCountLimit()V

    .line 5738
    return-void
.end method

.method constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;Landroid/net/NetworkRequest;Landroid/os/IBinder;)V
    .locals 1
    .param p2, "m"    # Landroid/os/Messenger;
    .param p3, "r"    # Landroid/net/NetworkRequest;
    .param p4, "binder"    # Landroid/os/IBinder;

    .line 5740
    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->this$0:Lcom/android/server/ConnectivityService;

    .line 5741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5742
    iput-object p2, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->messenger:Landroid/os/Messenger;

    .line 5743
    iput-object p3, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 5744
    invoke-static {p1, p3}, Lcom/android/server/ConnectivityService;->access$8400(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;)V

    .line 5745
    iput-object p4, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    .line 5746
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    iput p1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPid:I

    .line 5747
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    iput p1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    .line 5748
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    .line 5749
    invoke-direct {p0}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->enforceRequestCountLimit()V

    .line 5752
    :try_start_0
    iget-object p1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5755
    goto :goto_0

    .line 5753
    :catch_0
    move-exception p1

    .line 5754
    .local p1, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->binderDied()V

    .line 5756
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private enforceRequestCountLimit()V
    .locals 4

    .line 5763
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$8500(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;

    move-result-object v0

    monitor-enter v0

    .line 5764
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$8500(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 5765
    .local v1, "networkRequests":I
    const/16 v3, 0x64

    if-ge v1, v3, :cond_0

    .line 5769
    iget-object v2, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$8500(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;

    move-result-object v2

    iget v3, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 5770
    .end local v1    # "networkRequests":I
    monitor-exit v0

    .line 5771
    return-void

    .line 5766
    .restart local v1    # "networkRequests":I
    :cond_0
    new-instance v3, Landroid/os/ServiceSpecificException;

    invoke-direct {v3, v2}, Landroid/os/ServiceSpecificException;-><init>(I)V

    .end local p0    # "this":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    throw v3

    .line 5770
    .end local v1    # "networkRequests":I
    .restart local p0    # "this":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 5780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectivityService NetworkRequestInfo binderDied("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$200(Ljava/lang/String;)V

    .line 5782
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService;->releaseNetworkRequest(Landroid/net/NetworkRequest;)V

    .line 5783
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 5786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uid/pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5787
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " to trigger "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5786
    return-object v0
.end method

.method unlinkDeathRecipient()V
    .locals 2

    .line 5774
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 5775
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 5777
    :cond_0
    return-void
.end method
