.class public Lcom/android/server/connectivity/KeepaliveTracker;
.super Ljava/lang/Object;
.source "KeepaliveTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final PERMISSION:Ljava/lang/String; = "android.permission.PACKET_KEEPALIVE_OFFLOAD"

.field private static final TAG:Ljava/lang/String; = "KeepaliveTracker"


# instance fields
.field private final mAllowedUnprivilegedSlotsForUid:I

.field private final mConnectivityServiceHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private final mKeepalives:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/server/connectivity/NetworkAgentInfo;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mReservedPrivilegedSlots:I

.field private final mSupportedKeepalives:[I

.field private final mTcpController:Lcom/android/server/connectivity/TcpKeepaliveController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    .line 112
    iput-object p2, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mConnectivityServiceHandler:Landroid/os/Handler;

    .line 113
    new-instance v0, Lcom/android/server/connectivity/TcpKeepaliveController;

    invoke-direct {v0, p2}, Lcom/android/server/connectivity/TcpKeepaliveController;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mTcpController:Lcom/android/server/connectivity/TcpKeepaliveController;

    .line 114
    iput-object p1, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mContext:Landroid/content/Context;

    .line 115
    invoke-static {p1}, Landroid/net/util/KeepaliveUtils;->getSupportedKeepalives(Landroid/content/Context;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mSupportedKeepalives:[I

    .line 116
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mReservedPrivilegedSlots:I

    .line 118
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mAllowedUnprivilegedSlotsForUid:I

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/KeepaliveTracker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/KeepaliveTracker;

    .line 81
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/KeepaliveTracker;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/KeepaliveTracker;

    .line 81
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/KeepaliveTracker;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/KeepaliveTracker;

    .line 81
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mSupportedKeepalives:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/KeepaliveTracker;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/KeepaliveTracker;

    .line 81
    iget v0, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mReservedPrivilegedSlots:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/KeepaliveTracker;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/KeepaliveTracker;

    .line 81
    iget v0, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mAllowedUnprivilegedSlotsForUid:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/KeepaliveTracker;)Lcom/android/server/connectivity/TcpKeepaliveController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/KeepaliveTracker;

    .line 81
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mTcpController:Lcom/android/server/connectivity/TcpKeepaliveController;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/KeepaliveTracker;Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/KeepaliveTracker;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "x2"    # I

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/KeepaliveTracker;->cleanupStoppedKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    return-void
.end method

.method private cleanupStoppedKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .locals 7
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "slot"    # I

    .line 504
    invoke-static {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->toShortString(Lcom/android/server/connectivity/NetworkAgentInfo;)Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, "networkName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 506
    .local v1, "networkKeepalives":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;>;"
    const-string v2, "KeepaliveTracker"

    if-nez v1, :cond_0

    .line 507
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to remove keepalive on nonexistent network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    return-void

    .line 510
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    .line 511
    .local v3, "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    const-string v4, " on "

    if-nez v3, :cond_1

    .line 512
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempt to remove nonexistent keepalive "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    return-void

    .line 515
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remove keepalive "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " remains."

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 516
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 519
    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    :cond_2
    return-void
.end method

.method private findFirstFreeSlot(Lcom/android/server/connectivity/NetworkAgentInfo;)I
    .locals 3
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 448
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 449
    .local v0, "networkKeepalives":Ljava/util/HashMap;
    if-nez v0, :cond_0

    .line 450
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 451
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    :cond_0
    const/4 v1, 0x1

    .local v1, "slot":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v2

    if-gt v1, v2, :cond_2

    .line 458
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 459
    return v1

    .line 457
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 462
    :cond_2
    return v1
.end method

.method public static isNattKeepaliveSocketValid(Ljava/io/FileDescriptor;I)Z
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "resourceId"    # I

    .line 731
    if-nez p0, :cond_0

    .line 732
    const/4 v0, 0x0

    return v0

    .line 734
    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 7
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Supported Socket keepalives: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mSupportedKeepalives:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reserved Privileged keepalives: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mReservedPrivilegedSlots:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Allowed Unprivileged keepalives per uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mAllowedUnprivilegedSlotsForUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 741
    const-string v0, "Socket keepalives:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 742
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 743
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 744
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 745
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 746
    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 747
    .local v3, "slot":I
    iget-object v4, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    .line 748
    .local v4, "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 749
    .end local v3    # "slot":I
    .end local v4    # "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    goto :goto_1

    .line 750
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 751
    .end local v1    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    goto :goto_0

    .line 752
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 753
    return-void
.end method

.method public handleCheckKeepalivesStillValid(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 7
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 524
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 525
    .local v0, "networkKeepalives":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;>;"
    if-eqz v0, :cond_2

    .line 526
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 527
    .local v1, "invalidKeepalives":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 528
    .local v3, "slot":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    invoke-static {v4}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->access$800(Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;)I

    move-result v4

    .line 529
    .local v4, "error":I
    if-eqz v4, :cond_0

    .line 530
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    .end local v3    # "slot":I
    .end local v4    # "error":I
    :cond_0
    goto :goto_0

    .line 533
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 534
    .local v3, "slotAndError":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, p1, v4, v5}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStopKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 535
    .end local v3    # "slotAndError":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_1

    .line 537
    .end local v1    # "invalidKeepalives":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    :cond_2
    return-void
.end method

.method public handleEventSocketKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/os/Message;)V
    .locals 9
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "message"    # Landroid/os/Message;

    .line 542
    iget v0, p2, Landroid/os/Message;->arg1:I

    .line 543
    .local v0, "slot":I
    iget v1, p2, Landroid/os/Message;->arg2:I

    .line 545
    .local v1, "reason":I
    const/4 v2, 0x0

    .line 547
    .local v2, "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    .line 548
    :catch_0
    move-exception v3

    :goto_0
    nop

    .line 549
    const-string v3, "Event "

    const-string v4, " on "

    const-string v5, ","

    const-string v6, "KeepaliveTracker"

    if-nez v2, :cond_0

    .line 550
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Landroid/os/Message;->what:I

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for unknown keepalive "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 550
    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    return-void

    .line 570
    :cond_0
    const/4 v7, 0x2

    invoke-static {v2}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->access$900(Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;)I

    move-result v8

    if-ne v7, v8, :cond_2

    .line 571
    if-nez v1, :cond_1

    .line 573
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Started keepalive "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->access$902(Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;I)I

    .line 576
    :try_start_1
    invoke-static {v2}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->access$1000(Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;)Landroid/net/ISocketKeepaliveCallback;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/net/ISocketKeepaliveCallback;->onStarted(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 577
    :catch_1
    move-exception v3

    .line 578
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Discarded onStarted("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") callback"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    goto/16 :goto_2

    .line 581
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to start keepalive "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStopKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    goto :goto_2

    .line 586
    :cond_2
    const/4 v7, 0x4

    invoke-static {v2}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->access$900(Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;)I

    move-result v8

    if-ne v7, v8, :cond_3

    .line 588
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stopped keepalive "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " stopped: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->access$902(Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;I)I

    .line 591
    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/KeepaliveTracker;->cleanupStoppedKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    goto :goto_2

    .line 593
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Landroid/os/Message;->what:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for keepalive in wrong state: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    invoke-virtual {v2}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 593
    invoke-static {v6, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :goto_2
    return-void
.end method

.method public handleStartKeepalive(Landroid/os/Message;)V
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .line 466
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    .line 467
    .local v0, "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    invoke-virtual {v0}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->getNai()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    .line 468
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-direct {p0, v1}, Lcom/android/server/connectivity/KeepaliveTracker;->findFirstFreeSlot(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    move-result v2

    .line 469
    .local v2, "slot":I
    iget-object v3, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    invoke-virtual {v0, v2}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->start(I)V

    .line 471
    return-void
.end method

.method public handleStopAllKeepalives(Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .locals 5
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "reason"    # I

    .line 474
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 475
    .local v0, "networkKeepalives":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;>;"
    if-eqz v0, :cond_0

    .line 476
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 477
    .local v1, "kalist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    .line 478
    .local v3, "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    invoke-virtual {v3, p2}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->stop(I)V

    .line 481
    invoke-static {v3}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->access$700(Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;)I

    move-result v4

    invoke-direct {p0, p1, v4}, Lcom/android/server/connectivity/KeepaliveTracker;->cleanupStoppedKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 482
    .end local v3    # "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    goto :goto_0

    .line 484
    .end local v1    # "kalist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;>;"
    :cond_0
    return-void
.end method

.method public handleStopKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;II)V
    .locals 6
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "slot"    # I
    .param p3, "reason"    # I

    .line 487
    invoke-static {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->toShortString(Lcom/android/server/connectivity/NetworkAgentInfo;)Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, "networkName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 489
    .local v1, "networkKeepalives":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;>;"
    const-string v2, "KeepaliveTracker"

    if-nez v1, :cond_0

    .line 490
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to stop keepalive on nonexistent network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    return-void

    .line 493
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    .line 494
    .local v3, "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    if-nez v3, :cond_1

    .line 495
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempt to stop nonexistent keepalive "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    return-void

    .line 498
    :cond_1
    invoke-virtual {v3, p3}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->stop(I)V

    .line 501
    return-void
.end method

.method notifyErrorCallback(Landroid/net/ISocketKeepaliveCallback;I)V
    .locals 3
    .param p1, "cb"    # Landroid/net/ISocketKeepaliveCallback;
    .param p2, "error"    # I

    .line 441
    :try_start_0
    invoke-interface {p1, p2}, Landroid/net/ISocketKeepaliveCallback;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    goto :goto_0

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Discarded onError("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") callback"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeepaliveTracker"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public startNattKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/io/FileDescriptor;IILandroid/net/ISocketKeepaliveCallback;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "resourceId"    # I
    .param p4, "intervalSeconds"    # I
    .param p5, "cb"    # Landroid/net/ISocketKeepaliveCallback;
    .param p6, "srcAddrString"    # Ljava/lang/String;
    .param p7, "dstAddrString"    # Ljava/lang/String;
    .param p8, "dstPort"    # I

    .line 704
    move-object v10, p0

    move-object/from16 v11, p5

    invoke-static {p2, p3}, Lcom/android/server/connectivity/KeepaliveTracker;->isNattKeepaliveSocketValid(Ljava/io/FileDescriptor;I)Z

    move-result v0

    const/16 v1, -0x19

    if-nez v0, :cond_0

    .line 705
    invoke-virtual {p0, v11, v1}, Lcom/android/server/connectivity/KeepaliveTracker;->notifyErrorCallback(Landroid/net/ISocketKeepaliveCallback;I)V

    .line 709
    :cond_0
    const/4 v2, 0x0

    .line 711
    .local v2, "srcPort":I
    :try_start_0
    invoke-static {p2}, Landroid/system/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v0

    .line 712
    .local v0, "srcSockAddr":Ljava/net/SocketAddress;
    move-object v3, v0

    check-cast v3, Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    .line 715
    .end local v0    # "srcSockAddr":Ljava/net/SocketAddress;
    move v0, v2

    goto :goto_0

    .line 713
    :catch_0
    move-exception v0

    .line 714
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {p0, v11, v1}, Lcom/android/server/connectivity/KeepaliveTracker;->notifyErrorCallback(Landroid/net/ISocketKeepaliveCallback;I)V

    move v0, v2

    .line 718
    .end local v2    # "srcPort":I
    .local v0, "srcPort":I
    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move v7, v0

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/connectivity/KeepaliveTracker;->startNattKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/io/FileDescriptor;ILandroid/net/ISocketKeepaliveCallback;Ljava/lang/String;ILjava/lang/String;I)V

    .line 720
    return-void
.end method

.method public startNattKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/io/FileDescriptor;ILandroid/net/ISocketKeepaliveCallback;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 16
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "intervalSeconds"    # I
    .param p4, "cb"    # Landroid/net/ISocketKeepaliveCallback;
    .param p5, "srcAddrString"    # Ljava/lang/String;
    .param p6, "srcPort"    # I
    .param p7, "dstAddrString"    # Ljava/lang/String;
    .param p8, "dstPort"    # I

    .line 610
    move-object/from16 v9, p0

    move-object/from16 v10, p4

    const-string v11, "KeepaliveTracker"

    if-nez p1, :cond_0

    .line 611
    const/16 v0, -0x14

    invoke-virtual {v9, v10, v0}, Lcom/android/server/connectivity/KeepaliveTracker;->notifyErrorCallback(Landroid/net/ISocketKeepaliveCallback;I)V

    .line 612
    return-void

    .line 617
    :cond_0
    :try_start_0
    invoke-static/range {p5 .. p5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    move-object v12, v0

    .line 618
    .local v12, "srcAddress":Ljava/net/InetAddress;
    invoke-static/range {p7 .. p7}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v13, v0

    .line 622
    .local v13, "dstAddress":Ljava/net/InetAddress;
    nop

    .line 626
    const/16 v0, 0x1194

    move/from16 v14, p6

    :try_start_1
    invoke-static {v12, v14, v13, v0}, Landroid/net/NattKeepalivePacketData;->nattKeepalivePacket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Landroid/net/NattKeepalivePacketData;

    move-result-object v5
    :try_end_1
    .catch Landroid/net/InvalidPacketException; {:try_start_1 .. :try_end_1} :catch_1

    .line 631
    .local v5, "packet":Landroid/net/KeepalivePacketData;
    nop

    .line 632
    const/4 v15, 0x0

    .line 634
    .local v15, "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    :try_start_2
    new-instance v0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    const/4 v7, 0x1

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p1

    move/from16 v6, p3

    move-object/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;-><init>(Lcom/android/server/connectivity/KeepaliveTracker;Landroid/net/ISocketKeepaliveCallback;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/KeepalivePacketData;IILjava/io/FileDescriptor;)V
    :try_end_2
    .catch Landroid/net/SocketKeepalive$InvalidSocketException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    .line 640
    .end local v15    # "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    .local v0, "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    nop

    .line 641
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created keepalive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-object v1, v9, Lcom/android/server/connectivity/KeepaliveTracker;->mConnectivityServiceHandler:Landroid/os/Handler;

    const v2, 0x8100b

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 643
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 644
    return-void

    .line 636
    .end local v0    # "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    .restart local v15    # "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    :catch_0
    move-exception v0

    .line 637
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Fail to construct keepalive"

    invoke-static {v11, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 638
    const/16 v1, -0x19

    invoke-virtual {v9, v10, v1}, Lcom/android/server/connectivity/KeepaliveTracker;->notifyErrorCallback(Landroid/net/ISocketKeepaliveCallback;I)V

    .line 639
    return-void

    .line 628
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "packet":Landroid/net/KeepalivePacketData;
    .end local v15    # "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 629
    .local v0, "e":Landroid/net/InvalidPacketException;
    invoke-virtual {v0}, Landroid/net/InvalidPacketException;->getError()I

    move-result v1

    invoke-virtual {v9, v10, v1}, Lcom/android/server/connectivity/KeepaliveTracker;->notifyErrorCallback(Landroid/net/ISocketKeepaliveCallback;I)V

    .line 630
    return-void

    .line 619
    .end local v0    # "e":Landroid/net/InvalidPacketException;
    .end local v12    # "srcAddress":Ljava/net/InetAddress;
    .end local v13    # "dstAddress":Ljava/net/InetAddress;
    :catch_2
    move-exception v0

    move/from16 v14, p6

    .line 620
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/16 v1, -0x15

    invoke-virtual {v9, v10, v1}, Lcom/android/server/connectivity/KeepaliveTracker;->notifyErrorCallback(Landroid/net/ISocketKeepaliveCallback;I)V

    .line 621
    return-void
.end method

.method public startTcpKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/io/FileDescriptor;ILandroid/net/ISocketKeepaliveCallback;)V
    .locals 11
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "intervalSeconds"    # I
    .param p4, "cb"    # Landroid/net/ISocketKeepaliveCallback;

    .line 660
    const-string v0, "KeepaliveTracker"

    if-nez p1, :cond_0

    .line 661
    const/16 v0, -0x14

    invoke-virtual {p0, p4, v0}, Lcom/android/server/connectivity/KeepaliveTracker;->notifyErrorCallback(Landroid/net/ISocketKeepaliveCallback;I)V

    .line 662
    return-void

    .line 667
    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/android/server/connectivity/TcpKeepaliveController;->getTcpKeepalivePacket(Ljava/io/FileDescriptor;)Landroid/net/TcpKeepalivePacketData;

    move-result-object v5
    :try_end_0
    .catch Landroid/net/SocketKeepalive$InvalidSocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/net/InvalidPacketException; {:try_start_0 .. :try_end_0} :catch_1

    .line 674
    .local v5, "packet":Landroid/net/TcpKeepalivePacketData;
    nop

    .line 675
    const/4 v9, 0x0

    .line 677
    .local v9, "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    :try_start_1
    new-instance v10, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    const/4 v7, 0x2

    move-object v1, v10

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move v6, p3

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;-><init>(Lcom/android/server/connectivity/KeepaliveTracker;Landroid/net/ISocketKeepaliveCallback;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/KeepalivePacketData;IILjava/io/FileDescriptor;)V
    :try_end_1
    .catch Landroid/net/SocketKeepalive$InvalidSocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v10

    .line 683
    .end local v9    # "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    .local v1, "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    nop

    .line 684
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created keepalive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mConnectivityServiceHandler:Landroid/os/Handler;

    const v2, 0x8100b

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 686
    return-void

    .line 679
    .end local v1    # "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    .restart local v9    # "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    :catch_0
    move-exception v1

    .line 680
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to construct keepalive e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    const/16 v0, -0x19

    invoke-virtual {p0, p4, v0}, Lcom/android/server/connectivity/KeepaliveTracker;->notifyErrorCallback(Landroid/net/ISocketKeepaliveCallback;I)V

    .line 682
    return-void

    .line 671
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "packet":Landroid/net/TcpKeepalivePacketData;
    .end local v9    # "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    :catch_1
    move-exception v0

    .line 672
    .local v0, "e":Landroid/net/InvalidPacketException;
    invoke-virtual {v0}, Landroid/net/InvalidPacketException;->getError()I

    move-result v1

    invoke-virtual {p0, p4, v1}, Lcom/android/server/connectivity/KeepaliveTracker;->notifyErrorCallback(Landroid/net/ISocketKeepaliveCallback;I)V

    .line 673
    return-void

    .line 668
    .end local v0    # "e":Landroid/net/InvalidPacketException;
    :catch_2
    move-exception v0

    .line 669
    .local v0, "e":Landroid/net/SocketKeepalive$InvalidSocketException;
    iget v1, v0, Landroid/net/SocketKeepalive$InvalidSocketException;->error:I

    invoke-virtual {p0, p4, v1}, Lcom/android/server/connectivity/KeepaliveTracker;->notifyErrorCallback(Landroid/net/ISocketKeepaliveCallback;I)V

    .line 670
    return-void
.end method
