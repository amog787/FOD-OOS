.class public Lcom/android/server/TestNetworkService$TestNetworkAgent;
.super Landroid/net/NetworkAgent;
.source "TestNetworkService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TestNetworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TestNetworkAgent"
.end annotation


# static fields
.field private static final NETWORK_SCORE:I = 0x1


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private final mBinderLock:Ljava/lang/Object;

.field private final mLp:Landroid/net/LinkProperties;

.field private final mNc:Landroid/net/NetworkCapabilities;

.field private final mNi:Landroid/net/NetworkInfo;

.field private final mUid:I

.field final synthetic this$0:Lcom/android/server/TestNetworkService;


# direct methods
.method private constructor <init>(Lcom/android/server/TestNetworkService;Landroid/os/Looper;Landroid/content/Context;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/os/IBinder;)V
    .locals 12
    .param p1, "this$0"    # Lcom/android/server/TestNetworkService;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "ni"    # Landroid/net/NetworkInfo;
    .param p5, "nc"    # Landroid/net/NetworkCapabilities;
    .param p6, "lp"    # Landroid/net/LinkProperties;
    .param p7, "uid"    # I
    .param p8, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 171
    move-object v9, p0

    move-object/from16 v10, p8

    move-object v11, p1

    iput-object v11, v9, Lcom/android/server/TestNetworkService$TestNetworkAgent;->this$0:Lcom/android/server/TestNetworkService;

    .line 172
    const-string v4, "TEST_NETWORK"

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v8}, Landroid/net/NetworkAgent;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;I)V

    .line 161
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v9, Lcom/android/server/TestNetworkService$TestNetworkAgent;->mBinderLock:Ljava/lang/Object;

    .line 174
    move/from16 v2, p7

    iput v2, v9, Lcom/android/server/TestNetworkService$TestNetworkAgent;->mUid:I

    .line 175
    move-object/from16 v3, p4

    iput-object v3, v9, Lcom/android/server/TestNetworkService$TestNetworkAgent;->mNi:Landroid/net/NetworkInfo;

    .line 176
    move-object/from16 v4, p5

    iput-object v4, v9, Lcom/android/server/TestNetworkService$TestNetworkAgent;->mNc:Landroid/net/NetworkCapabilities;

    .line 177
    move-object/from16 v5, p6

    iput-object v5, v9, Lcom/android/server/TestNetworkService$TestNetworkAgent;->mLp:Landroid/net/LinkProperties;

    .line 179
    monitor-enter v1

    .line 180
    :try_start_0
    iput-object v10, v9, Lcom/android/server/TestNetworkService$TestNetworkAgent;->mBinder:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v10, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    nop

    .line 188
    :try_start_2
    monitor-exit v1

    .line 189
    return-void

    .line 184
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 185
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/TestNetworkService$TestNetworkAgent;->binderDied()V

    .line 186
    nop

    .end local p0    # "this":Lcom/android/server/TestNetworkService$TestNetworkAgent;
    .end local p1    # "this$0":Lcom/android/server/TestNetworkService;
    .end local p2    # "looper":Landroid/os/Looper;
    .end local p3    # "context":Landroid/content/Context;
    .end local p4    # "ni":Landroid/net/NetworkInfo;
    .end local p5    # "nc":Landroid/net/NetworkCapabilities;
    .end local p6    # "lp":Landroid/net/LinkProperties;
    .end local p7    # "uid":I
    .end local p8    # "binder":Landroid/os/IBinder;
    throw v0

    .line 188
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/android/server/TestNetworkService$TestNetworkAgent;
    .restart local p1    # "this$0":Lcom/android/server/TestNetworkService;
    .restart local p2    # "looper":Landroid/os/Looper;
    .restart local p3    # "context":Landroid/content/Context;
    .restart local p4    # "ni":Landroid/net/NetworkInfo;
    .restart local p5    # "nc":Landroid/net/NetworkCapabilities;
    .restart local p6    # "lp":Landroid/net/LinkProperties;
    .restart local p7    # "uid":I
    .restart local p8    # "binder":Landroid/os/IBinder;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method synthetic constructor <init>(Lcom/android/server/TestNetworkService;Landroid/os/Looper;Landroid/content/Context;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/os/IBinder;Lcom/android/server/TestNetworkService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/TestNetworkService;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Landroid/content/Context;
    .param p4, "x3"    # Landroid/net/NetworkInfo;
    .param p5, "x4"    # Landroid/net/NetworkCapabilities;
    .param p6, "x5"    # Landroid/net/LinkProperties;
    .param p7, "x6"    # I
    .param p8, "x7"    # Landroid/os/IBinder;
    .param p9, "x8"    # Lcom/android/server/TestNetworkService$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    invoke-direct/range {p0 .. p8}, Lcom/android/server/TestNetworkService$TestNetworkAgent;-><init>(Lcom/android/server/TestNetworkService;Landroid/os/Looper;Landroid/content/Context;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/TestNetworkService$TestNetworkAgent;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TestNetworkService$TestNetworkAgent;

    .line 149
    iget v0, p0, Lcom/android/server/TestNetworkService$TestNetworkAgent;->mUid:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/TestNetworkService$TestNetworkAgent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TestNetworkService$TestNetworkAgent;

    .line 149
    invoke-direct {p0}, Lcom/android/server/TestNetworkService$TestNetworkAgent;->teardown()V

    return-void
.end method

.method private teardown()V
    .locals 4

    .line 206
    iget-object v0, p0, Lcom/android/server/TestNetworkService$TestNetworkAgent;->mNi:Landroid/net/NetworkInfo;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/android/server/TestNetworkService$TestNetworkAgent;->mNi:Landroid/net/NetworkInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 208
    iget-object v0, p0, Lcom/android/server/TestNetworkService$TestNetworkAgent;->mNi:Landroid/net/NetworkInfo;

    invoke-virtual {p0, v0}, Lcom/android/server/TestNetworkService$TestNetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 212
    iget-object v0, p0, Lcom/android/server/TestNetworkService$TestNetworkAgent;->mBinderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 214
    :try_start_0
    iget-object v3, p0, Lcom/android/server/TestNetworkService$TestNetworkAgent;->mBinder:Landroid/os/IBinder;

    if-nez v3, :cond_0

    monitor-exit v0

    return-void

    .line 215
    :cond_0
    iget-object v3, p0, Lcom/android/server/TestNetworkService$TestNetworkAgent;->mBinder:Landroid/os/IBinder;

    invoke-interface {v3, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 216
    iput-object v2, p0, Lcom/android/server/TestNetworkService$TestNetworkAgent;->mBinder:Landroid/os/IBinder;

    .line 217
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 221
    iget-object v0, p0, Lcom/android/server/TestNetworkService$TestNetworkAgent;->this$0:Lcom/android/server/TestNetworkService;

    invoke-static {v0}, Lcom/android/server/TestNetworkService;->access$000(Lcom/android/server/TestNetworkService;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 222
    :try_start_1
    iget-object v0, p0, Lcom/android/server/TestNetworkService$TestNetworkAgent;->this$0:Lcom/android/server/TestNetworkService;

    invoke-static {v0}, Lcom/android/server/TestNetworkService;->access$000(Lcom/android/server/TestNetworkService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/TestNetworkService$TestNetworkAgent;->getNetwork()Landroid/net/Network;

    move-result-object v2

    iget v2, v2, Landroid/net/Network;->netId:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 223
    monitor-exit v1

    .line 224
    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 217
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method


# virtual methods
.method public binderDied()V
    .locals 0

    .line 197
    invoke-direct {p0}, Lcom/android/server/TestNetworkService$TestNetworkAgent;->teardown()V

    .line 198
    return-void
.end method

.method protected unwanted()V
    .locals 0

    .line 202
    invoke-direct {p0}, Lcom/android/server/TestNetworkService$TestNetworkAgent;->teardown()V

    .line 203
    return-void
.end method
