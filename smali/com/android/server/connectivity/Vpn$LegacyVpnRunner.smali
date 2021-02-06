.class Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
.super Lcom/android/server/connectivity/Vpn$VpnRunner;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LegacyVpnRunner"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LegacyVpnRunner"


# instance fields
.field private final mArguments:[[Ljava/lang/String;

.field private mBringupStartTime:J

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mDaemons:[Ljava/lang/String;

.field private final mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mOuterInterface:Ljava/lang/String;

.field private final mProfile:Lcom/android/internal/net/VpnProfile;

.field private final mSockets:[Landroid/net/LocalSocket;

.field final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/net/VpnProfile;)V
    .locals 9
    .param p2, "config"    # Lcom/android/internal/net/VpnConfig;
    .param p3, "racoon"    # [Ljava/lang/String;
    .param p4, "mtpd"    # [Ljava/lang/String;
    .param p5, "profile"    # Lcom/android/internal/net/VpnProfile;

    .line 2570
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 2571
    const-string v0, "LegacyVpnRunner"

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Vpn$VpnRunner;-><init>(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)V

    .line 2541
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2545
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBringupStartTime:J

    .line 2550
    new-instance v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;-><init>(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2572
    iput-object p2, p1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 2573
    const-string/jumbo v0, "racoon"

    const-string/jumbo v1, "mtpd"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .line 2575
    const/4 v1, 0x2

    new-array v1, v1, [[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v3, 0x1

    aput-object p4, v1, v3

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    .line 2576
    array-length v0, v0

    new-array v0, v0, [Landroid/net/LocalSocket;

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    .line 2584
    iget-object v0, p1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    .line 2586
    iput-object p5, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mProfile:Lcom/android/internal/net/VpnProfile;

    .line 2588
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2589
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->access$500(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 2590
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v1

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .line 2591
    .local v4, "network":Landroid/net/Network;
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v5

    .line 2592
    .local v5, "lp":Landroid/net/LinkProperties;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2593
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v6

    .line 2594
    .local v6, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v6, :cond_0

    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2590
    .end local v4    # "network":Landroid/net/Network;
    .end local v5    # "lp":Landroid/net/LinkProperties;
    .end local v6    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2599
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2600
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2601
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->access$500(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2602
    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 2534
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 2534
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    return-object v0
.end method

.method private bringup()V
    .locals 16

    move-object/from16 v1, p0

    .line 2674
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBringupStartTime:J

    .line 2677
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_1

    aget-object v6, v0, v4

    .line 2678
    .local v6, "daemon":Ljava/lang/String;
    :goto_1
    invoke-static {v6}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2679
    invoke-direct {v1, v5}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    goto :goto_1

    .line 2677
    .end local v6    # "daemon":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2684
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/misc/vpn/state"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    .line 2685
    .local v2, "state":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2686
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 2689
    new-instance v0, Ljava/io/File;

    const-string v4, "/data/misc/vpn/abort"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2692
    const/4 v0, 0x0

    .line 2693
    .local v0, "restart":Z
    iget-object v4, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    array-length v6, v4

    move v7, v0

    move v0, v3

    .end local v0    # "restart":Z
    .local v7, "restart":Z
    :goto_2
    if-ge v0, v6, :cond_4

    aget-object v8, v4, v0

    .line 2694
    .local v8, "arguments":[Ljava/lang/String;
    if-nez v7, :cond_3

    if-eqz v8, :cond_2

    goto :goto_3

    :cond_2
    move v9, v3

    goto :goto_4

    :cond_3
    :goto_3
    move v9, v5

    :goto_4
    move v7, v9

    .line 2693
    .end local v8    # "arguments":[Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2696
    :cond_4
    if-nez v7, :cond_5

    .line 2697
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$1700(Lcom/android/server/connectivity/Vpn;)V

    .line 2698
    return-void

    .line 2700
    :cond_5
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v6, "execute"

    invoke-virtual {v0, v4, v6}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 2703
    const/4 v0, 0x0

    move v4, v0

    .local v4, "i":I
    :goto_5
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v0, v0

    const/4 v6, -0x1

    if-ge v4, v0, :cond_b

    .line 2704
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v0, v0, v4

    move-object v8, v0

    .line 2705
    .restart local v8    # "arguments":[Ljava/lang/String;
    if-nez v8, :cond_6

    .line 2706
    goto/16 :goto_a

    .line 2710
    :cond_6
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    aget-object v0, v0, v4

    move-object v9, v0

    .line 2711
    .local v9, "daemon":Ljava/lang/String;
    invoke-static {v9}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 2714
    :goto_6
    invoke-static {v9}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2715
    invoke-direct {v1, v5}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    goto :goto_6

    .line 2719
    :cond_7
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    new-instance v10, Landroid/net/LocalSocket;

    invoke-direct {v10}, Landroid/net/LocalSocket;-><init>()V

    aput-object v10, v0, v4

    .line 2720
    new-instance v0, Landroid/net/LocalSocketAddress;

    sget-object v10, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v9, v10}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-object v10, v0

    .line 2726
    .local v10, "address":Landroid/net/LocalSocketAddress;
    :goto_7
    :try_start_1
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    aget-object v0, v0, v4

    invoke-virtual {v0, v10}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2727
    nop

    .line 2733
    :try_start_2
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    aget-object v0, v0, v4

    const/16 v11, 0x1f4

    invoke-virtual {v0, v11}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 2736
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    move-object v11, v0

    .line 2737
    .local v11, "out":Ljava/io/OutputStream;
    array-length v0, v8

    move v12, v3

    :goto_8
    if-ge v12, v0, :cond_9

    aget-object v13, v8, v12

    .line 2738
    .local v13, "argument":Ljava/lang/String;
    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v14

    .line 2739
    .local v14, "bytes":[B
    array-length v15, v14

    const v5, 0xffff

    if-ge v15, v5, :cond_8

    .line 2742
    array-length v5, v14

    shr-int/lit8 v5, v5, 0x8

    invoke-virtual {v11, v5}, Ljava/io/OutputStream;->write(I)V

    .line 2743
    array-length v5, v14

    invoke-virtual {v11, v5}, Ljava/io/OutputStream;->write(I)V

    .line 2744
    invoke-virtual {v11, v14}, Ljava/io/OutputStream;->write([B)V

    .line 2745
    invoke-direct {v1, v3}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    .line 2737
    .end local v13    # "argument":Ljava/lang/String;
    .end local v14    # "bytes":[B
    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x1

    goto :goto_8

    .line 2740
    .restart local v13    # "argument":Ljava/lang/String;
    .restart local v14    # "bytes":[B
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Argument is too large"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    throw v0

    .line 2747
    .end local v13    # "argument":Ljava/lang/String;
    .end local v14    # "bytes":[B
    .restart local p0    # "this":Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :cond_9
    const/16 v0, 0xff

    invoke-virtual {v11, v0}, Ljava/io/OutputStream;->write(I)V

    .line 2748
    invoke-virtual {v11, v0}, Ljava/io/OutputStream;->write(I)V

    .line 2751
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-object v5, v0

    .line 2754
    .local v5, "in":Ljava/io/InputStream;
    :goto_9
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-ne v0, v6, :cond_a

    .line 2755
    nop

    .line 2703
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v8    # "arguments":[Ljava/lang/String;
    .end local v9    # "daemon":Ljava/lang/String;
    .end local v10    # "address":Landroid/net/LocalSocketAddress;
    .end local v11    # "out":Ljava/io/OutputStream;
    :goto_a
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    goto/16 :goto_5

    .line 2759
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v8    # "arguments":[Ljava/lang/String;
    .restart local v9    # "daemon":Ljava/lang/String;
    .restart local v10    # "address":Landroid/net/LocalSocketAddress;
    .restart local v11    # "out":Ljava/io/OutputStream;
    :cond_a
    goto :goto_b

    .line 2757
    :catch_0
    move-exception v0

    .line 2760
    :goto_b
    const/4 v12, 0x1

    :try_start_4
    invoke-direct {v1, v12}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    goto :goto_9

    .line 2728
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v11    # "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    .line 2731
    const/4 v5, 0x1

    invoke-direct {v1, v5}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    const/4 v5, 0x1

    goto :goto_7

    .line 2765
    .end local v4    # "i":I
    .end local v8    # "arguments":[Ljava/lang/String;
    .end local v9    # "daemon":Ljava/lang/String;
    .end local v10    # "address":Landroid/net/LocalSocketAddress;
    :cond_b
    :goto_c
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_f

    .line 2767
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    iget-object v4, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_e

    .line 2768
    iget-object v4, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    aget-object v4, v4, v0

    .line 2769
    .local v4, "daemon":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v5, v5, v0

    if-eqz v5, :cond_d

    invoke-static {v4}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_e

    .line 2770
    :cond_c
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is dead"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    throw v3

    .line 2767
    .end local v4    # "daemon":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :cond_d
    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 2773
    .end local v0    # "i":I
    :cond_e
    const/4 v4, 0x1

    invoke-direct {v1, v4}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    goto :goto_c

    .line 2777
    :cond_f
    const/4 v0, 0x0

    invoke-static {v2, v3, v0}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 2778
    .local v4, "parameters":[Ljava/lang/String;
    array-length v0, v4

    const/4 v5, 0x7

    if-ne v0, v5, :cond_1c

    .line 2783
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    aget-object v5, v4, v3

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 2785
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    const/4 v5, 0x1

    aget-object v5, v4, v5

    invoke-virtual {v0, v5}, Lcom/android/internal/net/VpnConfig;->addLegacyAddresses(Ljava/lang/String;)V

    .line 2787
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    if-eqz v0, :cond_10

    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2788
    :cond_10
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    const/4 v5, 0x2

    aget-object v5, v4, v5

    invoke-virtual {v0, v5}, Lcom/android/internal/net/VpnConfig;->addLegacyRoutes(Ljava/lang/String;)V

    .line 2792
    :cond_11
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v0, :cond_12

    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_13

    .line 2793
    :cond_12
    const/4 v0, 0x3

    aget-object v0, v4, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2794
    .local v0, "dnsServers":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_13

    .line 2795
    iget-object v5, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v5, v5, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 2800
    .end local v0    # "dnsServers":Ljava/lang/String;
    :cond_13
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    if-eqz v0, :cond_14

    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_15

    .line 2801
    :cond_14
    const/4 v0, 0x4

    aget-object v0, v4, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2802
    .local v0, "searchDomains":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_15

    .line 2803
    iget-object v5, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v5, v5, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 2808
    .end local v0    # "searchDomains":Ljava/lang/String;
    :cond_15
    const/4 v0, 0x5

    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_16

    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    goto :goto_f

    :cond_16
    aget-object v0, v4, v0

    :goto_f
    move-object v5, v0

    .line 2810
    .local v5, "endpoint":Ljava/lang/String;
    invoke-static {v5}, Landroid/net/InetAddresses;->isNumericAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 2811
    const-string v0, "LegacyVpnRunner"

    const-string v6, "VPN Endpoint is not numeric. Converting to numeric"

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 2813
    :try_start_5
    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-object v5, v0

    .line 2817
    goto :goto_10

    .line 2814
    :catch_2
    move-exception v0

    .line 2815
    .local v0, "e":Ljava/net/UnknownHostException;
    :try_start_6
    const-string v3, "LegacyVpnRunner"

    const-string v6, "Can\'t parse InetAddress from string: unknown host."

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2816
    return-void

    .line 2820
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :cond_17
    :goto_10
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    if-nez v0, :cond_1a

    .line 2822
    :try_start_7
    invoke-static {v5}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 2823
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v6, v0, Ljava/net/Inet4Address;

    const/16 v8, 0x9

    if-eqz v6, :cond_18

    .line 2824
    iget-object v6, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v6, v6, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v6, v6, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    new-instance v9, Landroid/net/RouteInfo;

    new-instance v10, Landroid/net/IpPrefix;

    const/16 v11, 0x20

    invoke-direct {v10, v0, v11}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v9, v10, v8}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 2825
    :cond_18
    instance-of v6, v0, Ljava/net/Inet6Address;

    if-eqz v6, :cond_19

    .line 2826
    iget-object v6, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v6, v6, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v6, v6, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    new-instance v9, Landroid/net/RouteInfo;

    new-instance v10, Landroid/net/IpPrefix;

    const/16 v11, 0x80

    invoke-direct {v10, v0, v11}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v9, v10, v8}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 2828
    :cond_19
    const-string v6, "LegacyVpnRunner"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown IP address family for VPN endpoint: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 2832
    .end local v0    # "addr":Ljava/net/InetAddress;
    :goto_11
    goto :goto_12

    .line 2830
    :catch_3
    move-exception v0

    .line 2831
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_8
    const-string v6, "LegacyVpnRunner"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception constructing throw route to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2836
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1a
    :goto_12
    iget-object v6, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 2838
    :try_start_9
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 2841
    invoke-direct {v1, v3}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    .line 2844
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v3, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v3, v3, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/android/server/connectivity/Vpn;->access$300(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1b

    .line 2849
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v3, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v3, v3, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/android/server/connectivity/Vpn;->access$202(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;

    .line 2850
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)V

    .line 2852
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$900(Lcom/android/server/connectivity/Vpn;)V

    .line 2854
    const-string v0, "LegacyVpnRunner"

    const-string v3, "Connected!"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2855
    monitor-exit v6

    .line 2860
    .end local v2    # "state":Ljava/io/File;
    .end local v4    # "parameters":[Ljava/lang/String;
    .end local v5    # "endpoint":Ljava/lang/String;
    .end local v7    # "restart":Z
    goto :goto_13

    .line 2845
    .restart local v2    # "state":Ljava/io/File;
    .restart local v4    # "parameters":[Ljava/lang/String;
    .restart local v5    # "endpoint":Ljava/lang/String;
    .restart local v7    # "restart":Z
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v8, v8, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v8, v8, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is gone"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "state":Ljava/io/File;
    .end local v4    # "parameters":[Ljava/lang/String;
    .end local v5    # "endpoint":Ljava/lang/String;
    .end local v7    # "restart":Z
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    throw v0

    .line 2855
    .restart local v2    # "state":Ljava/io/File;
    .restart local v4    # "parameters":[Ljava/lang/String;
    .restart local v5    # "endpoint":Ljava/lang/String;
    .restart local v7    # "restart":Z
    .restart local p0    # "this":Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .end local p0    # "this":Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :try_start_a
    throw v0

    .line 2779
    .end local v5    # "endpoint":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot parse the state"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    throw v0

    .line 2687
    .end local v4    # "parameters":[Ljava/lang/String;
    .end local v7    # "restart":Z
    .restart local p0    # "this":Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot delete the state"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 2856
    .end local v2    # "state":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :catch_4
    move-exception v0

    .line 2857
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LegacyVpnRunner"

    const-string v3, "Aborting"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2858
    iget-object v2, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 2859
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exitVpnRunner()V

    .line 2861
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_13
    return-void
.end method

.method private checkInterruptAndDelay(Z)V
    .locals 6
    .param p1, "sleepLonger"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 2661
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2662
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBringupStartTime:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 2663
    if-eqz p1, :cond_0

    const-wide/16 v2, 0xc8

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 2668
    return-void

    .line 2665
    :cond_1
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v4, "checkpoint"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 2666
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "VPN bringup took too long"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private waitForDaemonsToStop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 2869
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$1800(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2870
    return-void

    .line 2873
    :cond_0
    :goto_0
    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 2874
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 2875
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2876
    return-void

    .line 2874
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_2
    goto :goto_0
.end method


# virtual methods
.method public exitIfOuterInterfaceIs(Ljava/lang/String;)V
    .locals 2
    .param p1, "interfaze"    # Ljava/lang/String;

    .line 2611
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Legacy VPN is going down with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LegacyVpnRunner"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2613
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exitVpnRunner()V

    .line 2615
    :cond_0
    return-void
.end method

.method public exitVpnRunner()V
    .locals 2

    .line 2621
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->interrupt()V

    .line 2625
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$1700(Lcom/android/server/connectivity/Vpn;)V

    .line 2627
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$500(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2628
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 2629
    return-void
.end method

.method public run()V
    .locals 9

    .line 2634
    const-string v0, "LegacyVpnRunner"

    const-string v1, "Waiting"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2635
    const-string v0, "LegacyVpnRunner"

    monitor-enter v0

    .line 2636
    :try_start_0
    const-string v1, "LegacyVpnRunner"

    const-string v2, "Executing"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2638
    const-wide/16 v1, 0x32

    const/4 v3, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->bringup()V

    .line 2639
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->waitForDaemonsToStop()V

    .line 2640
    invoke-static {}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->interrupted()Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2643
    :try_start_2
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    array-length v5, v4

    move v6, v3

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    .line 2644
    .local v7, "socket":Landroid/net/LocalSocket;
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2643
    .end local v7    # "socket":Landroid/net/LocalSocket;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2649
    :cond_0
    :try_start_3
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2651
    goto :goto_1

    .line 2650
    :catch_0
    move-exception v1

    .line 2652
    :goto_1
    :try_start_4
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v2, v1

    :goto_2
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 2653
    .local v4, "daemon":Ljava/lang/String;
    invoke-static {v4}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 2652
    .end local v4    # "daemon":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2643
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    array-length v6, v5

    move v7, v3

    :goto_3
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    .line 2644
    .local v8, "socket":Landroid/net/LocalSocket;
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2643
    .end local v8    # "socket":Landroid/net/LocalSocket;
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 2649
    :cond_1
    :try_start_5
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2651
    goto :goto_4

    .line 2650
    :catch_1
    move-exception v1

    .line 2652
    :goto_4
    :try_start_6
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v2, v1

    :goto_5
    if-ge v3, v2, :cond_2

    aget-object v5, v1, v3

    .line 2653
    .local v5, "daemon":Ljava/lang/String;
    invoke-static {v5}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 2652
    .end local v5    # "daemon":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 2655
    :cond_2
    nop

    .end local p0    # "this":Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    throw v4

    .line 2641
    .restart local p0    # "this":Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :catch_2
    move-exception v4

    .line 2643
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    array-length v5, v4

    move v6, v3

    :goto_6
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    .line 2644
    .restart local v7    # "socket":Landroid/net/LocalSocket;
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2643
    .end local v7    # "socket":Landroid/net/LocalSocket;
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 2649
    :cond_3
    :try_start_7
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2651
    goto :goto_7

    .line 2650
    :catch_3
    move-exception v1

    .line 2652
    :goto_7
    :try_start_8
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v2, v1

    :goto_8
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 2653
    .restart local v4    # "daemon":Ljava/lang/String;
    invoke-static {v4}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 2652
    .end local v4    # "daemon":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 2655
    :cond_4
    nop

    .line 2656
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$1700(Lcom/android/server/connectivity/Vpn;)V

    .line 2657
    monitor-exit v0

    .line 2658
    return-void

    .line 2657
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v1
.end method
