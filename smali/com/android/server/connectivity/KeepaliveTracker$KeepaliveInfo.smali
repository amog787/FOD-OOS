.class Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
.super Ljava/lang/Object;
.source "KeepaliveTracker.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/KeepaliveTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeepaliveInfo"
.end annotation


# static fields
.field private static final NOT_STARTED:I = 0x1

.field private static final STARTED:I = 0x3

.field private static final STARTING:I = 0x2

.field private static final STOPPING:I = 0x4

.field public static final TYPE_NATT:I = 0x1

.field public static final TYPE_TCP:I = 0x2


# instance fields
.field private final mCallback:Landroid/net/ISocketKeepaliveCallback;

.field private final mFd:Ljava/io/FileDescriptor;

.field private final mInterval:I

.field private final mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

.field private final mOldFd:Ljava/io/FileDescriptor;

.field private final mPacket:Landroid/net/KeepalivePacketData;

.field private final mPid:I

.field private final mPrivileged:Z

.field private mSlot:I

.field private mStartedState:I

.field private final mType:I

.field private final mUid:I

.field final synthetic this$0:Lcom/android/server/connectivity/KeepaliveTracker;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/KeepaliveTracker;Landroid/net/ISocketKeepaliveCallback;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/KeepalivePacketData;IILjava/io/FileDescriptor;)V
    .locals 5
    .param p1, "this$0"    # Lcom/android/server/connectivity/KeepaliveTracker;
    .param p2, "callback"    # Landroid/net/ISocketKeepaliveCallback;
    .param p3, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p4, "packet"    # Landroid/net/KeepalivePacketData;
    .param p5, "interval"    # I
    .param p6, "type"    # I
    .param p7, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/SocketKeepalive$InvalidSocketException;
        }
    .end annotation

    .line 162
    iput-object p1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->this$0:Lcom/android/server/connectivity/KeepaliveTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mSlot:I

    .line 155
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mStartedState:I

    .line 163
    iput-object p2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mCallback:Landroid/net/ISocketKeepaliveCallback;

    .line 164
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPid:I

    .line 165
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mUid:I

    .line 166
    invoke-static {p1}, Lcom/android/server/connectivity/KeepaliveTracker;->access$000(Lcom/android/server/connectivity/KeepaliveTracker;)Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPid:I

    iget v3, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mUid:I

    const-string v4, "android.permission.PACKET_KEEPALIVE_OFFLOAD"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPrivileged:Z

    .line 168
    iput-object p3, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 169
    iput-object p4, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPacket:Landroid/net/KeepalivePacketData;

    .line 170
    iput p5, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mInterval:I

    .line 171
    iput p6, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mType:I

    .line 179
    const-string v0, "KeepaliveTracker"

    if-eqz p7, :cond_1

    .line 180
    :try_start_0
    invoke-static {p7}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mFd:Ljava/io/FileDescriptor;

    .line 181
    iput-object p7, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mOldFd:Ljava/io/FileDescriptor;

    goto :goto_1

    .line 195
    :catch_0
    move-exception v1

    goto :goto_3

    .line 183
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " calls with null fd"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-boolean v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPrivileged:Z

    if-eqz v1, :cond_3

    .line 188
    iget v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mType:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    .line 192
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mFd:Ljava/io/FileDescriptor;

    .line 193
    iput-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mOldFd:Ljava/io/FileDescriptor;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_1
    nop

    .line 201
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mCallback:Landroid/net/ISocketKeepaliveCallback;

    invoke-interface {v0}, Landroid/net/ISocketKeepaliveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 204
    goto :goto_2

    .line 202
    :catch_1
    move-exception v0

    .line 203
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->binderDied()V

    .line 205
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void

    .line 189
    :cond_2
    :try_start_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "null fd is not allowed for tcp socket keepalives."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    .end local p1    # "this$0":Lcom/android/server/connectivity/KeepaliveTracker;
    .end local p2    # "callback":Landroid/net/ISocketKeepaliveCallback;
    .end local p3    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local p4    # "packet":Landroid/net/KeepalivePacketData;
    .end local p5    # "interval":I
    .end local p6    # "type":I
    .end local p7    # "fd":Ljava/io/FileDescriptor;
    throw v1

    .line 185
    .restart local p0    # "this":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    .restart local p1    # "this$0":Lcom/android/server/connectivity/KeepaliveTracker;
    .restart local p2    # "callback":Landroid/net/ISocketKeepaliveCallback;
    .restart local p3    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .restart local p4    # "packet":Landroid/net/KeepalivePacketData;
    .restart local p5    # "interval":I
    .restart local p6    # "type":I
    .restart local p7    # "fd":Ljava/io/FileDescriptor;
    :cond_3
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "null fd is not allowed for unprivileged access."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    .end local p1    # "this$0":Lcom/android/server/connectivity/KeepaliveTracker;
    .end local p2    # "callback":Landroid/net/ISocketKeepaliveCallback;
    .end local p3    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local p4    # "packet":Landroid/net/KeepalivePacketData;
    .end local p5    # "interval":I
    .end local p6    # "type":I
    .end local p7    # "fd":Ljava/io/FileDescriptor;
    throw v1
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0

    .line 196
    .local v1, "e":Landroid/system/ErrnoException;
    .restart local p0    # "this":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    .restart local p1    # "this$0":Lcom/android/server/connectivity/KeepaliveTracker;
    .restart local p2    # "callback":Landroid/net/ISocketKeepaliveCallback;
    .restart local p3    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .restart local p4    # "packet":Landroid/net/KeepalivePacketData;
    .restart local p5    # "interval":I
    .restart local p6    # "type":I
    .restart local p7    # "fd":Ljava/io/FileDescriptor;
    :goto_3
    const-string v2, "Cannot dup fd: "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    new-instance v0, Landroid/net/SocketKeepalive$InvalidSocketException;

    const/16 v2, -0x19

    invoke-direct {v0, v2, v1}, Landroid/net/SocketKeepalive$InvalidSocketException;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;)Landroid/net/ISocketKeepaliveCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    .line 128
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mCallback:Landroid/net/ISocketKeepaliveCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    .line 128
    iget v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mSlot:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    .line 128
    invoke-direct {p0}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->isValid()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    .line 128
    iget v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mStartedState:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    .param p1, "x1"    # I

    .line 128
    iput p1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mStartedState:I

    return p1
.end method

.method private checkInterval()I
    .locals 2

    .line 265
    iget v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mInterval:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    const/16 v1, 0xe10

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 266
    :cond_1
    :goto_0
    const/16 v0, -0x18

    return v0
.end method

.method private checkLimit()I
    .locals 3

    .line 306
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->this$0:Lcom/android/server/connectivity/KeepaliveTracker;

    invoke-static {v0}, Lcom/android/server/connectivity/KeepaliveTracker;->access$100(Lcom/android/server/connectivity/KeepaliveTracker;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 307
    .local v0, "networkKeepalives":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;>;"
    if-nez v0, :cond_0

    .line 308
    const/16 v1, -0x14

    return v1

    .line 310
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->this$0:Lcom/android/server/connectivity/KeepaliveTracker;

    .line 311
    invoke-static {v1}, Lcom/android/server/connectivity/KeepaliveTracker;->access$200(Lcom/android/server/connectivity/KeepaliveTracker;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 310
    invoke-static {v1, v2}, Landroid/net/util/KeepaliveUtils;->getSupportedKeepalivesForNetworkCapabilities([ILandroid/net/NetworkCapabilities;)I

    move-result v1

    .line 312
    .local v1, "supported":I
    if-nez v1, :cond_1

    const/16 v2, -0x1e

    return v2

    .line 313
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v2

    if-le v2, v1, :cond_2

    const/16 v2, -0x20

    return v2

    .line 314
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method private checkNetworkConnected()I
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    const/16 v0, -0x14

    return v0

    .line 251
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private checkPermission()I
    .locals 12

    .line 272
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->this$0:Lcom/android/server/connectivity/KeepaliveTracker;

    invoke-static {v0}, Lcom/android/server/connectivity/KeepaliveTracker;->access$100(Lcom/android/server/connectivity/KeepaliveTracker;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 273
    .local v0, "networkKeepalives":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;>;"
    if-nez v0, :cond_0

    .line 274
    const/16 v1, -0x14

    return v1

    .line 277
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPrivileged:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    .line 279
    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->this$0:Lcom/android/server/connectivity/KeepaliveTracker;

    .line 280
    invoke-static {v1}, Lcom/android/server/connectivity/KeepaliveTracker;->access$200(Lcom/android/server/connectivity/KeepaliveTracker;)[I

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v3, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 279
    invoke-static {v1, v3}, Landroid/net/util/KeepaliveUtils;->getSupportedKeepalivesForNetworkCapabilities([ILandroid/net/NetworkCapabilities;)I

    move-result v1

    .line 282
    .local v1, "supported":I
    const/4 v3, 0x0

    .line 283
    .local v3, "takenUnprivilegedSlots":I
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    .line 284
    .local v5, "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    iget-boolean v6, v5, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPrivileged:Z

    if-nez v6, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 285
    .end local v5    # "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    :cond_2
    goto :goto_0

    .line 286
    :cond_3
    iget-object v4, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->this$0:Lcom/android/server/connectivity/KeepaliveTracker;

    invoke-static {v4}, Lcom/android/server/connectivity/KeepaliveTracker;->access$300(Lcom/android/server/connectivity/KeepaliveTracker;)I

    move-result v4

    sub-int v4, v1, v4

    const/16 v5, -0x20

    if-le v3, v4, :cond_4

    .line 287
    return v5

    .line 291
    :cond_4
    const/4 v4, 0x0

    .line 292
    .local v4, "unprivilegedCountSameUid":I
    iget-object v6, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->this$0:Lcom/android/server/connectivity/KeepaliveTracker;

    invoke-static {v6}, Lcom/android/server/connectivity/KeepaliveTracker;->access$100(Lcom/android/server/connectivity/KeepaliveTracker;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    .line 293
    .local v7, "kaForNetwork":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;>;"
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    .line 294
    .local v9, "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    iget v10, v9, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mUid:I

    iget v11, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mUid:I

    if-ne v10, v11, :cond_5

    .line 295
    add-int/lit8 v4, v4, 0x1

    .line 297
    .end local v9    # "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    :cond_5
    goto :goto_2

    .line 298
    .end local v7    # "kaForNetwork":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;>;"
    :cond_6
    goto :goto_1

    .line 299
    :cond_7
    iget-object v6, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->this$0:Lcom/android/server/connectivity/KeepaliveTracker;

    invoke-static {v6}, Lcom/android/server/connectivity/KeepaliveTracker;->access$400(Lcom/android/server/connectivity/KeepaliveTracker;)I

    move-result v6

    if-le v4, v6, :cond_8

    .line 300
    return v5

    .line 302
    :cond_8
    return v2
.end method

.method private checkSourceAddress()I
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 257
    .local v1, "address":Ljava/net/InetAddress;
    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPacket:Landroid/net/KeepalivePacketData;

    invoke-virtual {v2}, Landroid/net/KeepalivePacketData;->getSrcAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    const/4 v0, 0x0

    return v0

    .line 260
    .end local v1    # "address":Ljava/net/InetAddress;
    :cond_0
    goto :goto_0

    .line 261
    :cond_1
    const/16 v0, -0x15

    return v0
.end method

.method private isValid()I
    .locals 3

    .line 318
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    monitor-enter v0

    .line 319
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->checkInterval()I

    move-result v1

    .line 320
    .local v1, "error":I
    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->checkLimit()I

    move-result v2

    move v1, v2

    .line 321
    :cond_0
    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->checkPermission()I

    move-result v2

    move v1, v2

    .line 322
    :cond_1
    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->checkNetworkConnected()I

    move-result v2

    move v1, v2

    .line 323
    :cond_2
    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->checkSourceAddress()I

    move-result v2

    move v1, v2

    .line 324
    :cond_3
    monitor-exit v0

    return v1

    .line 325
    .end local v1    # "error":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private startedStateString(I)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # I

    .line 212
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 216
    const-string v0, "STOPPING"

    return-object v0

    .line 218
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_1
    const-string v0, "STARTED"

    return-object v0

    .line 214
    :cond_2
    const-string v0, "STARTING"

    return-object v0

    .line 213
    :cond_3
    const-string v0, "NOT_STARTED"

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .line 238
    const/16 v0, -0xa

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->stop(I)V

    .line 239
    return-void
.end method

.method public getNai()Lcom/android/server/connectivity/NetworkAgentInfo;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    return-object v0
.end method

.method onFileDescriptorInitiatedStop(I)V
    .locals 3
    .param p1, "socketKeepaliveReason"    # I

    .line 434
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->this$0:Lcom/android/server/connectivity/KeepaliveTracker;

    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mSlot:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStopKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 435
    return-void
.end method

.method start(I)V
    .locals 8
    .param p1, "slot"    # I

    .line 329
    iput p1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mSlot:I

    .line 330
    invoke-direct {p0}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->isValid()I

    move-result v0

    .line 331
    .local v0, "error":I
    if-nez v0, :cond_2

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting keepalive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeepaliveTracker"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mType:I

    const/4 v3, 0x1

    const v4, 0x8100b

    const/4 v5, 0x0

    const v6, 0x81010

    const/4 v7, 0x2

    if-eq v1, v3, :cond_1

    if-eq v1, v7, :cond_0

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting keepalive with unknown type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->this$0:Lcom/android/server/connectivity/KeepaliveTracker;

    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget v3, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mSlot:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStopKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 356
    return-void

    .line 342
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->this$0:Lcom/android/server/connectivity/KeepaliveTracker;

    invoke-static {v1}, Lcom/android/server/connectivity/KeepaliveTracker;->access$500(Lcom/android/server/connectivity/KeepaliveTracker;)Lcom/android/server/connectivity/TcpKeepaliveController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mFd:Ljava/io/FileDescriptor;

    iget v3, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mSlot:I

    invoke-virtual {v1, v2, p0, v3}, Lcom/android/server/connectivity/TcpKeepaliveController;->startSocketMonitor(Ljava/io/FileDescriptor;Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;I)V
    :try_end_0
    .catch Landroid/net/SocketKeepalive$InvalidSocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    nop

    .line 347
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPacket:Landroid/net/KeepalivePacketData;

    invoke-virtual {v1, v6, p1, v5, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 350
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mInterval:I

    iget-object v3, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPacket:Landroid/net/KeepalivePacketData;

    .line 351
    invoke-virtual {v1, v4, p1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 352
    goto :goto_0

    .line 343
    :catch_0
    move-exception v1

    .line 344
    .local v1, "e":Landroid/net/SocketKeepalive$InvalidSocketException;
    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->this$0:Lcom/android/server/connectivity/KeepaliveTracker;

    iget-object v3, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget v4, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mSlot:I

    const/16 v5, -0x19

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStopKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 345
    return-void

    .line 335
    .end local v1    # "e":Landroid/net/SocketKeepalive$InvalidSocketException;
    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPacket:Landroid/net/KeepalivePacketData;

    invoke-virtual {v1, v6, p1, v5, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 337
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mInterval:I

    iget-object v3, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPacket:Landroid/net/KeepalivePacketData;

    .line 338
    invoke-virtual {v1, v4, p1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 339
    nop

    .line 358
    :goto_0
    iput v7, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mStartedState:I

    .line 363
    return-void

    .line 360
    :cond_2
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->this$0:Lcom/android/server/connectivity/KeepaliveTracker;

    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget v3, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mSlot:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStopKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 361
    return-void
.end method

.method stop(I)V
    .locals 6
    .param p1, "reason"    # I

    .line 366
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 367
    .local v0, "uid":I
    iget v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mUid:I

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping keepalive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "KeepaliveTracker"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mStartedState:I

    const/4 v4, 0x1

    if-eq v1, v4, :cond_3

    const/4 v5, 0x4

    if-eq v1, v5, :cond_2

    .line 384
    iput v5, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mStartedState:I

    .line 385
    iget v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mType:I

    if-eq v1, v4, :cond_1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping keepalive with unknown type: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mType:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 387
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->this$0:Lcom/android/server/connectivity/KeepaliveTracker;

    invoke-static {v1}, Lcom/android/server/connectivity/KeepaliveTracker;->access$500(Lcom/android/server/connectivity/KeepaliveTracker;)Lcom/android/server/connectivity/TcpKeepaliveController;

    move-result-object v1

    iget v4, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mSlot:I

    invoke-virtual {v1, v4}, Lcom/android/server/connectivity/TcpKeepaliveController;->stopSocketMonitor(I)V

    .line 390
    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v4, 0x8100c

    iget v5, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mSlot:I

    invoke-virtual {v1, v4, v5}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 391
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v4, 0x81011

    iget v5, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mSlot:I

    invoke-virtual {v1, v4, v5}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 393
    goto :goto_0

    .line 382
    :cond_2
    return-void

    .line 378
    :cond_3
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->this$0:Lcom/android/server/connectivity/KeepaliveTracker;

    iget-object v4, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget v5, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mSlot:I

    invoke-static {v1, v4, v5}, Lcom/android/server/connectivity/KeepaliveTracker;->access$600(Lcom/android/server/connectivity/KeepaliveTracker;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 379
    nop

    .line 401
    :goto_0
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mFd:Ljava/io/FileDescriptor;

    if-eqz v1, :cond_5

    .line 403
    :try_start_0
    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    .line 404
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mOldFd:Ljava/io/FileDescriptor;

    if-eqz v1, :cond_4

    .line 405
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mOldFd:Ljava/io/FileDescriptor;

    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :cond_4
    goto :goto_1

    .line 407
    :catch_0
    move-exception v1

    .line 410
    .local v1, "e":Landroid/system/ErrnoException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error closing fd for keepalive "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mSlot:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    .end local v1    # "e":Landroid/system/ErrnoException;
    :cond_5
    :goto_1
    if-nez p1, :cond_6

    .line 416
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mCallback:Landroid/net/ISocketKeepaliveCallback;

    invoke-interface {v1}, Landroid/net/ISocketKeepaliveCallback;->onStopped()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 417
    :catch_1
    move-exception v1

    .line 418
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Discarded onStop callback: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2
    goto :goto_4

    .line 420
    :cond_6
    const/4 v1, -0x2

    if-ne p1, v1, :cond_7

    .line 422
    :try_start_2
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mCallback:Landroid/net/ISocketKeepaliveCallback;

    invoke-interface {v1}, Landroid/net/ISocketKeepaliveCallback;->onDataReceived()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 423
    :catch_2
    move-exception v1

    .line 424
    .restart local v1    # "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Discarded onDataReceived callback: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_3
    goto :goto_4

    .line 427
    :cond_7
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->this$0:Lcom/android/server/connectivity/KeepaliveTracker;

    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mCallback:Landroid/net/ISocketKeepaliveCallback;

    invoke-virtual {v1, v2, p1}, Lcom/android/server/connectivity/KeepaliveTracker;->notifyErrorCallback(Landroid/net/ISocketKeepaliveCallback;I)V

    .line 430
    :goto_4
    invoke-virtual {p0}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->unlinkDeathRecipient()V

    .line 431
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeepaliveInfo [ type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " startedState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mStartedState:I

    .line 225
    invoke-direct {p0, v1}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->startedStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPacket:Landroid/net/KeepalivePacketData;

    .line 227
    invoke-virtual {v1}, Landroid/net/KeepalivePacketData;->getSrcAddress()Ljava/net/InetAddress;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPacket:Landroid/net/KeepalivePacketData;

    invoke-virtual {v2}, Landroid/net/KeepalivePacketData;->getSrcPort()I

    move-result v2

    invoke-static {v1, v2}, Landroid/net/util/IpUtils;->addressAndPortToString(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPacket:Landroid/net/KeepalivePacketData;

    .line 229
    invoke-virtual {v1}, Landroid/net/KeepalivePacketData;->getDstAddress()Ljava/net/InetAddress;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPacket:Landroid/net/KeepalivePacketData;

    invoke-virtual {v2}, Landroid/net/KeepalivePacketData;->getDstPort()I

    move-result v2

    invoke-static {v1, v2}, Landroid/net/util/IpUtils;->addressAndPortToString(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " privileged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPrivileged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " packetData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPacket:Landroid/net/KeepalivePacketData;

    .line 232
    invoke-virtual {v1}, Landroid/net/KeepalivePacketData;->getPacket()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    return-object v0
.end method

.method unlinkDeathRecipient()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mCallback:Landroid/net/ISocketKeepaliveCallback;

    if-eqz v0, :cond_0

    .line 243
    invoke-interface {v0}, Landroid/net/ISocketKeepaliveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 245
    :cond_0
    return-void
.end method
