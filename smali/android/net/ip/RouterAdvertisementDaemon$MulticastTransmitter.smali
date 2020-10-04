.class final Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;
.super Ljava/lang/Thread;
.source "RouterAdvertisementDaemon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/RouterAdvertisementDaemon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MulticastTransmitter"
.end annotation


# instance fields
.field private final mRandom:Ljava/util/Random;

.field private final mUrgentAnnouncements:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Landroid/net/ip/RouterAdvertisementDaemon;


# direct methods
.method private constructor <init>(Landroid/net/ip/RouterAdvertisementDaemon;)V
    .locals 1

    .line 688
    iput-object p1, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 689
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->mRandom:Ljava/util/Random;

    .line 690
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->mUrgentAnnouncements:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/ip/RouterAdvertisementDaemon;Landroid/net/ip/RouterAdvertisementDaemon$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/ip/RouterAdvertisementDaemon;
    .param p2, "x1"    # Landroid/net/ip/RouterAdvertisementDaemon$1;

    .line 688
    invoke-direct {p0, p1}, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;-><init>(Landroid/net/ip/RouterAdvertisementDaemon;)V

    return-void
.end method

.method private getNextMulticastTransmitDelayMs()J
    .locals 4

    .line 741
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->getNextMulticastTransmitDelaySec()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method private getNextMulticastTransmitDelaySec()I
    .locals 4

    .line 722
    const/4 v0, 0x0

    .line 723
    .local v0, "deprecationInProgress":Z
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-static {v1}, Landroid/net/ip/RouterAdvertisementDaemon;->access$900(Landroid/net/ip/RouterAdvertisementDaemon;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 724
    :try_start_0
    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-static {v2}, Landroid/net/ip/RouterAdvertisementDaemon;->access$1300(Landroid/net/ip/RouterAdvertisementDaemon;)I

    move-result v2

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    .line 726
    const v2, 0x15180

    monitor-exit v1

    return v2

    .line 728
    :cond_0
    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-static {v2}, Landroid/net/ip/RouterAdvertisementDaemon;->access$1000(Landroid/net/ip/RouterAdvertisementDaemon;)Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 729
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 731
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->mUrgentAnnouncements:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v1

    .line 732
    .local v1, "urgentPending":I
    if-gtz v1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_1

    .line 736
    :cond_2
    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->mRandom:Ljava/util/Random;

    const/16 v3, 0x12c

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v2, v3

    return v2

    .line 733
    :cond_3
    :goto_1
    const/4 v2, 0x3

    return v2

    .line 729
    .end local v1    # "urgentPending":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public hup()V
    .locals 2

    .line 717
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->mUrgentAnnouncements:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 718
    invoke-virtual {p0}, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->interrupt()V

    .line 719
    return-void
.end method

.method public run()V
    .locals 2

    .line 694
    :goto_0
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->access$300(Landroid/net/ip/RouterAdvertisementDaemon;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 696
    :try_start_0
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->getNextMulticastTransmitDelayMs()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    goto :goto_1

    .line 697
    :catch_0
    move-exception v0

    .line 701
    :goto_1
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->access$800(Landroid/net/ip/RouterAdvertisementDaemon;)Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/ip/RouterAdvertisementDaemon;->access$700(Landroid/net/ip/RouterAdvertisementDaemon;Ljava/net/InetSocketAddress;)V

    .line 702
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->access$900(Landroid/net/ip/RouterAdvertisementDaemon;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 703
    :try_start_1
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-static {v1}, Landroid/net/ip/RouterAdvertisementDaemon;->access$1000(Landroid/net/ip/RouterAdvertisementDaemon;)Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    move-result-object v1

    invoke-static {v1}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->access$1100(Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 706
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-static {v1}, Landroid/net/ip/RouterAdvertisementDaemon;->access$1200(Landroid/net/ip/RouterAdvertisementDaemon;)V

    .line 708
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 710
    :cond_1
    return-void
.end method
