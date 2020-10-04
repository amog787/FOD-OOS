.class Lcom/android/server/pm/PackageManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "PackageManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;,
        Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;,
        Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;,
        Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;
    }
.end annotation


# static fields
.field private static final ART_PROFILE_SNAPSHOT_DEBUG_LOCATION:Ljava/lang/String; = "/data/misc/profman/"

.field private static final STDIN_PATH:Ljava/lang/String; = "-"


# instance fields
.field mBrief:Z

.field mComponents:Z

.field final mInterface:Landroid/content/pm/IPackageManager;

.field mQueryFlags:I

.field private final mResourceCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field mTargetUser:I


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 1611
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;

    .line 146
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 139
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mResourceCache:Ljava/util/WeakHashMap;

    .line 147
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 148
    return-void
.end method

.method private static checkAbiArgument(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "abi"    # Ljava/lang/String;

    .line 2694
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2698
    const-string v0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2699
    return-object p0

    .line 2702
    :cond_0
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 2703
    .local v0, "supportedAbis":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 2704
    .local v3, "supportedAbi":Ljava/lang/String;
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2705
    return-object p0

    .line 2703
    .end local v3    # "supportedAbi":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2709
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ABI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not supported on this device"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2695
    .end local v0    # "supportedAbis":[Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing ABI argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private displayPackageFilePath(Ljava/lang/String;I)I
    .locals 8
    .param p1, "pckg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 491
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 492
    .local v0, "info":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_1

    .line 493
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 494
    .local v2, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v3, "package:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 495
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 496
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 497
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length v5, v4

    move v6, v1

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    .line 498
    .local v7, "splitSourceDir":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 499
    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 497
    .end local v7    # "splitSourceDir":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 502
    :cond_0
    return v1

    .line 504
    .end local v2    # "pw":Ljava/io/PrintWriter;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private doAbandonSession(IZ)I
    .locals 4
    .param p1, "sessionId"    # I
    .param p2, "logSuccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2855
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2856
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 2858
    .local v1, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_0
    new-instance v2, Landroid/content/pm/PackageInstaller$Session;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 2859
    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V

    move-object v1, v2

    .line 2860
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$Session;->abandon()V

    .line 2861
    if-eqz p2, :cond_0

    .line 2862
    const-string v2, "Success"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2864
    :cond_0
    const/4 v2, 0x0

    .line 2866
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2864
    return v2

    .line 2866
    :catchall_0
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private doCommitSession(IZ)I
    .locals 8
    .param p1, "sessionId"    # I
    .param p2, "logSuccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2820
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2821
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 2823
    .local v1, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_0
    new-instance v2, Landroid/content/pm/PackageInstaller$Session;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 2824
    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V

    move-object v1, v2

    .line 2825
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$Session;->isMultiPackage()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "]"

    if-nez v2, :cond_0

    :try_start_1
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$Session;->isStaged()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    .line 2829
    :try_start_2
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$Session;->getNames()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/dex/DexMetadataHelper;->validateDexPaths([Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2833
    goto :goto_0

    .line 2830
    :catch_0
    move-exception v2

    .line 2831
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Warning [Could not validate the dex paths: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2832
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2831
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2835
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    new-instance v2, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$1;)V

    .line 2836
    .local v2, "receiver":Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V

    .line 2837
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v4

    .line 2838
    .local v4, "result":Landroid/content/Intent;
    const-string v5, "android.content.pm.extra.STATUS"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 2840
    .local v5, "status":I
    if-nez v5, :cond_1

    .line 2841
    if-eqz p2, :cond_2

    .line 2842
    const-string v3, "Success"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 2845
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "android.content.pm.extra.STATUS_MESSAGE"

    .line 2846
    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2845
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2848
    :cond_2
    :goto_1
    nop

    .line 2850
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2848
    return v5

    .line 2850
    .end local v2    # "receiver":Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
    .end local v4    # "result":Landroid/content/Intent;
    .end local v5    # "status":I
    :catchall_0
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private doCreateSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I
    .locals 2
    .param p1, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .param p2, "installerPackageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2719
    const/4 v0, 0x1

    const-string/jumbo v1, "runInstallCreate"

    invoke-direct {p0, p3, v0, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IZLjava/lang/String;)I

    move-result p3

    .line 2720
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 2721
    const/4 p3, 0x0

    .line 2722
    iget v0, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2725
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v0

    .line 2726
    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result v0

    .line 2727
    .local v0, "sessionId":I
    return v0
.end method

.method private doInstallAddSession(I[IZ)I
    .locals 5
    .param p1, "parentId"    # I
    .param p2, "sessionIds"    # [I
    .param p3, "logSuccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2774
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2775
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 2777
    .local v1, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_0
    new-instance v2, Landroid/content/pm/PackageInstaller$Session;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 2778
    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V

    move-object v1, v2

    .line 2779
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$Session;->isMultiPackage()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2780
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: parent session ID is not a multi-package session"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2782
    nop

    .line 2792
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2782
    const/4 v2, 0x1

    return v2

    .line 2784
    :cond_0
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    :try_start_1
    array-length v4, p2

    if-ge v3, v4, :cond_1

    .line 2785
    aget v4, p2, v3

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageInstaller$Session;->addChildSessionId(I)V

    .line 2784
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2787
    .end local v3    # "i":I
    :cond_1
    if-eqz p3, :cond_2

    .line 2788
    const-string v3, "Success"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2790
    :cond_2
    nop

    .line 2792
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2790
    return v2

    .line 2792
    :catchall_0
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private doListPermissions(Ljava/util/ArrayList;ZZZII)V
    .locals 21
    .param p2, "groups"    # Z
    .param p3, "labels"    # Z
    .param p4, "summary"    # Z
    .param p5, "startProtectionLevel"    # I
    .param p6, "endProtectionLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;ZZZII)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2873
    .local p1, "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 2874
    .local v2, "pw":Ljava/io/PrintWriter;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2875
    .local v3, "groupCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_13

    .line 2876
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2877
    .local v5, "groupName":Ljava/lang/String;
    const-string v6, ""

    .line 2878
    .local v6, "prefix":Ljava/lang/String;
    const-string v7, "  description:"

    const-string v8, "  label:"

    const-string v9, "  package:"

    const/4 v10, 0x0

    const-string v11, "+ "

    const-string v12, ""

    if-eqz p2, :cond_7

    .line 2879
    if-lez v4, :cond_0

    .line 2880
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2882
    :cond_0
    if-eqz v5, :cond_5

    .line 2883
    iget-object v13, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 2884
    invoke-interface {v13, v5, v10}, Landroid/content/pm/IPackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v13

    .line 2885
    .local v13, "pgi":Landroid/content/pm/PermissionGroupInfo;
    if-eqz p4, :cond_2

    .line 2886
    invoke-direct {v0, v13}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v14

    .line 2887
    .local v14, "res":Landroid/content/res/Resources;
    const-string v15, ": "

    if-eqz v14, :cond_1

    .line 2888
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v3

    .end local v3    # "groupCount":I
    .local v17, "groupCount":I
    iget v3, v13, Landroid/content/pm/PermissionGroupInfo;->labelRes:I

    move-object/from16 v18, v6

    .end local v6    # "prefix":Ljava/lang/String;
    .local v18, "prefix":Ljava/lang/String;
    iget-object v6, v13, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-direct {v0, v13, v3, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 2890
    .end local v17    # "groupCount":I
    .end local v18    # "prefix":Ljava/lang/String;
    .restart local v3    # "groupCount":I
    .restart local v6    # "prefix":Ljava/lang/String;
    :cond_1
    move/from16 v17, v3

    move-object/from16 v18, v6

    .end local v3    # "groupCount":I
    .end local v6    # "prefix":Ljava/lang/String;
    .restart local v17    # "groupCount":I
    .restart local v18    # "prefix":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v13, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2893
    .end local v14    # "res":Landroid/content/res/Resources;
    :goto_1
    goto/16 :goto_3

    .line 2894
    .end local v17    # "groupCount":I
    .end local v18    # "prefix":Ljava/lang/String;
    .restart local v3    # "groupCount":I
    .restart local v6    # "prefix":Ljava/lang/String;
    :cond_2
    move/from16 v17, v3

    move-object/from16 v18, v6

    .end local v3    # "groupCount":I
    .end local v6    # "prefix":Ljava/lang/String;
    .restart local v17    # "groupCount":I
    .restart local v18    # "prefix":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_3

    move-object v6, v11

    goto :goto_2

    :cond_3
    move-object v6, v12

    :goto_2
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "group:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v13, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2895
    if-eqz p3, :cond_4

    .line 2896
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v13, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2897
    invoke-direct {v0, v13}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v3

    .line 2898
    .local v3, "res":Landroid/content/res/Resources;
    if-eqz v3, :cond_4

    .line 2899
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v13, Landroid/content/pm/PermissionGroupInfo;->labelRes:I

    iget-object v14, v13, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 2900
    invoke-direct {v0, v13, v10, v14}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2899
    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2901
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v13, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    iget-object v14, v13, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    .line 2902
    invoke-direct {v0, v13, v10, v14}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2901
    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2907
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v13    # "pgi":Landroid/content/pm/PermissionGroupInfo;
    :cond_4
    :goto_3
    goto :goto_5

    .line 2908
    .end local v17    # "groupCount":I
    .end local v18    # "prefix":Ljava/lang/String;
    .local v3, "groupCount":I
    .restart local v6    # "prefix":Ljava/lang/String;
    :cond_5
    move/from16 v17, v3

    move-object/from16 v18, v6

    .end local v3    # "groupCount":I
    .end local v6    # "prefix":Ljava/lang/String;
    .restart local v17    # "groupCount":I
    .restart local v18    # "prefix":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_6

    if-nez p4, :cond_6

    move-object v6, v11

    goto :goto_4

    :cond_6
    move-object v6, v12

    :goto_4
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ungrouped:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2910
    :goto_5
    const-string v6, "  "

    .end local v18    # "prefix":Ljava/lang/String;
    .restart local v6    # "prefix":Ljava/lang/String;
    goto :goto_6

    .line 2878
    .end local v17    # "groupCount":I
    .restart local v3    # "groupCount":I
    :cond_7
    move/from16 v17, v3

    move-object/from16 v18, v6

    .line 2912
    .end local v3    # "groupCount":I
    .restart local v17    # "groupCount":I
    :goto_6
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 2913
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v13, 0x0

    invoke-interface {v3, v10, v13}, Landroid/content/pm/IPackageManager;->queryPermissionsByGroup(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    .line 2914
    .local v3, "ps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    .line 2915
    .local v10, "count":I
    const/4 v13, 0x1

    .line 2916
    .local v13, "first":Z
    const/4 v14, 0x0

    .local v14, "p":I
    :goto_7
    if-ge v14, v10, :cond_11

    .line 2917
    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/PermissionInfo;

    .line 2918
    .local v15, "pi":Landroid/content/pm/PermissionInfo;
    if-eqz p2, :cond_8

    if-nez v5, :cond_8

    iget-object v1, v15, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 2919
    move-object/from16 v16, v3

    move-object/from16 v20, v5

    goto/16 :goto_c

    .line 2921
    :cond_8
    iget v1, v15, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v1, v1, 0xf

    .line 2922
    .local v1, "base":I
    move-object/from16 v16, v3

    move/from16 v3, p5

    .end local v3    # "ps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    .local v16, "ps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    if-lt v1, v3, :cond_10

    move/from16 v3, p6

    if-le v1, v3, :cond_9

    .line 2924
    move-object/from16 v20, v5

    goto/16 :goto_c

    .line 2926
    :cond_9
    if-eqz p4, :cond_c

    .line 2927
    if-eqz v13, :cond_a

    .line 2928
    const/4 v13, 0x0

    move/from16 v18, v1

    goto :goto_8

    .line 2930
    :cond_a
    move/from16 v18, v1

    .end local v1    # "base":I
    .local v18, "base":I
    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2932
    :goto_8
    invoke-direct {v0, v15}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v1

    .line 2933
    .local v1, "res":Landroid/content/res/Resources;
    if-eqz v1, :cond_b

    .line 2934
    move-object/from16 v19, v1

    .end local v1    # "res":Landroid/content/res/Resources;
    .local v19, "res":Landroid/content/res/Resources;
    iget v1, v15, Landroid/content/pm/PermissionInfo;->labelRes:I

    iget-object v3, v15, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-direct {v0, v15, v1, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_9

    .line 2937
    .end local v19    # "res":Landroid/content/res/Resources;
    .restart local v1    # "res":Landroid/content/res/Resources;
    :cond_b
    move-object/from16 v19, v1

    .end local v1    # "res":Landroid/content/res/Resources;
    .restart local v19    # "res":Landroid/content/res/Resources;
    iget-object v1, v15, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2939
    .end local v19    # "res":Landroid/content/res/Resources;
    :goto_9
    move-object/from16 v20, v5

    goto/16 :goto_c

    .line 2940
    .end local v18    # "base":I
    .local v1, "base":I
    :cond_c
    move/from16 v18, v1

    .end local v1    # "base":I
    .restart local v18    # "base":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_d

    move-object v3, v11

    goto :goto_a

    :cond_d
    move-object v3, v12

    :goto_a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "permission:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2942
    if-eqz p3, :cond_f

    .line 2943
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2944
    invoke-direct {v0, v15}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v1

    .line 2945
    .local v1, "res":Landroid/content/res/Resources;
    if-eqz v1, :cond_e

    .line 2946
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v19, v1

    .end local v1    # "res":Landroid/content/res/Resources;
    .restart local v19    # "res":Landroid/content/res/Resources;
    iget v1, v15, Landroid/content/pm/PermissionInfo;->labelRes:I

    move-object/from16 v20, v5

    .end local v5    # "groupName":Ljava/lang/String;
    .local v20, "groupName":Ljava/lang/String;
    iget-object v5, v15, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 2947
    invoke-direct {v0, v15, v1, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2946
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2949
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v15, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    iget-object v5, v15, Landroid/content/pm/PermissionInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    .line 2950
    invoke-direct {v0, v15, v3, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2949
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b

    .line 2945
    .end local v19    # "res":Landroid/content/res/Resources;
    .end local v20    # "groupName":Ljava/lang/String;
    .restart local v1    # "res":Landroid/content/res/Resources;
    .restart local v5    # "groupName":Ljava/lang/String;
    :cond_e
    move-object/from16 v19, v1

    move-object/from16 v20, v5

    .line 2953
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v5    # "groupName":Ljava/lang/String;
    .restart local v19    # "res":Landroid/content/res/Resources;
    .restart local v20    # "groupName":Ljava/lang/String;
    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  protectionLevel:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v15, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 2954
    invoke-static {v3}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2953
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c

    .line 2942
    .end local v19    # "res":Landroid/content/res/Resources;
    .end local v20    # "groupName":Ljava/lang/String;
    .restart local v5    # "groupName":Ljava/lang/String;
    :cond_f
    move-object/from16 v20, v5

    .end local v5    # "groupName":Ljava/lang/String;
    .restart local v20    # "groupName":Ljava/lang/String;
    goto :goto_c

    .line 2922
    .end local v18    # "base":I
    .end local v20    # "groupName":Ljava/lang/String;
    .local v1, "base":I
    .restart local v5    # "groupName":Ljava/lang/String;
    :cond_10
    move/from16 v18, v1

    move-object/from16 v20, v5

    .line 2916
    .end local v1    # "base":I
    .end local v5    # "groupName":Ljava/lang/String;
    .end local v15    # "pi":Landroid/content/pm/PermissionInfo;
    .restart local v20    # "groupName":Ljava/lang/String;
    :goto_c
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    move-object/from16 v3, v16

    move-object/from16 v5, v20

    goto/16 :goto_7

    .end local v16    # "ps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    .end local v20    # "groupName":Ljava/lang/String;
    .restart local v3    # "ps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    .restart local v5    # "groupName":Ljava/lang/String;
    :cond_11
    move-object/from16 v16, v3

    move-object/from16 v20, v5

    .line 2959
    .end local v3    # "ps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    .end local v5    # "groupName":Ljava/lang/String;
    .end local v14    # "p":I
    .restart local v16    # "ps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    .restart local v20    # "groupName":Ljava/lang/String;
    if-eqz p4, :cond_12

    .line 2960
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2875
    .end local v6    # "prefix":Ljava/lang/String;
    .end local v10    # "count":I
    .end local v13    # "first":Z
    .end local v16    # "ps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    .end local v20    # "groupName":Ljava/lang/String;
    :cond_12
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p1

    move/from16 v3, v17

    goto/16 :goto_0

    .line 2963
    .end local v4    # "i":I
    .end local v17    # "groupCount":I
    .local v3, "groupCount":I
    :cond_13
    return-void
.end method

.method private doRemoveSplit(ILjava/lang/String;Z)I
    .locals 5
    .param p1, "sessionId"    # I
    .param p2, "splitName"    # Ljava/lang/String;
    .param p3, "logSuccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2798
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2799
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 2801
    .local v1, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_0
    new-instance v2, Landroid/content/pm/PackageInstaller$Session;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 2802
    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V

    move-object v1, v2

    .line 2803
    invoke-virtual {v1, p2}, Landroid/content/pm/PackageInstaller$Session;->removeSplit(Ljava/lang/String;)V

    .line 2805
    if-eqz p3, :cond_0

    .line 2806
    const-string v2, "Success"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2808
    :cond_0
    const/4 v2, 0x0

    .line 2813
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2808
    return v2

    .line 2813
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 2809
    :catch_0
    move-exception v2

    .line 2810
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: failed to remove split; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2811
    const/4 v3, 0x1

    .line 2813
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2811
    return v3

    .line 2813
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private doWriteSplit(ILjava/lang/String;JLjava/lang/String;Z)I
    .locals 16
    .param p1, "sessionId"    # I
    .param p2, "inPath"    # Ljava/lang/String;
    .param p3, "sizeBytes"    # J
    .param p5, "splitName"    # Ljava/lang/String;
    .param p6, "logSuccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2732
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 2734
    .local v3, "session":Landroid/content/pm/PackageInstaller$Session;
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2736
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v5, "-"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_0

    .line 2737
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getInFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-static {v5}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    move-wide/from16 v14, p3

    .local v5, "fd":Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    .line 2738
    .end local v5    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    if-eqz v2, :cond_3

    .line 2739
    const-string/jumbo v5, "r"

    invoke-virtual {v1, v2, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 2740
    .restart local v5    # "fd":Landroid/os/ParcelFileDescriptor;
    const/4 v8, -0x1

    if-nez v5, :cond_1

    .line 2741
    nop

    .line 2768
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2741
    return v8

    .line 2743
    :cond_1
    :try_start_1
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 2744
    .end local p3    # "sizeBytes":J
    .local v9, "sizeBytes":J
    cmp-long v11, v9, v6

    if-gez v11, :cond_2

    .line 2745
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to get size of: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2746
    nop

    .line 2768
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2746
    return v8

    .line 2768
    .end local v0    # "pw":Ljava/io/PrintWriter;
    .end local v5    # "fd":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v0

    move/from16 v7, p1

    move-wide v1, v9

    goto/16 :goto_4

    .line 2764
    :catch_0
    move-exception v0

    move/from16 v7, p1

    move-wide v1, v9

    goto/16 :goto_3

    .line 2744
    .restart local v0    # "pw":Ljava/io/PrintWriter;
    .restart local v5    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_2
    move-wide v14, v9

    goto :goto_0

    .line 2749
    .end local v5    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v9    # "sizeBytes":J
    .restart local p3    # "sizeBytes":J
    :cond_3
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getInFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-static {v5}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move-wide/from16 v14, p3

    .line 2751
    .end local p3    # "sizeBytes":J
    .restart local v5    # "fd":Landroid/os/ParcelFileDescriptor;
    .local v14, "sizeBytes":J
    :goto_0
    cmp-long v6, v14, v6

    if-gtz v6, :cond_4

    .line 2752
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    const-string v7, "Error: must specify a APK size"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2753
    nop

    .line 2768
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2753
    return v4

    .line 2768
    .end local v0    # "pw":Ljava/io/PrintWriter;
    .end local v5    # "fd":Landroid/os/ParcelFileDescriptor;
    :catchall_1
    move-exception v0

    move/from16 v7, p1

    move-wide v1, v14

    goto/16 :goto_4

    .line 2764
    :catch_1
    move-exception v0

    move/from16 v7, p1

    move-wide v1, v14

    goto/16 :goto_3

    .line 2756
    .restart local v0    # "pw":Ljava/io/PrintWriter;
    .restart local v5    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_4
    :try_start_5
    new-instance v8, Landroid/content/pm/PackageInstaller$Session;

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 2757
    invoke-interface {v6}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move/from16 v7, p1

    :try_start_6
    invoke-interface {v6, v7}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v6

    invoke-direct {v8, v6}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 2758
    .end local v3    # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v8, "session":Landroid/content/pm/PackageInstaller$Session;
    const-wide/16 v10, 0x0

    move-object/from16 v9, p5

    move-wide v12, v14

    move-wide v1, v14

    .end local v14    # "sizeBytes":J
    .local v1, "sizeBytes":J
    move-object v14, v5

    :try_start_7
    invoke-virtual/range {v8 .. v14}, Landroid/content/pm/PackageInstaller$Session;->write(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V

    .line 2760
    if-eqz p6, :cond_5

    .line 2761
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Success: streamed "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " bytes"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2763
    :cond_5
    const/4 v3, 0x0

    .line 2768
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2763
    return v3

    .line 2768
    .end local v0    # "pw":Ljava/io/PrintWriter;
    .end local v5    # "fd":Landroid/os/ParcelFileDescriptor;
    :catchall_2
    move-exception v0

    move-object v3, v8

    goto :goto_4

    .line 2764
    :catch_2
    move-exception v0

    move-object v3, v8

    goto :goto_3

    .line 2768
    .end local v1    # "sizeBytes":J
    .end local v8    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v3    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v14    # "sizeBytes":J
    :catchall_3
    move-exception v0

    goto :goto_1

    .line 2764
    :catch_3
    move-exception v0

    goto :goto_2

    .line 2768
    :catchall_4
    move-exception v0

    move/from16 v7, p1

    :goto_1
    move-wide v1, v14

    .end local v14    # "sizeBytes":J
    .restart local v1    # "sizeBytes":J
    goto :goto_4

    .line 2764
    .end local v1    # "sizeBytes":J
    .restart local v14    # "sizeBytes":J
    :catch_4
    move-exception v0

    move/from16 v7, p1

    :goto_2
    move-wide v1, v14

    .end local v14    # "sizeBytes":J
    .restart local v1    # "sizeBytes":J
    goto :goto_3

    .line 2768
    .end local v1    # "sizeBytes":J
    .restart local p3    # "sizeBytes":J
    :catchall_5
    move-exception v0

    move/from16 v7, p1

    move-wide/from16 v1, p3

    goto :goto_4

    .line 2764
    :catch_5
    move-exception v0

    move/from16 v7, p1

    move-wide/from16 v1, p3

    .line 2765
    .end local p3    # "sizeBytes":J
    .local v0, "e":Ljava/io/IOException;
    .restart local v1    # "sizeBytes":J
    :goto_3
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: failed to write; "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 2766
    nop

    .line 2768
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2766
    return v4

    .line 2768
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_6
    move-exception v0

    :goto_4
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method private static enabledSettingToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 1818
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 1830
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 1828
    :cond_0
    const-string v0, "disabled-until-used"

    return-object v0

    .line 1826
    :cond_1
    const-string v0, "disabled-user"

    return-object v0

    .line 1824
    :cond_2
    const-string v0, "disabled"

    return-object v0

    .line 1822
    :cond_3
    const-string v0, "enabled"

    return-object v0

    .line 1820
    :cond_4
    const-string v0, "default"

    return-object v0
.end method

.method private getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;
    .locals 5
    .param p1, "pii"    # Landroid/content/pm/PackageItemInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2983
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mResourceCache:Ljava/util/WeakHashMap;

    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    .line 2984
    .local v0, "res":Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    return-object v0

    .line 2986
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2987
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    new-instance v2, Landroid/content/res/AssetManager;

    invoke-direct {v2}, Landroid/content/res/AssetManager;-><init>()V

    .line 2988
    .local v2, "am":Landroid/content/res/AssetManager;
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 2989
    new-instance v3, Landroid/content/res/Resources;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4, v4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    move-object v0, v3

    .line 2990
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mResourceCache:Ljava/util/WeakHashMap;

    iget-object v4, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2991
    return-object v0
.end method

.method private getStagedSessions()I
    .locals 6

    .line 350
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 352
    .local v0, "pw":Ljava/io/PrintWriter;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 353
    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/pm/IPackageInstaller;->getStagedSessions()Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 354
    .local v1, "stagedSessionsList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 355
    .local v3, "session":Landroid/content/pm/PackageInstaller$SessionInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "appPackageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; sessionId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "; isStaged = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "; isStagedSessionReady = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionReady()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "; isStagedSessionApplied = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionApplied()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "; isStagedSessionFailed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionFailed()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 355
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    .end local v3    # "session":Landroid/content/pm/PackageInstaller$SessionInfo;
    goto :goto_0

    .line 367
    .end local v1    # "stagedSessionsList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    :cond_0
    nop

    .line 368
    const/4 v1, 0x1

    return v1

    .line 362
    :catch_0
    move-exception v1

    .line 363
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 363
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 366
    const/4 v2, 0x0

    return v2
.end method

.method private static isNumber(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 2269
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2272
    nop

    .line 2273
    const/4 v0, 0x1

    return v0

    .line 2270
    :catch_0
    move-exception v0

    .line 2271
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    return v1
.end method

.method private isProductApp(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 2014
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, v0, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 2015
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isProduct()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 2016
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 2017
    .local v1, "e":Landroid/os/RemoteException;
    return v0
.end method

.method private isProductServicesApp(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 2023
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, v0, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 2024
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isProductServices()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 2025
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 2026
    .local v1, "e":Landroid/os/RemoteException;
    return v0
.end method

.method private isVendorApp(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 2005
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, v0, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 2006
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isVendor()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 2007
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 2008
    .local v1, "e":Landroid/os/RemoteException;
    return v0
.end method

.method static synthetic lambda$runSetHomeActivity$1(Ljava/util/concurrent/CompletableFuture;Landroid/os/Bundle;)V
    .locals 1
    .param p0, "future"    # Ljava/util/concurrent/CompletableFuture;
    .param p1, "res"    # Landroid/os/Bundle;

    .line 2564
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method private linkStateToString(I)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # I

    .line 2097
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 2104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown link state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2102
    :cond_0
    const-string v0, "always ask"

    return-object v0

    .line 2101
    :cond_1
    const-string/jumbo v0, "never"

    return-object v0

    .line 2100
    :cond_2
    const-string v0, "always"

    return-object v0

    .line 2099
    :cond_3
    const-string v0, "ask"

    return-object v0

    .line 2098
    :cond_4
    const-string/jumbo v0, "undefined"

    return-object v0
.end method

.method private loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .param p1, "pii"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "res"    # I
    .param p3, "nonLocalized"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2967
    if-eqz p3, :cond_0

    .line 2968
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2970
    :cond_0
    if-eqz p2, :cond_1

    .line 2971
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v0

    .line 2972
    .local v0, "r":Landroid/content/res/Resources;
    if-eqz v0, :cond_1

    .line 2974
    :try_start_0
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2975
    :catch_0
    move-exception v1

    .line 2979
    .end local v0    # "r":Landroid/content/res/Resources;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private makeInstallParams()Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    .locals 12

    .line 2395
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 2396
    .local v0, "sessionParams":Landroid/content/pm/PackageInstaller$SessionParams;
    new-instance v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$1;)V

    .line 2400
    .local v2, "params":Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    invoke-static {}, Lcom/android/server/pm/PmInjector;->updateUserId()I

    move-result v4

    iput v4, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->userId:I

    .line 2403
    iput-object v0, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 2405
    iget v4, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v5, 0x400000

    or-int/2addr v4, v5

    iput v4, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2408
    const/4 v4, 0x1

    .line 2409
    .local v4, "replaceExisting":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "opt":Ljava/lang/String;
    const/4 v7, 0x2

    if-eqz v5, :cond_7

    .line 2410
    const/4 v5, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x0

    const/16 v10, 0x10

    const/4 v11, 0x4

    sparse-switch v8, :sswitch_data_0

    :cond_0
    goto/16 :goto_1

    :sswitch_0
    const-string v8, "--force-sdk"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v5, 0x18

    goto/16 :goto_1

    :sswitch_1
    const-string v8, "--staged"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v5, 0x1b

    goto/16 :goto_1

    :sswitch_2
    const-string v8, "--restrict-permissions"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v5, 0x7

    goto/16 :goto_1

    :sswitch_3
    const-string v8, "--user"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v5, 0x14

    goto/16 :goto_1

    :sswitch_4
    const-string v8, "--full"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v5, 0x12

    goto/16 :goto_1

    :sswitch_5
    const-string v8, "--apex"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v5, 0x19

    goto/16 :goto_1

    :sswitch_6
    const-string v8, "--preload"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v5, 0x13

    goto/16 :goto_1

    :sswitch_7
    const-string v8, "--ephemeral"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v5, 0xf

    goto/16 :goto_1

    :sswitch_8
    const-string v8, "--originating-uri"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v5, 0x9

    goto/16 :goto_1

    :sswitch_9
    const-string v8, "--pkg"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v5, 0xc

    goto/16 :goto_1

    :sswitch_a
    const-string v8, "--abi"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v5, 0xe

    goto/16 :goto_1

    :sswitch_b
    const-string v8, "-t"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v5, 0x3

    goto/16 :goto_1

    :sswitch_c
    const-string v8, "-r"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v5, v9

    goto/16 :goto_1

    :sswitch_d
    const-string v8, "-p"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v5, 0xb

    goto/16 :goto_1

    :sswitch_e
    const-string v8, "-i"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v5, v7

    goto/16 :goto_1

    :sswitch_f
    const-string v8, "-g"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v5, 0x6

    goto/16 :goto_1

    :sswitch_10
    const-string v8, "-f"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v5, v11

    goto/16 :goto_1

    :sswitch_11
    const-string v8, "-d"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v5, 0x5

    goto/16 :goto_1

    :sswitch_12
    const-string v8, "-S"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v5, 0xd

    goto/16 :goto_1

    :sswitch_13
    const-string v8, "-R"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v5, v1

    goto :goto_1

    :sswitch_14
    const-string v8, "--multi-package"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v5, 0x1a

    goto :goto_1

    :sswitch_15
    const-string v8, "--enable-rollback"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v5, 0x1c

    goto :goto_1

    :sswitch_16
    const-string v8, "--referrer"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v5, 0xa

    goto :goto_1

    :sswitch_17
    const-string v8, "--instant"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v5, v10

    goto :goto_1

    :sswitch_18
    const-string v8, "--instantapp"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v5, 0x11

    goto :goto_1

    :sswitch_19
    const-string v8, "--install-location"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v5, 0x15

    goto :goto_1

    :sswitch_1a
    const-string v8, "--dont-kill"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v5, 0x8

    goto :goto_1

    :sswitch_1b
    const-string v8, "--force-uuid"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v5, 0x17

    goto :goto_1

    :sswitch_1c
    const-string v8, "--install-reason"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v5, 0x16

    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 2523
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown option "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2510
    :pswitch_0
    iget-object v5, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 2518
    const-string v5, "com.android.shell"

    iput-object v5, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    .line 2520
    :cond_1
    iget v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v7, 0x40000

    or-int/2addr v5, v7

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2521
    goto/16 :goto_2

    .line 2507
    :pswitch_1
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setStaged()V

    .line 2508
    goto/16 :goto_2

    .line 2504
    :pswitch_2
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setMultiPackage()V

    .line 2505
    goto/16 :goto_2

    .line 2500
    :pswitch_3
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsApex()V

    .line 2501
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setStaged()V

    .line 2502
    goto/16 :goto_2

    .line 2498
    :pswitch_4
    goto/16 :goto_2

    .line 2491
    :pswitch_5
    iget v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v5, v5, 0x200

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2492
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    .line 2493
    iget-object v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    const-string v7, "internal"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2494
    iput-object v3, v0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    goto/16 :goto_2

    .line 2488
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    .line 2489
    goto/16 :goto_2

    .line 2485
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 2486
    goto/16 :goto_2

    .line 2482
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->userId:I

    .line 2483
    goto/16 :goto_2

    .line 2479
    :pswitch_9
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsVirtualPreload()V

    .line 2480
    goto/16 :goto_2

    .line 2476
    :pswitch_a
    invoke-virtual {v0, v9}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsInstantApp(Z)V

    .line 2477
    goto/16 :goto_2

    .line 2473
    :pswitch_b
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsInstantApp(Z)V

    .line 2474
    goto/16 :goto_2

    .line 2468
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/pm/PackageManagerShellCommand;->checkAbiArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    .line 2469
    goto/16 :goto_2

    .line 2461
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 2462
    .local v7, "sizeBytes":J
    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-lez v5, :cond_2

    .line 2465
    invoke-virtual {v0, v7, v8}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V

    .line 2466
    goto/16 :goto_2

    .line 2463
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Size must be positive"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2455
    .end local v7    # "sizeBytes":J
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 2456
    iget-object v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    if-eqz v5, :cond_3

    goto/16 :goto_2

    .line 2457
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Missing package name"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2448
    :pswitch_f
    iput v7, v0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    .line 2449
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 2450
    iget-object v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    if-eqz v5, :cond_4

    goto :goto_2

    .line 2451
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Missing inherit package name"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2445
    :pswitch_10
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    .line 2446
    goto :goto_2

    .line 2442
    :pswitch_11
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    .line 2443
    goto :goto_2

    .line 2439
    :pswitch_12
    iget v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v5, v5, 0x1000

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2440
    goto :goto_2

    .line 2435
    :pswitch_13
    iget v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v7, -0x400001

    and-int/2addr v5, v7

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2437
    goto :goto_2

    .line 2432
    :pswitch_14
    iget v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v5, v5, 0x100

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2433
    goto :goto_2

    .line 2429
    :pswitch_15
    iget v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v5, v5, 0x80

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2430
    goto :goto_2

    .line 2426
    :pswitch_16
    iget v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/2addr v5, v10

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2427
    goto :goto_2

    .line 2423
    :pswitch_17
    iget v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/2addr v5, v11

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2424
    goto :goto_2

    .line 2417
    :pswitch_18
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    .line 2418
    iget-object v5, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    if-eqz v5, :cond_5

    goto :goto_2

    .line 2419
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Missing installer package"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2414
    :pswitch_19
    const/4 v4, 0x0

    .line 2415
    goto :goto_2

    .line 2412
    :pswitch_1a
    nop

    .line 2523
    :cond_6
    :goto_2
    goto/16 :goto_0

    .line 2526
    :cond_7
    if-eqz v4, :cond_8

    .line 2527
    iget v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/2addr v1, v7

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2529
    :cond_8
    return-object v2

    :sswitch_data_0
    .sparse-switch
        -0x7ca7efaa -> :sswitch_1c
        -0x7449dd03 -> :sswitch_1b
        -0x69f9e586 -> :sswitch_1a
        -0x4e451eb9 -> :sswitch_19
        -0x43c705c0 -> :sswitch_18
        -0x38b573bf -> :sswitch_17
        -0x2a211e41 -> :sswitch_16
        -0x26fa19b2 -> :sswitch_15
        -0xa293dee -> :sswitch_14
        0x5c5 -> :sswitch_13
        0x5c6 -> :sswitch_12
        0x5d7 -> :sswitch_11
        0x5d9 -> :sswitch_10
        0x5da -> :sswitch_f
        0x5dc -> :sswitch_e
        0x5e3 -> :sswitch_d
        0x5e5 -> :sswitch_c
        0x5e7 -> :sswitch_b
        0x2900ec8 -> :sswitch_a
        0x290482c -> :sswitch_9
        0x8d57768 -> :sswitch_8
        0x3eb0e7fd -> :sswitch_7
        0x3fa0d469 -> :sswitch_6
        0x4f71fec2 -> :sswitch_5
        0x4f74582f -> :sswitch_4
        0x4f7b216b -> :sswitch_3
        0x59147c93 -> :sswitch_2
        0x59daeac6 -> :sswitch_1
        0x781e9cb8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseIntentAndUser()Landroid/content/Intent;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 880
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    .line 881
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    .line 882
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    .line 883
    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommand$4;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageManagerShellCommand$4;-><init>(Lcom/android/server/pm/PackageManagerShellCommand;)V

    invoke-static {p0, v0}, Landroid/content/Intent;->parseCommandArgs(Landroid/os/ShellCommand;Landroid/content/Intent$CommandOptionHandler;)Landroid/content/Intent;

    move-result-object v0

    .line 902
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 903
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    .line 902
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    .line 904
    return-object v0
.end method

.method private printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V
    .locals 3
    .param p1, "pr"    # Landroid/util/PrintWriterPrinter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p4, "brief"    # Z
    .param p5, "components"    # Z

    .line 909
    if-nez p4, :cond_0

    if-eqz p5, :cond_5

    .line 911
    :cond_0
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_1

    .line 912
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "comp":Landroid/content/ComponentName;
    goto :goto_0

    .line 913
    .end local v0    # "comp":Landroid/content/ComponentName;
    :cond_1
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_2

    .line 914
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "comp":Landroid/content/ComponentName;
    goto :goto_0

    .line 915
    .end local v0    # "comp":Landroid/content/ComponentName;
    :cond_2
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v0, :cond_3

    .line 916
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v2, p3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "comp":Landroid/content/ComponentName;
    goto :goto_0

    .line 918
    .end local v0    # "comp":Landroid/content/ComponentName;
    :cond_3
    const/4 v0, 0x0

    .line 920
    .restart local v0    # "comp":Landroid/content/ComponentName;
    :goto_0
    if-eqz v0, :cond_5

    .line 921
    if-nez p5, :cond_4

    .line 922
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "priority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " preferredOrder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " match=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Landroid/content/pm/ResolveInfo;->match:I

    .line 924
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " specificIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Landroid/content/pm/ResolveInfo;->specificIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isDefault="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p3, Landroid/content/pm/ResolveInfo;->isDefault:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 922
    invoke-virtual {p1, v1}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 928
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 929
    return-void

    .line 932
    .end local v0    # "comp":Landroid/content/ComponentName;
    :cond_5
    invoke-virtual {p3, p1, p2}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 933
    return-void
.end method

.method private runClear()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1785
    const/4 v0, 0x0

    .line 1786
    .local v0, "userId":I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    .line 1787
    .local v1, "option":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "--user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1788
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 1791
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 1792
    .local v2, "pkg":Ljava/lang/String;
    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 1793
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Error: no package specified"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1794
    return v3

    .line 1797
    :cond_1
    new-instance v4, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;

    invoke-direct {v4}, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;-><init>()V

    .line 1798
    .local v4, "obs":Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v2, v6, v4, v0}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;ZLandroid/content/pm/IPackageDataObserver;I)Z

    .line 1799
    monitor-enter v4

    .line 1800
    :goto_0
    :try_start_0
    iget-boolean v5, v4, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;->finished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_2

    .line 1802
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1804
    :goto_1
    goto :goto_0

    .line 1803
    :catch_0
    move-exception v5

    goto :goto_1

    .line 1806
    :cond_2
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1808
    iget-boolean v5, v4, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;->result:Z

    if-eqz v5, :cond_3

    .line 1809
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v5, "Success"

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1810
    return v6

    .line 1812
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    const-string v6, "Failed"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1813
    return v3

    .line 1806
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method private runCompile()I
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1336
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 1337
    .local v1, "pw":Ljava/io/PrintWriter;
    const/4 v2, 0x0

    const-string v3, "dalvik.vm.usejitprofiles"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1338
    .local v3, "checkProfiles":Z
    const/4 v4, 0x0

    .line 1339
    .local v4, "forceCompilation":Z
    const/4 v5, 0x0

    .line 1340
    .local v5, "allPackages":Z
    const/4 v6, 0x0

    .line 1341
    .local v6, "clearProfileData":Z
    const/4 v7, 0x0

    .line 1342
    .local v7, "compilerFilter":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1343
    .local v8, "compilationReason":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1344
    .local v9, "checkProfilesRaw":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1345
    .local v10, "secondaryDex":Z
    const/4 v11, 0x0

    .line 1346
    .local v11, "split":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1349
    .local v12, "compileLayouts":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v13

    move-object v15, v13

    .local v15, "opt":Ljava/lang/String;
    const/4 v2, 0x1

    if-eqz v13, :cond_1

    .line 1350
    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    :cond_0
    goto/16 :goto_1

    :sswitch_0
    const-string v13, "--check-prof"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x6

    goto :goto_2

    :sswitch_1
    const-string v13, "--compile-layouts"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x5

    goto :goto_2

    :sswitch_2
    const-string v13, "--secondary-dex"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0x8

    goto :goto_2

    :sswitch_3
    const-string v13, "-r"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x4

    goto :goto_2

    :sswitch_4
    const-string v13, "-m"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x3

    goto :goto_2

    :sswitch_5
    const-string v13, "-f"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x2

    goto :goto_2

    :sswitch_6
    const-string v13, "-c"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    move v13, v2

    goto :goto_2

    :sswitch_7
    const-string v13, "-a"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x0

    goto :goto_2

    :sswitch_8
    const-string v13, "--split"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0x9

    goto :goto_2

    :sswitch_9
    const-string v13, "--reset"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x7

    goto :goto_2

    :goto_1
    const/4 v13, -0x1

    :goto_2
    packed-switch v13, :pswitch_data_0

    .line 1384
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error: Unknown option: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1385
    return v2

    .line 1381
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 1382
    .end local v11    # "split":Ljava/lang/String;
    .local v2, "split":Ljava/lang/String;
    move-object v11, v2

    goto :goto_3

    .line 1378
    .end local v2    # "split":Ljava/lang/String;
    .restart local v11    # "split":Ljava/lang/String;
    :pswitch_1
    const/4 v2, 0x1

    .line 1379
    .end local v10    # "secondaryDex":Z
    .local v2, "secondaryDex":Z
    move v10, v2

    goto :goto_3

    .line 1373
    .end local v2    # "secondaryDex":Z
    .restart local v10    # "secondaryDex":Z
    :pswitch_2
    const/4 v2, 0x1

    .line 1374
    .end local v4    # "forceCompilation":Z
    .local v2, "forceCompilation":Z
    const/4 v4, 0x1

    .line 1375
    .end local v6    # "clearProfileData":Z
    .local v4, "clearProfileData":Z
    const-string v6, "install"

    .line 1376
    .end local v8    # "compilationReason":Ljava/lang/String;
    .local v6, "compilationReason":Ljava/lang/String;
    move-object v8, v6

    move v6, v4

    move v4, v2

    goto :goto_3

    .line 1370
    .end local v2    # "forceCompilation":Z
    .local v4, "forceCompilation":Z
    .local v6, "clearProfileData":Z
    .restart local v8    # "compilationReason":Ljava/lang/String;
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 1371
    .end local v9    # "checkProfilesRaw":Ljava/lang/String;
    .local v2, "checkProfilesRaw":Ljava/lang/String;
    move-object v9, v2

    goto :goto_3

    .line 1367
    .end local v2    # "checkProfilesRaw":Ljava/lang/String;
    .restart local v9    # "checkProfilesRaw":Ljava/lang/String;
    :pswitch_4
    const/4 v2, 0x1

    .line 1368
    .end local v12    # "compileLayouts":Z
    .local v2, "compileLayouts":Z
    move v12, v2

    goto :goto_3

    .line 1364
    .end local v2    # "compileLayouts":Z
    .restart local v12    # "compileLayouts":Z
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 1365
    .end local v8    # "compilationReason":Ljava/lang/String;
    .local v2, "compilationReason":Ljava/lang/String;
    move-object v8, v2

    goto :goto_3

    .line 1361
    .end local v2    # "compilationReason":Ljava/lang/String;
    .restart local v8    # "compilationReason":Ljava/lang/String;
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 1362
    .end local v7    # "compilerFilter":Ljava/lang/String;
    .local v2, "compilerFilter":Ljava/lang/String;
    move-object v7, v2

    goto :goto_3

    .line 1358
    .end local v2    # "compilerFilter":Ljava/lang/String;
    .restart local v7    # "compilerFilter":Ljava/lang/String;
    :pswitch_7
    const/4 v2, 0x1

    .line 1359
    .end local v4    # "forceCompilation":Z
    .local v2, "forceCompilation":Z
    move v4, v2

    goto :goto_3

    .line 1355
    .end local v2    # "forceCompilation":Z
    .restart local v4    # "forceCompilation":Z
    :pswitch_8
    const/4 v2, 0x1

    .line 1356
    .end local v6    # "clearProfileData":Z
    .local v2, "clearProfileData":Z
    move v6, v2

    goto :goto_3

    .line 1352
    .end local v2    # "clearProfileData":Z
    .restart local v6    # "clearProfileData":Z
    :pswitch_9
    const/4 v2, 0x1

    .line 1353
    .end local v5    # "allPackages":Z
    .local v2, "allPackages":Z
    move v5, v2

    .line 1385
    .end local v2    # "allPackages":Z
    .restart local v5    # "allPackages":Z
    :goto_3
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1389
    :cond_1
    if-eqz v9, :cond_4

    .line 1390
    const-string/jumbo v13, "true"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1391
    const/4 v3, 0x1

    goto :goto_4

    .line 1392
    :cond_2
    const-string v13, "false"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1393
    const/4 v3, 0x0

    goto :goto_4

    .line 1395
    :cond_3
    const-string v13, "Invalid value for \"--check-prof\". Expected \"true\" or \"false\"."

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1396
    return v2

    .line 1400
    :cond_4
    :goto_4
    if-eqz v7, :cond_5

    move v13, v2

    goto :goto_5

    :cond_5
    const/4 v13, 0x0

    :goto_5
    move/from16 v20, v13

    .line 1401
    .local v20, "compilerFilterGiven":Z
    if-eqz v8, :cond_6

    move v13, v2

    goto :goto_6

    :cond_6
    const/4 v13, 0x0

    :goto_6
    move/from16 v21, v13

    .line 1403
    .local v21, "compilationReasonGiven":Z
    if-nez v20, :cond_7

    if-nez v21, :cond_7

    if-eqz v12, :cond_b

    :cond_7
    if-nez v20, :cond_8

    if-eqz v21, :cond_8

    if-nez v12, :cond_b

    :cond_8
    if-eqz v20, :cond_9

    if-nez v21, :cond_9

    if-nez v12, :cond_b

    :cond_9
    if-eqz v20, :cond_a

    if-eqz v21, :cond_a

    if-eqz v12, :cond_b

    :cond_a
    if-eqz v20, :cond_c

    if-eqz v21, :cond_c

    if-eqz v12, :cond_c

    .line 1408
    :cond_b
    const-string v13, "Must specify exactly one of compilation filter (\"-m\"), compilation reason (\"-r\"), or compile layouts (\"--compile-layouts\")"

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1410
    return v2

    .line 1413
    :cond_c
    if-eqz v5, :cond_d

    if-eqz v11, :cond_d

    .line 1414
    const-string v13, "-a cannot be specified together with --split"

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1415
    return v2

    .line 1418
    :cond_d
    if-eqz v10, :cond_e

    if-eqz v11, :cond_e

    .line 1419
    const-string v13, "--secondary-dex cannot be specified together with --split"

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1420
    return v2

    .line 1423
    :cond_e
    const/4 v13, 0x0

    .line 1424
    .local v13, "targetCompilerFilter":Ljava/lang/String;
    if-eqz v20, :cond_10

    .line 1425
    invoke-static {v7}, Ldalvik/system/DexFile;->isValidCompilerFilter(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_f

    .line 1426
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: \""

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" is not a valid compilation filter."

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1428
    const/4 v2, 0x1

    return v2

    .line 1430
    :cond_f
    move-object v13, v7

    .line 1432
    :cond_10
    if-eqz v21, :cond_14

    .line 1433
    const/4 v2, -0x1

    .line 1434
    .local v2, "reason":I
    const/16 v16, 0x0

    move/from16 v14, v16

    .local v14, "i":I
    :goto_7
    move/from16 v16, v2

    .end local v2    # "reason":I
    .local v16, "reason":I
    sget-object v2, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v14, v2, :cond_12

    .line 1435
    sget-object v2, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    aget-object v2, v2, v14

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1437
    move v2, v14

    .line 1438
    .end local v16    # "reason":I
    .restart local v2    # "reason":I
    goto :goto_8

    .line 1434
    .end local v2    # "reason":I
    .restart local v16    # "reason":I
    :cond_11
    add-int/lit8 v14, v14, 0x1

    move/from16 v2, v16

    goto :goto_7

    :cond_12
    move/from16 v2, v16

    .line 1441
    .end local v14    # "i":I
    .end local v16    # "reason":I
    .restart local v2    # "reason":I
    :goto_8
    const/4 v14, -0x1

    if-ne v2, v14, :cond_13

    .line 1442
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v7

    .end local v7    # "compilerFilter":Ljava/lang/String;
    .local v22, "compilerFilter":Ljava/lang/String;
    const-string v7, "Error: Unknown compilation reason: "

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1443
    const/4 v7, 0x1

    return v7

    .line 1445
    .end local v22    # "compilerFilter":Ljava/lang/String;
    .restart local v7    # "compilerFilter":Ljava/lang/String;
    :cond_13
    move-object/from16 v22, v7

    .line 1446
    .end local v7    # "compilerFilter":Ljava/lang/String;
    .restart local v22    # "compilerFilter":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getCompilerFilterForReason(I)Ljava/lang/String;

    move-result-object v7

    .end local v13    # "targetCompilerFilter":Ljava/lang/String;
    .local v7, "targetCompilerFilter":Ljava/lang/String;
    goto :goto_9

    .line 1432
    .end local v2    # "reason":I
    .end local v22    # "compilerFilter":Ljava/lang/String;
    .local v7, "compilerFilter":Ljava/lang/String;
    .restart local v13    # "targetCompilerFilter":Ljava/lang/String;
    :cond_14
    move-object/from16 v22, v7

    .end local v7    # "compilerFilter":Ljava/lang/String;
    .restart local v22    # "compilerFilter":Ljava/lang/String;
    move-object v7, v13

    .line 1450
    .end local v13    # "targetCompilerFilter":Ljava/lang/String;
    .local v7, "targetCompilerFilter":Ljava/lang/String;
    :goto_9
    const/4 v2, 0x0

    .line 1451
    .local v2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_15

    .line 1452
    iget-object v13, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v13}, Landroid/content/pm/IPackageManager;->getAllPackages()Ljava/util/List;

    move-result-object v2

    goto :goto_a

    .line 1454
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v13

    .line 1455
    .local v13, "packageName":Ljava/lang/String;
    if-nez v13, :cond_16

    .line 1456
    const-string v14, "Error: package name not specified"

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1457
    const/4 v14, 0x1

    return v14

    .line 1459
    :cond_16
    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1462
    .end local v13    # "packageName":Ljava/lang/String;
    :goto_a
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v13

    .line 1463
    .local v14, "failedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .line 1464
    .local v13, "index":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_b
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1c

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v24, v8

    .end local v8    # "compilationReason":Ljava/lang/String;
    .local v24, "compilationReason":Ljava/lang/String;
    move-object/from16 v8, v16

    check-cast v8, Ljava/lang/String;

    .line 1465
    .local v8, "packageName":Ljava/lang/String;
    if-eqz v6, :cond_17

    .line 1466
    move/from16 v25, v6

    .end local v6    # "clearProfileData":Z
    .local v25, "clearProfileData":Z
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v6, v8}, Landroid/content/pm/IPackageManager;->clearApplicationProfileData(Ljava/lang/String;)V

    goto :goto_c

    .line 1465
    .end local v25    # "clearProfileData":Z
    .restart local v6    # "clearProfileData":Z
    :cond_17
    move/from16 v25, v6

    .line 1469
    .end local v6    # "clearProfileData":Z
    .restart local v25    # "clearProfileData":Z
    :goto_c
    if-eqz v5, :cond_18

    .line 1470
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v26, v5

    .end local v5    # "allPackages":Z
    .local v26, "allPackages":Z
    const-string v5, "/"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1471
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    move v5, v13

    goto :goto_d

    .line 1469
    .end local v26    # "allPackages":Z
    .restart local v5    # "allPackages":Z
    :cond_18
    move/from16 v26, v5

    .end local v5    # "allPackages":Z
    .restart local v26    # "allPackages":Z
    move v5, v13

    .line 1474
    .end local v13    # "index":I
    .local v5, "index":I
    :goto_d
    const/4 v6, 0x1

    .line 1475
    .local v6, "result":Z
    if-eqz v12, :cond_19

    .line 1476
    const-class v13, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v13}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PackageManagerInternal;

    .line 1478
    .local v13, "internal":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v13, v8}, Landroid/content/pm/PackageManagerInternal;->compileLayouts(Ljava/lang/String;)Z

    move-result v6

    .line 1479
    .end local v13    # "internal":Landroid/content/pm/PackageManagerInternal;
    move-object v0, v14

    move-object/from16 v27, v15

    goto :goto_f

    .line 1480
    :cond_19
    if-eqz v10, :cond_1a

    .line 1481
    iget-object v13, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v13, v8, v7, v4}, Landroid/content/pm/IPackageManager;->performDexOptSecondary(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v13

    move-object v0, v14

    move-object/from16 v27, v15

    goto :goto_e

    .line 1483
    :cond_1a
    iget-object v13, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/16 v18, 0x1

    move-object v0, v14

    .end local v14    # "failedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "failedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v14, v8

    move-object/from16 v27, v15

    .end local v15    # "opt":Ljava/lang/String;
    .local v27, "opt":Ljava/lang/String;
    move v15, v3

    move-object/from16 v16, v7

    move/from16 v17, v4

    move-object/from16 v19, v11

    invoke-interface/range {v13 .. v19}, Landroid/content/pm/IPackageManager;->performDexOptMode(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)Z

    move-result v13

    :goto_e
    move v6, v13

    .line 1487
    :goto_f
    if-nez v6, :cond_1b

    .line 1488
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1490
    .end local v6    # "result":Z
    .end local v8    # "packageName":Ljava/lang/String;
    :cond_1b
    move-object v14, v0

    move v13, v5

    move-object/from16 v8, v24

    move/from16 v6, v25

    move/from16 v5, v26

    move-object/from16 v15, v27

    move-object/from16 v0, p0

    goto/16 :goto_b

    .line 1492
    .end local v0    # "failedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "compilationReason":Ljava/lang/String;
    .end local v25    # "clearProfileData":Z
    .end local v26    # "allPackages":Z
    .end local v27    # "opt":Ljava/lang/String;
    .local v5, "allPackages":Z
    .local v6, "clearProfileData":Z
    .local v8, "compilationReason":Ljava/lang/String;
    .local v13, "index":I
    .restart local v14    # "failedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15    # "opt":Ljava/lang/String;
    :cond_1c
    move/from16 v26, v5

    move/from16 v25, v6

    move-object/from16 v24, v8

    move-object v0, v14

    move-object/from16 v27, v15

    .end local v5    # "allPackages":Z
    .end local v6    # "clearProfileData":Z
    .end local v8    # "compilationReason":Ljava/lang/String;
    .end local v14    # "failedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "opt":Ljava/lang/String;
    .restart local v0    # "failedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "compilationReason":Ljava/lang/String;
    .restart local v25    # "clearProfileData":Z
    .restart local v26    # "allPackages":Z
    .restart local v27    # "opt":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 1493
    const-string v5, "Success"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1494
    const/4 v5, 0x0

    return v5

    .line 1495
    :cond_1d
    const/4 v5, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_1e

    .line 1496
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure: package "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " could not be compiled"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1497
    const/4 v5, 0x1

    return v5

    .line 1499
    :cond_1e
    const-string v5, "Failure: the following packages could not be compiled: "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1500
    const/4 v5, 0x1

    .line 1501
    .local v5, "is_first":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_20

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1502
    .local v8, "packageName":Ljava/lang/String;
    if-eqz v5, :cond_1f

    .line 1503
    const/4 v5, 0x0

    goto :goto_11

    .line 1505
    :cond_1f
    const-string v14, ", "

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1507
    :goto_11
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1508
    .end local v8    # "packageName":Ljava/lang/String;
    goto :goto_10

    .line 1509
    :cond_20
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 1510
    const/4 v6, 0x1

    return v6

    nop

    :sswitch_data_0
    .sparse-switch
        -0x60476451 -> :sswitch_9
        -0x60346686 -> :sswitch_8
        0x5d4 -> :sswitch_7
        0x5d6 -> :sswitch_6
        0x5d9 -> :sswitch_5
        0x5e0 -> :sswitch_4
        0x5e5 -> :sswitch_3
        0x4baaae9e -> :sswitch_2
        0x4ee8cb4f -> :sswitch_1
        0x64c6429e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private runDexoptJob()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1527
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1528
    .local v0, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "arg":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1529
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1531
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    .line 1532
    :cond_1
    move-object v3, v0

    .line 1531
    :goto_1
    invoke-interface {v1, v3}, Landroid/content/pm/IPackageManager;->runBackgroundDexoptJob(Ljava/util/List;)Z

    move-result v1

    .line 1533
    .local v1, "result":Z
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    if-eqz v1, :cond_2

    const-string v4, "Success"

    goto :goto_2

    :cond_2
    const-string v4, "Failure"

    :goto_2
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1534
    if-eqz v1, :cond_3

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    const/4 v3, -0x1

    :goto_3
    return v3
.end method

.method private runDump()I
    .locals 3

    .line 2636
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2637
    .local v0, "pkg":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2638
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Error: no package specified"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2639
    const/4 v1, 0x1

    return v1

    .line 2641
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/app/ActivityManager;->dumpPackageStateStatic(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    .line 2642
    const/4 v1, 0x0

    return v1
.end method

.method private runDumpProfiles()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1538
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 1539
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, v0}, Landroid/content/pm/IPackageManager;->dumpProfiles(Ljava/lang/String;)V

    .line 1540
    const/4 v1, 0x0

    return v1
.end method

.method private runGetAppLink()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2183
    const/4 v0, 0x0

    .line 2186
    .local v0, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 2187
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2188
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 2190
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2191
    return v3

    .line 2196
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 2197
    .local v1, "pkg":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 2198
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Error: no package specified."

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2199
    return v3

    .line 2202
    :cond_2
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/4 v5, 0x0

    invoke-interface {v4, v1, v5, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 2203
    .local v4, "info":Landroid/content/pm/PackageInfo;
    const-string v6, "Error: package "

    if-nez v4, :cond_3

    .line 2204
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " not found."

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2205
    return v3

    .line 2208
    :cond_3
    iget-object v7, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v7, v7, 0x10

    if-nez v7, :cond_4

    .line 2210
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " does not handle web links."

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2211
    return v3

    .line 2214
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 2215
    invoke-interface {v6, v1, v0}, Landroid/content/pm/IPackageManager;->getIntentVerificationStatus(Ljava/lang/String;I)I

    move-result v6

    .line 2214
    invoke-direct {p0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->linkStateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2217
    return v5
.end method

.method private runGetHarmfulAppWarning()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2669
    const/4 v0, -0x2

    .line 2672
    .local v0, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 2673
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2674
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 2676
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2677
    const/4 v1, -0x1

    return v1

    .line 2681
    :cond_1
    const/4 v1, 0x0

    const-string/jumbo v3, "runGetHarmfulAppWarning"

    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IZLjava/lang/String;)I

    move-result v0

    .line 2683
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 2684
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, v3, v0}, Landroid/content/pm/IPackageManager;->getHarmfulAppWarning(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 2685
    .local v4, "warning":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2686
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2687
    return v1

    .line 2689
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private runGetInstallLocation()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1271
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getInstallLocation()I

    move-result v0

    .line 1272
    .local v0, "loc":I
    const-string v1, "invalid"

    .line 1273
    .local v1, "locStr":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1274
    const-string v1, "auto"

    goto :goto_0

    .line 1275
    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1276
    const-string v1, "internal"

    goto :goto_0

    .line 1277
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 1278
    const-string v1, "external"

    .line 1280
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1281
    const/4 v2, 0x0

    return v2
.end method

.method private runGetInstantAppResolver()I
    .locals 4

    .line 2599
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2601
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v2}, Landroid/content/pm/IPackageManager;->getInstantAppResolverComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 2602
    .local v2, "instantAppsResolver":Landroid/content/ComponentName;
    if-nez v2, :cond_0

    .line 2603
    return v1

    .line 2605
    :cond_0
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2606
    const/4 v1, 0x0

    return v1

    .line 2607
    .end local v2    # "instantAppsResolver":Landroid/content/ComponentName;
    :catch_0
    move-exception v2

    .line 2608
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2609
    return v1
.end method

.method private runGetModuleInfo()I
    .locals 12

    .line 313
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 314
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 317
    .local v1, "flags":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "opt":Ljava/lang/String;
    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eqz v2, :cond_5

    .line 318
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v6, 0x2901001

    if-eq v2, v6, :cond_2

    const v6, 0x1ed785da

    if-eq v2, v6, :cond_1

    :cond_0
    goto :goto_1

    :cond_1
    const-string v2, "--installed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_2

    :cond_2
    const-string v2, "--all"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_2

    :goto_1
    move v2, v5

    :goto_2
    if-eqz v2, :cond_4

    if-eq v2, v4, :cond_3

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    return v5

    .line 323
    :cond_3
    goto :goto_3

    .line 320
    :cond_4
    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    .line 321
    nop

    .line 326
    :goto_3
    goto :goto_0

    .line 330
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 332
    .local v2, "moduleName":Ljava/lang/String;
    const-string v6, " packageName: "

    if-eqz v2, :cond_6

    .line 333
    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v7, v2, v1}, Landroid/content/pm/IPackageManager;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    move-result-object v7

    .line 334
    .local v7, "m":Landroid/content/pm/ModuleInfo;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/content/pm/ModuleInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/content/pm/ModuleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 336
    .end local v7    # "m":Landroid/content/pm/ModuleInfo;
    goto :goto_5

    .line 337
    :cond_6
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v7, v1}, Landroid/content/pm/IPackageManager;->getInstalledModules(I)Ljava/util/List;

    move-result-object v7

    .line 338
    .local v7, "modules":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ModuleInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ModuleInfo;

    .line 339
    .local v9, "m":Landroid/content/pm/ModuleInfo;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Landroid/content/pm/ModuleInfo;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/content/pm/ModuleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    .end local v9    # "m":Landroid/content/pm/ModuleInfo;
    goto :goto_4

    .line 345
    .end local v7    # "modules":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ModuleInfo;>;"
    :cond_7
    :goto_5
    nop

    .line 346
    return v4

    .line 342
    :catch_0
    move-exception v4

    .line 343
    .local v4, "e":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 344
    return v5
.end method

.method private runGetOemPermissions()I
    .locals 4

    .line 2079
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2080
    .local v0, "pkg":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2081
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Error: no package specified."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2082
    const/4 v1, 0x1

    return v1

    .line 2084
    :cond_0
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    .line 2085
    invoke-virtual {v1, v0}, Lcom/android/server/SystemConfig;->getOemPermissions(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 2086
    .local v1, "oemPermissions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 2089
    :cond_1
    new-instance v2, Lcom/android/server/pm/-$$Lambda$PackageManagerShellCommand$-OZpz58K2HXVuHDuVYKnCu6oo4c;

    invoke-direct {v2, p0}, Lcom/android/server/pm/-$$Lambda$PackageManagerShellCommand$-OZpz58K2HXVuHDuVYKnCu6oo4c;-><init>(Lcom/android/server/pm/PackageManagerShellCommand;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    goto :goto_1

    .line 2087
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string/jumbo v3, "{}"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2093
    :goto_1
    const/4 v2, 0x0

    return v2
.end method

.method private runGetPrivappDenyPermissions()I
    .locals 4

    .line 2055
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2056
    .local v0, "pkg":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2057
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Error: no package specified."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2058
    const/4 v1, 0x1

    return v1

    .line 2061
    :cond_0
    const/4 v1, 0x0

    .line 2062
    .local v1, "privAppPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->isVendorApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2063
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/SystemConfig;->getVendorPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_0

    .line 2064
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->isProductApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2065
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/SystemConfig;->getProductPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_0

    .line 2066
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->isProductServicesApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2067
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    .line 2068
    invoke-virtual {v2, v0}, Lcom/android/server/SystemConfig;->getProductServicesPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_0

    .line 2070
    :cond_3
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/SystemConfig;->getPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    .line 2073
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    if-nez v1, :cond_4

    .line 2074
    const-string/jumbo v3, "{}"

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2073
    :goto_1
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2075
    const/4 v2, 0x0

    return v2
.end method

.method private runGetPrivappPermissions()I
    .locals 4

    .line 2031
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2032
    .local v0, "pkg":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2033
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Error: no package specified."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2034
    const/4 v1, 0x1

    return v1

    .line 2037
    :cond_0
    const/4 v1, 0x0

    .line 2038
    .local v1, "privAppPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->isVendorApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2039
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/SystemConfig;->getVendorPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_0

    .line 2040
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->isProductApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2041
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/SystemConfig;->getProductPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_0

    .line 2042
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->isProductServicesApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2043
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    .line 2044
    invoke-virtual {v2, v0}, Lcom/android/server/SystemConfig;->getProductServicesPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_0

    .line 2046
    :cond_3
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/SystemConfig;->getPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    .line 2049
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    if-nez v1, :cond_4

    .line 2050
    const-string/jumbo v3, "{}"

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2049
    :goto_1
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2051
    const/4 v2, 0x0

    return v2
.end method

.method private runGrantRevokePermission(Z)I
    .locals 7
    .param p1, "grant"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1955
    const/4 v0, 0x0

    .line 1957
    .local v0, "userId":I
    const/4 v1, 0x0

    .line 1958
    .local v1, "opt":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    if-eqz v2, :cond_1

    .line 1959
    const-string v2, "--user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1960
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1964
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 1965
    .local v2, "pkg":Ljava/lang/String;
    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 1966
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Error: no package specified"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1967
    return v3

    .line 1969
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .line 1970
    .local v4, "perm":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 1971
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    const-string v6, "Error: no permission specified"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1972
    return v3

    .line 1975
    :cond_3
    if-eqz p1, :cond_4

    .line 1976
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v2, v4, v0}, Landroid/content/pm/IPackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 1978
    :cond_4
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v2, v4, v0}, Landroid/content/pm/IPackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1980
    :goto_1
    const/4 v3, 0x0

    return v3
.end method

.method private runHasFeature()I
    .locals 8

    .line 2614
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2615
    .local v0, "err":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 2616
    .local v1, "featureName":Ljava/lang/String;
    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 2617
    const-string v3, "Error: expected FEATURE name"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2618
    return v2

    .line 2620
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 2622
    .local v3, "versionString":Ljava/lang/String;
    const/4 v4, 0x0

    if-nez v3, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2623
    .local v5, "version":I
    :goto_0
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v6, v1, v5}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v6

    .line 2624
    .local v6, "hasFeature":Z
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/io/PrintWriter;->println(Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2625
    if-eqz v6, :cond_2

    move v2, v4

    :cond_2
    return v2

    .line 2629
    .end local v5    # "version":I
    .end local v6    # "hasFeature":Z
    :catch_0
    move-exception v4

    .line 2630
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2631
    return v2

    .line 2626
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 2627
    .local v4, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: illegal version number "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2628
    return v2
.end method

.method private runInstall()I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1061
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1062
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->makeInstallParams()Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;

    move-result-object v1

    .line 1063
    .local v1, "params":Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v9

    .line 1065
    .local v9, "inPath":Ljava/lang/String;
    invoke-direct {p0, v1, v9}, Lcom/android/server/pm/PackageManagerShellCommand;->setParamsSize(Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;Ljava/lang/String;)V

    .line 1066
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    iget v4, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->userId:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doCreateSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result v10

    .line 1068
    .local v10, "sessionId":I
    const/4 v11, 0x1

    .line 1070
    .local v11, "abandonSession":Z
    const/4 v12, 0x1

    const/4 v13, 0x0

    if-nez v9, :cond_1

    :try_start_0
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 1071
    const-string v2, "Error: must either specify a package size or an APK file"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1072
    nop

    .line 1105
    if-eqz v11, :cond_0

    .line 1107
    :try_start_1
    invoke-direct {p0, v10, v13}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1109
    goto :goto_0

    .line 1108
    :catch_0
    move-exception v2

    .line 1072
    :cond_0
    :goto_0
    return v12

    .line 1074
    :cond_1
    :try_start_2
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v3, 0x20000

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    move v2, v12

    goto :goto_1

    :cond_2
    move v2, v13

    :goto_1
    move v14, v2

    .line 1076
    .local v14, "isApex":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "base."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v14, :cond_3

    const-string v3, "apex"

    goto :goto_2

    :cond_3
    const-string v3, "apk"

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1087
    .local v7, "splitName":Ljava/lang/String;
    :try_start_3
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v5, v2, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    const/4 v8, 0x0

    move-object v2, p0

    move v3, v10

    move-object v4, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerShellCommand;->doWriteSplit(ILjava/lang/String;JLjava/lang/String;Z)I

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_5

    .line 1089
    nop

    .line 1105
    if-eqz v11, :cond_4

    .line 1107
    :try_start_4
    invoke-direct {p0, v10, v13}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1109
    goto :goto_3

    .line 1108
    :catch_1
    move-exception v2

    .line 1089
    :cond_4
    :goto_3
    return v12

    .line 1095
    :cond_5
    nop

    .line 1097
    :try_start_5
    invoke-direct {p0, v10, v13}, Lcom/android/server/pm/PackageManagerShellCommand;->doCommitSession(IZ)I

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_7

    .line 1099
    nop

    .line 1105
    if-eqz v11, :cond_6

    .line 1107
    :try_start_6
    invoke-direct {p0, v10, v13}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 1109
    goto :goto_4

    .line 1108
    :catch_2
    move-exception v2

    .line 1099
    :cond_6
    :goto_4
    return v12

    .line 1101
    :cond_7
    const/4 v11, 0x0

    .line 1102
    :try_start_7
    const-string v2, "Success"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1103
    nop

    .line 1105
    if-eqz v11, :cond_8

    .line 1107
    :try_start_8
    invoke-direct {p0, v10, v13}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 1109
    goto :goto_5

    .line 1108
    :catch_3
    move-exception v2

    .line 1103
    :cond_8
    :goto_5
    return v13

    .line 1091
    :catch_4
    move-exception v2

    .line 1092
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Installation failed of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1093
    const-string v3, "PackageManagerShellCommand"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "runInstall failed on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1094
    nop

    .line 1105
    if-eqz v11, :cond_9

    .line 1107
    :try_start_a
    invoke-direct {p0, v10, v13}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 1109
    goto :goto_6

    .line 1108
    :catch_5
    move-exception v3

    .line 1094
    :cond_9
    :goto_6
    return v12

    .line 1105
    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v7    # "splitName":Ljava/lang/String;
    .end local v14    # "isApex":Z
    :catchall_0
    move-exception v2

    if-eqz v11, :cond_a

    .line 1107
    :try_start_b
    invoke-direct {p0, v10, v13}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 1109
    goto :goto_7

    .line 1108
    :catch_6
    move-exception v3

    .line 1109
    :cond_a
    :goto_7
    throw v2
.end method

.method private runInstallAbandon()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1115
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1116
    .local v0, "sessionId":I
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I

    move-result v1

    return v1
.end method

.method private runInstallAddSession()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1154
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1155
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1157
    .local v1, "parentSessionId":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1159
    .local v2, "otherSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "opt":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1160
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1162
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    if-nez v3, :cond_1

    .line 1163
    const-string v3, "Error: At least two sessions are required."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1164
    return v5

    .line 1166
    :cond_1
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Ljava/util/List;)[I

    move-result-object v3

    invoke-direct {p0, v1, v3, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->doInstallAddSession(I[IZ)I

    move-result v3

    return v3
.end method

.method private runInstallCommit()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1120
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1121
    .local v0, "sessionId":I
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->doCommitSession(IZ)I

    move-result v1

    return v1
.end method

.method private runInstallCreate()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1125
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1126
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->makeInstallParams()Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;

    move-result-object v1

    .line 1127
    .local v1, "installParams":Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    iget v4, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->userId:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doCreateSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result v2

    .line 1131
    .local v2, "sessionId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Success: created install session ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1132
    const/4 v3, 0x0

    return v3
.end method

.method private runInstallExisting()I
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1184
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 1185
    .local v2, "pw":Ljava/io/PrintWriter;
    const/4 v0, 0x0

    .line 1186
    .local v0, "userId":I
    const/high16 v3, 0x400000

    .line 1188
    .local v3, "installFlags":I
    const/4 v4, 0x0

    move v12, v4

    move v4, v3

    move v3, v0

    .line 1189
    .end local v0    # "userId":I
    .local v3, "userId":I
    .local v4, "installFlags":I
    .local v12, "waitTillComplete":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .local v13, "opt":Ljava/lang/String;
    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v0, :cond_6

    .line 1190
    const/4 v0, -0x1

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    sparse-switch v5, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v5, "--restrict-permissions"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v6

    goto :goto_1

    :sswitch_1
    const-string v5, "--wait"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v7

    goto :goto_1

    :sswitch_2
    const-string v5, "--user"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v14

    goto :goto_1

    :sswitch_3
    const-string v5, "--full"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v8

    goto :goto_1

    :sswitch_4
    const-string v5, "--ephemeral"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v15

    goto :goto_1

    :sswitch_5
    const-string v5, "--instant"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v9

    :goto_1
    if-eqz v0, :cond_5

    if-eq v0, v15, :cond_4

    if-eq v0, v9, :cond_4

    if-eq v0, v8, :cond_3

    if-eq v0, v7, :cond_2

    if-eq v0, v6, :cond_1

    .line 1210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1211
    return v15

    .line 1207
    :cond_1
    const v0, -0x400001

    and-int/2addr v0, v4

    .line 1208
    .end local v4    # "installFlags":I
    .local v0, "installFlags":I
    move v4, v0

    goto :goto_2

    .line 1204
    .end local v0    # "installFlags":I
    .restart local v4    # "installFlags":I
    :cond_2
    const/4 v0, 0x1

    .line 1205
    .end local v12    # "waitTillComplete":Z
    .local v0, "waitTillComplete":Z
    move v12, v0

    goto :goto_2

    .line 1200
    .end local v0    # "waitTillComplete":Z
    .restart local v12    # "waitTillComplete":Z
    :cond_3
    and-int/lit16 v0, v4, -0x801

    .line 1201
    .end local v4    # "installFlags":I
    .local v0, "installFlags":I
    or-int/lit16 v0, v0, 0x4000

    .line 1202
    move v4, v0

    goto :goto_2

    .line 1196
    .end local v0    # "installFlags":I
    .restart local v4    # "installFlags":I
    :cond_4
    or-int/lit16 v0, v4, 0x800

    .line 1197
    .end local v4    # "installFlags":I
    .restart local v0    # "installFlags":I
    and-int/lit16 v0, v0, -0x4001

    .line 1198
    move v4, v0

    goto :goto_2

    .line 1192
    .end local v0    # "installFlags":I
    .restart local v4    # "installFlags":I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 1193
    .end local v3    # "userId":I
    .local v0, "userId":I
    move v3, v0

    .line 1211
    .end local v0    # "userId":I
    .restart local v3    # "userId":I
    :goto_2
    goto/16 :goto_0

    .line 1215
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v11

    .line 1216
    .local v11, "packageName":Ljava/lang/String;
    if-nez v11, :cond_7

    .line 1217
    const-string v0, "Error: package name not specified"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1218
    return v15

    .line 1221
    :cond_7
    const/16 v16, 0x0

    .line 1223
    .local v16, "installReason":I
    if-eqz v12, :cond_9

    .line 1224
    :try_start_0
    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    const/4 v5, 0x0

    invoke-direct {v0, v5}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$1;)V

    .line 1225
    .local v0, "receiver":Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v5}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v5

    .line 1226
    .local v5, "installer":Landroid/content/pm/IPackageInstaller;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Installing package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " for user: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1227
    nop

    .line 1228
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v9
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v17, 0x0

    .line 1227
    move-object v6, v11

    move v7, v4

    move/from16 v8, v16

    move v10, v3

    move-object/from16 v18, v11

    .end local v11    # "packageName":Ljava/lang/String;
    .local v18, "packageName":Ljava/lang/String;
    move-object/from16 v11, v17

    :try_start_1
    invoke-interface/range {v5 .. v11}, Landroid/content/pm/IPackageInstaller;->installExistingPackage(Ljava/lang/String;IILandroid/content/IntentSender;ILjava/util/List;)V

    .line 1229
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v6

    .line 1230
    .local v6, "result":Landroid/content/Intent;
    const-string v7, "android.content.pm.extra.STATUS"

    invoke-virtual {v6, v7, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1232
    .local v7, "status":I
    const-string v8, "Received intent for package install"

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1233
    if-nez v7, :cond_8

    move v15, v14

    :cond_8
    return v15

    .line 1243
    .end local v0    # "receiver":Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
    .end local v5    # "installer":Landroid/content/pm/IPackageInstaller;
    .end local v6    # "result":Landroid/content/Intent;
    .end local v7    # "status":I
    :catch_0
    move-exception v0

    move-object/from16 v7, v18

    goto :goto_3

    .end local v18    # "packageName":Ljava/lang/String;
    .restart local v11    # "packageName":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v7, v11

    .end local v11    # "packageName":Ljava/lang/String;
    .restart local v18    # "packageName":Ljava/lang/String;
    goto :goto_3

    .line 1236
    .end local v18    # "packageName":Ljava/lang/String;
    .restart local v11    # "packageName":Ljava/lang/String;
    :cond_9
    move-object/from16 v18, v11

    .end local v11    # "packageName":Ljava/lang/String;
    .restart local v18    # "packageName":Ljava/lang/String;
    :try_start_2
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/4 v10, 0x0

    move-object/from16 v6, v18

    move v7, v3

    move v8, v4

    move/from16 v9, v16

    invoke-interface/range {v5 .. v10}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;)I

    move-result v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1238
    .local v0, "res":I
    const/4 v5, -0x3

    const-string v6, "Package "

    if-eq v0, v5, :cond_a

    .line 1241
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v7, v18

    .end local v18    # "packageName":Ljava/lang/String;
    .local v7, "packageName":Ljava/lang/String;
    :try_start_4
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " installed for user: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1242
    return v14

    .line 1239
    .end local v7    # "packageName":Ljava/lang/String;
    .restart local v18    # "packageName":Ljava/lang/String;
    :cond_a
    move-object/from16 v7, v18

    .end local v18    # "packageName":Ljava/lang/String;
    .restart local v7    # "packageName":Ljava/lang/String;
    new-instance v5, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " doesn\'t exist"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v2    # "pw":Ljava/io/PrintWriter;
    .end local v3    # "userId":I
    .end local v4    # "installFlags":I
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v12    # "waitTillComplete":Z
    .end local v13    # "opt":Ljava/lang/String;
    .end local v16    # "installReason":I
    .end local p0    # "this":Lcom/android/server/pm/PackageManagerShellCommand;
    throw v5
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1243
    .end local v0    # "res":I
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    .restart local v3    # "userId":I
    .restart local v4    # "installFlags":I
    .restart local v7    # "packageName":Ljava/lang/String;
    .restart local v12    # "waitTillComplete":Z
    .restart local v13    # "opt":Ljava/lang/String;
    .restart local v16    # "installReason":I
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerShellCommand;
    :catch_2
    move-exception v0

    goto :goto_3

    .end local v7    # "packageName":Ljava/lang/String;
    .restart local v18    # "packageName":Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object/from16 v7, v18

    .line 1244
    .end local v18    # "packageName":Ljava/lang/String;
    .local v0, "e":Landroid/util/AndroidException;
    .restart local v7    # "packageName":Ljava/lang/String;
    :goto_3
    invoke-virtual {v0}, Landroid/util/AndroidException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1245
    return v15

    :sswitch_data_0
    .sparse-switch
        -0x38b573bf -> :sswitch_5
        0x3eb0e7fd -> :sswitch_4
        0x4f74582f -> :sswitch_3
        0x4f7b216b -> :sswitch_2
        0x4f7bc715 -> :sswitch_1
        0x59147c93 -> :sswitch_0
    .end sparse-switch
.end method

.method private runInstallRemove()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1171
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1173
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1175
    .local v1, "sessionId":I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 1176
    .local v2, "splitName":Ljava/lang/String;
    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 1177
    const-string v4, "Error: split name not specified"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1178
    return v3

    .line 1180
    :cond_0
    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->doRemoveSplit(ILjava/lang/String;Z)I

    move-result v3

    return v3
.end method

.method private runInstallWrite()I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1136
    const-wide/16 v0, -0x1

    .line 1139
    .local v0, "sizeBytes":J
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    .local v9, "opt":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1140
    const-string v2, "-S"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1141
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    .line 1143
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1147
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1148
    .local v10, "sessionId":I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v11

    .line 1149
    .local v11, "splitName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v12

    .line 1150
    .local v12, "path":Ljava/lang/String;
    const/4 v8, 0x1

    move-object v2, p0

    move v3, v10

    move-object v4, v12

    move-wide v5, v0

    move-object v7, v11

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerShellCommand;->doWriteSplit(ILjava/lang/String;JLjava/lang/String;Z)I

    move-result v2

    return v2
.end method

.method private runList()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 523
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 524
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 525
    .local v1, "type":Ljava/lang/String;
    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 526
    const-string v3, "Error: didn\'t specify type of data to list"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 527
    return v2

    .line 529
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    sparse-switch v3, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string/jumbo v3, "permissions"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x6

    goto :goto_1

    :sswitch_1
    const-string/jumbo v3, "libraries"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_2
    const-string/jumbo v3, "packages"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_3
    const-string v3, "instrumentation"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_4
    const-string/jumbo v3, "users"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x7

    goto :goto_1

    :sswitch_5
    const-string v3, "features"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    :sswitch_6
    const-string/jumbo v3, "package"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_7
    const-string/jumbo v3, "permission-groups"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x5

    goto :goto_1

    :goto_0
    move v3, v2

    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 549
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: unknown list type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 550
    return v2

    .line 544
    :pswitch_0
    const-string/jumbo v2, "user"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 545
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getInFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const-string/jumbo v2, "list"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v9

    .line 546
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getShellCallback()Landroid/os/ShellCallback;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->adoptResultReceiver()Landroid/os/ResultReceiver;

    move-result-object v11

    .line 544
    invoke-interface/range {v5 .. v11}, Landroid/os/IBinder;->shellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V

    .line 547
    return v4

    .line 542
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPermissions()I

    move-result v2

    return v2

    .line 540
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPermissionGroups()I

    move-result v2

    return v2

    .line 538
    :pswitch_3
    invoke-direct {p0, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPackages(Z)I

    move-result v2

    return v2

    .line 535
    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListLibraries()I

    move-result v2

    return v2

    .line 533
    :pswitch_5
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListInstrumentation()I

    move-result v2

    return v2

    .line 531
    :pswitch_6
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListFeatures()I

    move-result v2

    return v2

    :sswitch_data_0
    .sparse-switch
        -0x3b73d86e -> :sswitch_7
        -0x301acbba -> :sswitch_6
        -0x11531bc3 -> :sswitch_5
        0x6a68e08 -> :sswitch_4
        0x20752f6e -> :sswitch_3
        0x2cc154ed -> :sswitch_2
        0x3071b299 -> :sswitch_1
        0x4392f484 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private runListFeatures()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 554
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 555
    .local v0, "pw":Ljava/io/PrintWriter;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getSystemAvailableFeatures()Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 558
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/FeatureInfo;>;"
    new-instance v2, Lcom/android/server/pm/PackageManagerShellCommand$1;

    invoke-direct {v2, p0}, Lcom/android/server/pm/PackageManagerShellCommand$1;-><init>(Lcom/android/server/pm/PackageManagerShellCommand;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 567
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    .line 568
    .local v3, "count":I
    :goto_0
    const/4 v4, 0x0

    .local v4, "p":I
    :goto_1
    if-ge v4, v3, :cond_3

    .line 569
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/FeatureInfo;

    .line 570
    .local v5, "fi":Landroid/content/pm/FeatureInfo;
    const-string v6, "feature:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 571
    iget-object v6, v5, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 572
    iget-object v6, v5, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 573
    iget v6, v5, Landroid/content/pm/FeatureInfo;->version:I

    if-lez v6, :cond_1

    .line 574
    const-string v6, "="

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 575
    iget v6, v5, Landroid/content/pm/FeatureInfo;->version:I

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 577
    :cond_1
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    goto :goto_2

    .line 579
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "reqGlEsVersion=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    .line 580
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 579
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 568
    .end local v5    # "fi":Landroid/content/pm/FeatureInfo;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 583
    .end local v4    # "p":I
    :cond_3
    return v2
.end method

.method private runListInstrumentation()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 587
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 588
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 589
    .local v1, "showSourceDir":Z
    const/4 v2, 0x0

    .line 593
    .local v2, "targetPackage":Ljava/lang/String;
    :goto_0
    const/4 v3, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "opt":Ljava/lang/String;
    const/4 v6, 0x0

    if-eqz v4, :cond_4

    .line 594
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v7, 0x5d9

    if-eq v4, v7, :cond_1

    :cond_0
    goto :goto_1

    :cond_1
    const-string v4, "-f"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_2

    :goto_1
    move v4, v3

    :goto_2
    if-eqz v4, :cond_3

    .line 599
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x2d

    if-eq v4, v6, :cond_2

    .line 600
    move-object v2, v5

    goto :goto_3

    .line 602
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: Unknown option: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    return v3

    .line 596
    :cond_3
    const/4 v1, 0x1

    .line 597
    nop

    .line 605
    :goto_3
    goto :goto_0

    .line 611
    .end local v5    # "opt":Ljava/lang/String;
    :cond_4
    nop

    .line 613
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 614
    invoke-interface {v3, v2, v6}, Landroid/content/pm/IPackageManager;->queryInstrumentation(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    .line 617
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    new-instance v4, Lcom/android/server/pm/PackageManagerShellCommand$2;

    invoke-direct {v4, p0}, Lcom/android/server/pm/PackageManagerShellCommand$2;-><init>(Lcom/android/server/pm/PackageManagerShellCommand;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 623
    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_4

    :cond_5
    move v4, v6

    .line 624
    .local v4, "count":I
    :goto_4
    const/4 v5, 0x0

    .local v5, "p":I
    :goto_5
    if-ge v5, v4, :cond_7

    .line 625
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/InstrumentationInfo;

    .line 626
    .local v7, "ii":Landroid/content/pm/InstrumentationInfo;
    const-string v8, "instrumentation:"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 627
    if-eqz v1, :cond_6

    .line 628
    iget-object v8, v7, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 629
    const-string v8, "="

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 631
    :cond_6
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v7, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    iget-object v10, v7, Landroid/content/pm/InstrumentationInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    .local v8, "cn":Landroid/content/ComponentName;
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 633
    const-string v9, " (target="

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 634
    iget-object v9, v7, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 635
    const-string v9, ")"

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 624
    .end local v7    # "ii":Landroid/content/pm/InstrumentationInfo;
    .end local v8    # "cn":Landroid/content/ComponentName;
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 637
    .end local v5    # "p":I
    :cond_7
    return v6

    .line 608
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    .end local v4    # "count":I
    :catch_0
    move-exception v4

    .line 609
    .local v4, "ex":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 610
    return v3
.end method

.method private runListLibraries()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 641
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 642
    .local v0, "pw":Ljava/io/PrintWriter;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 643
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v2}, Landroid/content/pm/IPackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v2

    .line 644
    .local v2, "rawList":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 645
    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 644
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 649
    .end local v3    # "i":I
    :cond_0
    new-instance v3, Lcom/android/server/pm/PackageManagerShellCommand$3;

    invoke-direct {v3, p0}, Lcom/android/server/pm/PackageManagerShellCommand$3;-><init>(Lcom/android/server/pm/PackageManagerShellCommand;)V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 658
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 659
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "p":I
    :goto_1
    if-ge v4, v3, :cond_1

    .line 660
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 661
    .local v5, "lib":Ljava/lang/String;
    const-string/jumbo v6, "library:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 662
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 659
    .end local v5    # "lib":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 664
    .end local v4    # "p":I
    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method private runListPackages(Z)I
    .locals 27
    .param p1, "showSourceDir"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 668
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 669
    .local v2, "pw":Ljava/io/PrintWriter;
    const/4 v0, 0x0

    .line 670
    .local v0, "getFlags":I
    const/4 v3, 0x0

    .local v3, "listDisabled":Z
    const/4 v4, 0x0

    .line 671
    .local v4, "listEnabled":Z
    const/4 v5, 0x0

    .local v5, "listSystem":Z
    const/4 v6, 0x0

    .line 672
    .local v6, "listThirdParty":Z
    const/4 v7, 0x0

    .line 673
    .local v7, "listInstaller":Z
    const/4 v8, 0x0

    .line 674
    .local v8, "showUid":Z
    const/4 v9, 0x0

    .line 675
    .local v9, "showVersionCode":Z
    const/4 v10, 0x0

    .line 676
    .local v10, "listApexOnly":Z
    const/4 v11, -0x1

    .line 677
    .local v11, "uid":I
    const/4 v12, 0x0

    move v13, v6

    move v14, v7

    move v6, v4

    move v7, v5

    move/from16 v4, p1

    move v5, v3

    move v3, v0

    .line 680
    .end local v0    # "getFlags":I
    .end local p1    # "showSourceDir":Z
    .local v3, "getFlags":I
    .local v4, "showSourceDir":Z
    .local v5, "listDisabled":Z
    .local v6, "listEnabled":Z
    .local v7, "listSystem":Z
    .local v12, "userId":I
    .local v13, "listThirdParty":Z
    .local v14, "listInstaller":Z
    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 p1, v0

    .local p1, "opt":Ljava/lang/String;
    const/16 v16, 0x0

    const/16 v17, 0x1

    if-eqz v0, :cond_1

    .line 681
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    sparse-switch v0, :sswitch_data_0

    move-object/from16 v15, p1

    .end local p1    # "opt":Ljava/lang/String;
    .local v15, "opt":Ljava/lang/String;
    goto/16 :goto_1

    .end local v15    # "opt":Ljava/lang/String;
    .restart local p1    # "opt":Ljava/lang/String;
    :sswitch_0
    :try_start_2
    const-string v0, "--apex-only"

    move-object/from16 v15, p1

    .end local p1    # "opt":Ljava/lang/String;
    .restart local v15    # "opt":Ljava/lang/String;
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_2

    .end local v15    # "opt":Ljava/lang/String;
    .restart local p1    # "opt":Ljava/lang/String;
    :sswitch_1
    move-object/from16 v15, p1

    .end local p1    # "opt":Ljava/lang/String;
    .restart local v15    # "opt":Ljava/lang/String;
    const-string v0, "--user"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_2

    .end local v15    # "opt":Ljava/lang/String;
    .restart local p1    # "opt":Ljava/lang/String;
    :sswitch_2
    move-object/from16 v15, p1

    .end local p1    # "opt":Ljava/lang/String;
    .restart local v15    # "opt":Ljava/lang/String;
    const-string v0, "--uid"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_2

    .end local v15    # "opt":Ljava/lang/String;
    .restart local p1    # "opt":Ljava/lang/String;
    :sswitch_3
    move-object/from16 v15, p1

    .end local p1    # "opt":Ljava/lang/String;
    .restart local v15    # "opt":Ljava/lang/String;
    const-string v0, "-u"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_2

    .end local v15    # "opt":Ljava/lang/String;
    .restart local p1    # "opt":Ljava/lang/String;
    :sswitch_4
    move-object/from16 v15, p1

    .end local p1    # "opt":Ljava/lang/String;
    .restart local v15    # "opt":Ljava/lang/String;
    const-string v0, "-s"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_2

    .end local v15    # "opt":Ljava/lang/String;
    .restart local p1    # "opt":Ljava/lang/String;
    :sswitch_5
    move-object/from16 v15, p1

    .end local p1    # "opt":Ljava/lang/String;
    .restart local v15    # "opt":Ljava/lang/String;
    const-string v0, "-l"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_2

    .end local v15    # "opt":Ljava/lang/String;
    .restart local p1    # "opt":Ljava/lang/String;
    :sswitch_6
    move-object/from16 v15, p1

    .end local p1    # "opt":Ljava/lang/String;
    .restart local v15    # "opt":Ljava/lang/String;
    const-string v0, "-i"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_2

    .end local v15    # "opt":Ljava/lang/String;
    .restart local p1    # "opt":Ljava/lang/String;
    :sswitch_7
    move-object/from16 v15, p1

    .end local p1    # "opt":Ljava/lang/String;
    .restart local v15    # "opt":Ljava/lang/String;
    const-string v0, "-f"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_2

    .end local v15    # "opt":Ljava/lang/String;
    .restart local p1    # "opt":Ljava/lang/String;
    :sswitch_8
    move-object/from16 v15, p1

    .end local p1    # "opt":Ljava/lang/String;
    .restart local v15    # "opt":Ljava/lang/String;
    const-string v0, "-e"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move/from16 v0, v17

    goto :goto_2

    .end local v15    # "opt":Ljava/lang/String;
    .restart local p1    # "opt":Ljava/lang/String;
    :sswitch_9
    move-object/from16 v15, p1

    .end local p1    # "opt":Ljava/lang/String;
    .restart local v15    # "opt":Ljava/lang/String;
    const-string v0, "-d"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move/from16 v0, v16

    goto :goto_2

    .end local v15    # "opt":Ljava/lang/String;
    .restart local p1    # "opt":Ljava/lang/String;
    :sswitch_a
    move-object/from16 v15, p1

    .end local p1    # "opt":Ljava/lang/String;
    .restart local v15    # "opt":Ljava/lang/String;
    const-string v0, "-a"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_2

    .end local v15    # "opt":Ljava/lang/String;
    .restart local p1    # "opt":Ljava/lang/String;
    :sswitch_b
    move-object/from16 v15, p1

    .end local p1    # "opt":Ljava/lang/String;
    .restart local v15    # "opt":Ljava/lang/String;
    const-string v0, "-U"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_2

    .end local v15    # "opt":Ljava/lang/String;
    .restart local p1    # "opt":Ljava/lang/String;
    :sswitch_c
    move-object/from16 v15, p1

    .end local p1    # "opt":Ljava/lang/String;
    .restart local v15    # "opt":Ljava/lang/String;
    const-string v0, "-3"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_2

    .end local v15    # "opt":Ljava/lang/String;
    .restart local p1    # "opt":Ljava/lang/String;
    :sswitch_d
    move-object/from16 v15, p1

    .end local p1    # "opt":Ljava/lang/String;
    .restart local v15    # "opt":Ljava/lang/String;
    const-string v0, "--show-versioncode"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_2

    .line 732
    .end local v15    # "opt":Ljava/lang/String;
    :catch_0
    move-exception v0

    move/from16 v18, v3

    move/from16 v26, v4

    move/from16 v25, v5

    move/from16 v19, v12

    goto/16 :goto_b

    .line 681
    .restart local v15    # "opt":Ljava/lang/String;
    :cond_0
    :goto_1
    const/4 v0, -0x1

    :goto_2
    packed-switch v0, :pswitch_data_0

    .line 728
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    .line 724
    :pswitch_0
    const/4 v8, 0x1

    .line 725
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 726
    .end local v11    # "uid":I
    .local v0, "uid":I
    move v11, v0

    goto :goto_3

    .line 721
    .end local v0    # "uid":I
    .restart local v11    # "uid":I
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 722
    .end local v12    # "userId":I
    .local v0, "userId":I
    move v12, v0

    goto :goto_3

    .line 717
    .end local v0    # "userId":I
    .restart local v12    # "userId":I
    :pswitch_2
    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr v0, v3

    .line 718
    .end local v3    # "getFlags":I
    .local v0, "getFlags":I
    const/4 v3, 0x1

    .line 719
    .end local v10    # "listApexOnly":Z
    .local v3, "listApexOnly":Z
    move v10, v3

    move v3, v0

    goto :goto_3

    .line 714
    .end local v0    # "getFlags":I
    .local v3, "getFlags":I
    .restart local v10    # "listApexOnly":Z
    :pswitch_3
    const/4 v0, 0x1

    .line 715
    .end local v9    # "showVersionCode":Z
    .local v0, "showVersionCode":Z
    move v9, v0

    goto :goto_3

    .line 711
    .end local v0    # "showVersionCode":Z
    .restart local v9    # "showVersionCode":Z
    :pswitch_4
    const/4 v0, 0x1

    .line 712
    .end local v13    # "listThirdParty":Z
    .local v0, "listThirdParty":Z
    move v13, v0

    goto :goto_3

    .line 708
    .end local v0    # "listThirdParty":Z
    .restart local v13    # "listThirdParty":Z
    :pswitch_5
    or-int/lit16 v0, v3, 0x2000

    .line 709
    .end local v3    # "getFlags":I
    .local v0, "getFlags":I
    move v3, v0

    goto :goto_3

    .line 705
    .end local v0    # "getFlags":I
    .restart local v3    # "getFlags":I
    :pswitch_6
    const/4 v0, 0x1

    .line 706
    .end local v8    # "showUid":Z
    .local v0, "showUid":Z
    move v8, v0

    goto :goto_3

    .line 702
    .end local v0    # "showUid":Z
    .restart local v8    # "showUid":Z
    :pswitch_7
    const/4 v0, 0x1

    .line 703
    .end local v7    # "listSystem":Z
    .local v0, "listSystem":Z
    move v7, v0

    goto :goto_3

    .line 700
    .end local v0    # "listSystem":Z
    .restart local v7    # "listSystem":Z
    :pswitch_8
    goto :goto_3

    .line 696
    :pswitch_9
    const/4 v0, 0x1

    .line 697
    .end local v14    # "listInstaller":Z
    .local v0, "listInstaller":Z
    move v14, v0

    goto :goto_3

    .line 693
    .end local v0    # "listInstaller":Z
    .restart local v14    # "listInstaller":Z
    :pswitch_a
    const/4 v0, 0x1

    .line 694
    .end local v4    # "showSourceDir":Z
    .local v0, "showSourceDir":Z
    move v4, v0

    goto :goto_3

    .line 689
    .end local v0    # "showSourceDir":Z
    .restart local v4    # "showSourceDir":Z
    :pswitch_b
    const v0, 0x402000

    or-int/2addr v0, v3

    .line 690
    .end local v3    # "getFlags":I
    .local v0, "getFlags":I
    const/high16 v3, 0x20000000

    or-int/2addr v0, v3

    .line 691
    move v3, v0

    goto :goto_3

    .line 686
    .end local v0    # "getFlags":I
    .restart local v3    # "getFlags":I
    :pswitch_c
    const/4 v0, 0x1

    .line 687
    .end local v6    # "listEnabled":Z
    .local v0, "listEnabled":Z
    move v6, v0

    goto :goto_3

    .line 683
    .end local v0    # "listEnabled":Z
    .restart local v6    # "listEnabled":Z
    :pswitch_d
    const/4 v0, 0x1

    .line 684
    .end local v5    # "listDisabled":Z
    .local v0, "listDisabled":Z
    move v5, v0

    .line 729
    .end local v0    # "listDisabled":Z
    .restart local v5    # "listDisabled":Z
    :goto_3
    goto/16 :goto_0

    .line 728
    :goto_4
    :try_start_5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    move/from16 p1, v8

    .end local v8    # "showUid":Z
    .local p1, "showUid":Z
    :try_start_6
    const-string v8, "Error: Unknown option: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    .line 729
    const/4 v8, -0x1

    return v8

    .line 732
    .end local v15    # "opt":Ljava/lang/String;
    :catch_1
    move-exception v0

    move/from16 v8, p1

    move/from16 v18, v3

    move/from16 v26, v4

    move/from16 v25, v5

    move/from16 v19, v12

    goto/16 :goto_b

    .end local p1    # "showUid":Z
    .restart local v8    # "showUid":Z
    :catch_2
    move-exception v0

    move/from16 p1, v8

    move/from16 v18, v3

    move/from16 v26, v4

    move/from16 v25, v5

    move/from16 v19, v12

    .end local v8    # "showUid":Z
    .restart local p1    # "showUid":Z
    goto/16 :goto_b

    .line 680
    .restart local v8    # "showUid":Z
    .local p1, "opt":Ljava/lang/String;
    :cond_1
    move-object/from16 v15, p1

    move/from16 p1, v8

    .line 735
    .end local v8    # "showUid":Z
    .local p1, "showUid":Z
    nop

    .line 737
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 740
    .local v0, "filter":Ljava/lang/String;
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 741
    invoke-interface {v8, v3, v12}, Landroid/content/pm/IPackageManager;->getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v8

    .line 742
    .local v8, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual {v8}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v15

    .line 744
    .local v15, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    move/from16 v18, v3

    .end local v3    # "getFlags":I
    .local v18, "getFlags":I
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    .line 745
    .local v3, "count":I
    const/16 v19, 0x0

    move-object/from16 v20, v8

    move/from16 v8, v19

    .local v8, "p":I
    .local v20, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    :goto_5
    if-ge v8, v3, :cond_13

    .line 746
    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move/from16 v21, v3

    .end local v3    # "count":I
    .local v21, "count":I
    move-object/from16 v3, v19

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 747
    .local v3, "info":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_2

    move/from16 v19, v12

    .end local v12    # "userId":I
    .local v19, "userId":I
    iget-object v12, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 748
    move-object/from16 v23, v0

    move/from16 v26, v4

    move/from16 v25, v5

    move-object/from16 v22, v15

    goto/16 :goto_a

    .line 747
    .end local v19    # "userId":I
    .restart local v12    # "userId":I
    :cond_2
    move/from16 v19, v12

    .line 750
    .end local v12    # "userId":I
    .restart local v19    # "userId":I
    :cond_3
    iget-boolean v12, v3, Landroid/content/pm/PackageInfo;->isApex:Z

    .line 751
    .local v12, "isApex":Z
    move-object/from16 v22, v15

    const/4 v15, -0x1

    .end local v15    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .local v22, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eq v11, v15, :cond_4

    if-nez v12, :cond_4

    iget-object v15, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v15, v11, :cond_4

    .line 752
    move-object/from16 v23, v0

    move/from16 v26, v4

    move/from16 v25, v5

    goto/16 :goto_a

    .line 755
    :cond_4
    if-nez v12, :cond_5

    iget-object v15, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_5

    move/from16 v15, v17

    goto :goto_6

    :cond_5
    move/from16 v15, v16

    .line 757
    .local v15, "isSystem":Z
    :goto_6
    if-nez v12, :cond_6

    move-object/from16 v23, v0

    .end local v0    # "filter":Ljava/lang/String;
    .local v23, "filter":Ljava/lang/String;
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_7

    move/from16 v0, v17

    goto :goto_7

    .end local v23    # "filter":Ljava/lang/String;
    .restart local v0    # "filter":Ljava/lang/String;
    :cond_6
    move-object/from16 v23, v0

    .end local v0    # "filter":Ljava/lang/String;
    .restart local v23    # "filter":Ljava/lang/String;
    :cond_7
    move/from16 v0, v16

    .line 758
    .local v0, "isEnabled":Z
    :goto_7
    if-eqz v5, :cond_9

    if-nez v0, :cond_8

    goto :goto_8

    :cond_8
    move/from16 v26, v4

    move/from16 v25, v5

    goto/16 :goto_a

    :cond_9
    :goto_8
    if-eqz v6, :cond_a

    if-eqz v0, :cond_8

    :cond_a
    if-eqz v7, :cond_b

    if-eqz v15, :cond_8

    :cond_b
    if-eqz v13, :cond_c

    if-nez v15, :cond_8

    :cond_c
    if-eqz v10, :cond_d

    if-eqz v12, :cond_8

    .line 763
    :cond_d
    move/from16 v24, v0

    .end local v0    # "isEnabled":Z
    .local v24, "isEnabled":Z
    const-string/jumbo v0, "package:"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 764
    if-eqz v4, :cond_e

    if-nez v12, :cond_e

    .line 765
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 766
    const-string v0, "="

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 768
    :cond_e
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 769
    if-eqz v9, :cond_10

    .line 770
    const-string v0, " versionCode:"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 771
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_f

    .line 772
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move/from16 v26, v4

    move/from16 v25, v5

    .end local v4    # "showSourceDir":Z
    .end local v5    # "listDisabled":Z
    .local v25, "listDisabled":Z
    .local v26, "showSourceDir":Z
    iget-wide v4, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-virtual {v2, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    goto :goto_9

    .line 774
    .end local v25    # "listDisabled":Z
    .end local v26    # "showSourceDir":Z
    .restart local v4    # "showSourceDir":Z
    .restart local v5    # "listDisabled":Z
    :cond_f
    move/from16 v26, v4

    move/from16 v25, v5

    .end local v4    # "showSourceDir":Z
    .end local v5    # "listDisabled":Z
    .restart local v25    # "listDisabled":Z
    .restart local v26    # "showSourceDir":Z
    invoke-virtual {v3}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    goto :goto_9

    .line 769
    .end local v25    # "listDisabled":Z
    .end local v26    # "showSourceDir":Z
    .restart local v4    # "showSourceDir":Z
    .restart local v5    # "listDisabled":Z
    :cond_10
    move/from16 v26, v4

    move/from16 v25, v5

    .line 777
    .end local v4    # "showSourceDir":Z
    .end local v5    # "listDisabled":Z
    .restart local v25    # "listDisabled":Z
    .restart local v26    # "showSourceDir":Z
    :goto_9
    if-eqz v14, :cond_11

    .line 778
    const-string v0, "  installer="

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 779
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v4}, Landroid/content/pm/IPackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 781
    :cond_11
    if-eqz p1, :cond_12

    if-nez v12, :cond_12

    .line 782
    const-string v0, " uid:"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 783
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 785
    :cond_12
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 745
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    .end local v12    # "isApex":Z
    .end local v15    # "isSystem":Z
    .end local v24    # "isEnabled":Z
    :goto_a
    add-int/lit8 v8, v8, 0x1

    move/from16 v12, v19

    move/from16 v3, v21

    move-object/from16 v15, v22

    move-object/from16 v0, v23

    move/from16 v5, v25

    move/from16 v4, v26

    goto/16 :goto_5

    .line 788
    .end local v8    # "p":I
    .end local v19    # "userId":I
    .end local v21    # "count":I
    .end local v22    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v23    # "filter":Ljava/lang/String;
    .end local v25    # "listDisabled":Z
    .end local v26    # "showSourceDir":Z
    .local v0, "filter":Ljava/lang/String;
    .local v3, "count":I
    .restart local v4    # "showSourceDir":Z
    .restart local v5    # "listDisabled":Z
    .local v12, "userId":I
    .local v15, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_13
    return v16

    .line 732
    .end local v0    # "filter":Ljava/lang/String;
    .end local v15    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v18    # "getFlags":I
    .end local v20    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    .end local p1    # "showUid":Z
    .local v3, "getFlags":I
    .local v8, "showUid":Z
    :catch_3
    move-exception v0

    move/from16 v18, v3

    move/from16 v26, v4

    move/from16 v25, v5

    move/from16 p1, v8

    move/from16 v19, v12

    .line 733
    .end local v3    # "getFlags":I
    .end local v4    # "showSourceDir":Z
    .end local v5    # "listDisabled":Z
    .end local v12    # "userId":I
    .local v0, "ex":Ljava/lang/RuntimeException;
    .restart local v18    # "getFlags":I
    .restart local v19    # "userId":I
    .restart local v25    # "listDisabled":Z
    .restart local v26    # "showSourceDir":Z
    :goto_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 734
    const/4 v3, -0x1

    return v3

    :sswitch_data_0
    .sparse-switch
        -0x1d6f426b -> :sswitch_d
        0x5a6 -> :sswitch_c
        0x5c8 -> :sswitch_b
        0x5d4 -> :sswitch_a
        0x5d7 -> :sswitch_9
        0x5d8 -> :sswitch_8
        0x5d9 -> :sswitch_7
        0x5dc -> :sswitch_6
        0x5df -> :sswitch_5
        0x5e6 -> :sswitch_4
        0x5e8 -> :sswitch_3
        0x2905ab0 -> :sswitch_2
        0x4f7b216b -> :sswitch_1
        0x6bd72bd7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private runListPermissionGroups()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 792
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 793
    .local v0, "pw":Ljava/io/PrintWriter;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->getAllPermissionGroups(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 795
    .local v1, "pgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 796
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "p":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 797
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PermissionGroupInfo;

    .line 798
    .local v5, "pgi":Landroid/content/pm/PermissionGroupInfo;
    const-string/jumbo v6, "permission group:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 799
    iget-object v6, v5, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 796
    .end local v5    # "pgi":Landroid/content/pm/PermissionGroupInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 801
    .end local v4    # "p":I
    :cond_0
    return v2
.end method

.method private runListPermissions()I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 805
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 806
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 807
    .local v1, "labels":Z
    const/4 v2, 0x0

    .line 808
    .local v2, "groups":Z
    const/4 v3, 0x0

    .line 809
    .local v3, "userOnly":Z
    const/4 v4, 0x0

    .line 810
    .local v4, "summary":Z
    const/4 v5, 0x0

    .line 812
    .local v5, "dangerousOnly":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v6

    move-object v13, v6

    .local v13, "opt":Ljava/lang/String;
    const/4 v14, 0x0

    if-eqz v6, :cond_b

    .line 813
    const/4 v6, -0x1

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0x5d7

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eq v7, v8, :cond_5

    const/16 v8, 0x5e6

    if-eq v7, v8, :cond_4

    const/16 v8, 0x5e8

    if-eq v7, v8, :cond_3

    const/16 v8, 0x5d9

    if-eq v7, v8, :cond_2

    const/16 v8, 0x5da

    if-eq v7, v8, :cond_1

    :cond_0
    goto :goto_1

    :cond_1
    const-string v7, "-g"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v6, v11

    goto :goto_1

    :cond_2
    const-string v7, "-f"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v6, v12

    goto :goto_1

    :cond_3
    const-string v7, "-u"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v6, v9

    goto :goto_1

    :cond_4
    const-string v7, "-s"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v6, v10

    goto :goto_1

    :cond_5
    const-string v7, "-d"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v6, v14

    :goto_1
    if-eqz v6, :cond_a

    if-eq v6, v12, :cond_9

    if-eq v6, v11, :cond_8

    if-eq v6, v10, :cond_7

    if-eq v6, v9, :cond_6

    .line 832
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: Unknown option: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 833
    return v12

    .line 829
    :cond_6
    const/4 v3, 0x1

    .line 830
    goto :goto_2

    .line 824
    :cond_7
    const/4 v2, 0x1

    .line 825
    const/4 v1, 0x1

    .line 826
    const/4 v4, 0x1

    .line 827
    goto :goto_2

    .line 821
    :cond_8
    const/4 v2, 0x1

    .line 822
    goto :goto_2

    .line 818
    :cond_9
    const/4 v1, 0x1

    .line 819
    goto :goto_2

    .line 815
    :cond_a
    const/4 v5, 0x1

    .line 816
    nop

    .line 833
    :goto_2
    goto/16 :goto_0

    .line 837
    :cond_b
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v6

    .line 838
    .local v15, "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_d

    .line 839
    move-object/from16 v12, p0

    iget-object v6, v12, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 840
    invoke-interface {v6, v14}, Landroid/content/pm/IPackageManager;->getAllPermissionGroups(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v6

    .line 841
    .local v6, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 842
    .local v7, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-ge v8, v7, :cond_c

    .line 843
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PermissionGroupInfo;

    iget-object v9, v9, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 842
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 845
    .end local v8    # "i":I
    :cond_c
    const/4 v8, 0x0

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    .end local v6    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    .end local v7    # "count":I
    goto :goto_4

    .line 847
    :cond_d
    move-object/from16 v12, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    .line 848
    .local v6, "grp":Ljava/lang/String;
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 851
    .end local v6    # "grp":Ljava/lang/String;
    :goto_4
    const-string v11, ""

    if-eqz v5, :cond_e

    .line 852
    const-string v6, "Dangerous Permissions:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 853
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 854
    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object/from16 v6, p0

    move-object v7, v15

    move v8, v2

    move v9, v1

    move v10, v4

    move-object v14, v11

    move/from16 v11, v16

    move/from16 v12, v17

    invoke-direct/range {v6 .. v12}, Lcom/android/server/pm/PackageManagerShellCommand;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    .line 857
    if-eqz v3, :cond_10

    .line 858
    const-string v6, "Normal Permissions:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 859
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 860
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, p0

    move-object v7, v15

    move v8, v2

    move v9, v1

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lcom/android/server/pm/PackageManagerShellCommand;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    goto :goto_5

    .line 864
    :cond_e
    move-object v14, v11

    if-eqz v3, :cond_f

    .line 865
    const-string v6, "Dangerous and Normal Permissions:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 866
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 867
    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v6, p0

    move-object v7, v15

    move v8, v2

    move v9, v1

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lcom/android/server/pm/PackageManagerShellCommand;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    goto :goto_5

    .line 871
    :cond_f
    const-string v6, "All Permissions:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 872
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 873
    const/16 v11, -0x2710

    const/16 v12, 0x2710

    move-object/from16 v6, p0

    move-object v7, v15

    move v8, v2

    move v9, v1

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lcom/android/server/pm/PackageManagerShellCommand;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    .line 876
    :cond_10
    :goto_5
    const/4 v6, 0x0

    return v6
.end method

.method private runPath()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 508
    const/4 v0, 0x0

    .line 509
    .local v0, "userId":I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    .line 510
    .local v1, "option":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "--user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 511
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 514
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 515
    .local v2, "pkg":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 516
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: no package specified"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 517
    const/4 v3, 0x1

    return v3

    .line 519
    :cond_1
    invoke-direct {p0, v2, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->displayPackageFilePath(Ljava/lang/String;I)I

    move-result v3

    return v3
.end method

.method private runQueryIntentActivities()I
    .locals 11

    .line 961
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->parseIntentAndUser()Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 964
    .local v0, "intent":Landroid/content/Intent;
    nop

    .line 966
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mQueryFlags:I

    iget v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 967
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 968
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 969
    .local v2, "pw":Ljava/io/PrintWriter;
    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_0

    goto :goto_2

    .line 972
    :cond_0
    iget-boolean v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    if-nez v4, :cond_2

    .line 973
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, " activities found:"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 974
    new-instance v6, Landroid/util/PrintWriterPrinter;

    invoke-direct {v6, v2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 975
    .local v6, "pr":Landroid/util/PrintWriterPrinter;
    move v4, v3

    .local v4, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 976
    const-string v5, "  Activity #"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 977
    const-string v7, "    "

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-boolean v9, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v10, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    .line 975
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 979
    .end local v4    # "i":I
    .end local v6    # "pr":Landroid/util/PrintWriterPrinter;
    :cond_1
    goto :goto_3

    .line 980
    :cond_2
    new-instance v5, Landroid/util/PrintWriterPrinter;

    invoke-direct {v5, v2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 981
    .local v5, "pr":Landroid/util/PrintWriterPrinter;
    move v4, v3

    move v10, v4

    .local v10, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v10, v4, :cond_4

    .line 982
    const-string v6, ""

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-boolean v8, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v9, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    .line 981
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 970
    .end local v5    # "pr":Landroid/util/PrintWriterPrinter;
    .end local v10    # "i":I
    :cond_3
    :goto_2
    const-string v4, "No activities found"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 988
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "pw":Ljava/io/PrintWriter;
    :cond_4
    :goto_3
    nop

    .line 989
    return v3

    .line 986
    :catch_0
    move-exception v1

    .line 987
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed calling service"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 962
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 963
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private runQueryIntentReceivers()I
    .locals 11

    .line 1029
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->parseIntentAndUser()Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1032
    .local v0, "intent":Landroid/content/Intent;
    nop

    .line 1034
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mQueryFlags:I

    iget v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 1035
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 1036
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 1037
    .local v2, "pw":Ljava/io/PrintWriter;
    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_0

    goto :goto_2

    .line 1040
    :cond_0
    iget-boolean v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    if-nez v4, :cond_2

    .line 1041
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, " receivers found:"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1042
    new-instance v6, Landroid/util/PrintWriterPrinter;

    invoke-direct {v6, v2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 1043
    .local v6, "pr":Landroid/util/PrintWriterPrinter;
    move v4, v3

    .local v4, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1044
    const-string v5, "  Receiver #"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1045
    const-string v7, "    "

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-boolean v9, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v10, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    .line 1043
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1047
    .end local v4    # "i":I
    .end local v6    # "pr":Landroid/util/PrintWriterPrinter;
    :cond_1
    goto :goto_3

    .line 1048
    :cond_2
    new-instance v5, Landroid/util/PrintWriterPrinter;

    invoke-direct {v5, v2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 1049
    .local v5, "pr":Landroid/util/PrintWriterPrinter;
    move v4, v3

    move v10, v4

    .local v10, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v10, v4, :cond_4

    .line 1050
    const-string v6, ""

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-boolean v8, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v9, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    .line 1049
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1038
    .end local v5    # "pr":Landroid/util/PrintWriterPrinter;
    .end local v10    # "i":I
    :cond_3
    :goto_2
    const-string v4, "No receivers found"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1056
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "pw":Ljava/io/PrintWriter;
    :cond_4
    :goto_3
    nop

    .line 1057
    return v3

    .line 1054
    :catch_0
    move-exception v1

    .line 1055
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed calling service"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1030
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1031
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private runQueryIntentServices()I
    .locals 11

    .line 995
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->parseIntentAndUser()Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 998
    .local v0, "intent":Landroid/content/Intent;
    nop

    .line 1000
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mQueryFlags:I

    iget v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 1001
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 1002
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 1003
    .local v2, "pw":Ljava/io/PrintWriter;
    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_0

    goto :goto_2

    .line 1006
    :cond_0
    iget-boolean v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    if-nez v4, :cond_2

    .line 1007
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, " services found:"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1008
    new-instance v6, Landroid/util/PrintWriterPrinter;

    invoke-direct {v6, v2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 1009
    .local v6, "pr":Landroid/util/PrintWriterPrinter;
    move v4, v3

    .local v4, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1010
    const-string v5, "  Service #"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1011
    const-string v7, "    "

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-boolean v9, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v10, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    .line 1009
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1013
    .end local v4    # "i":I
    .end local v6    # "pr":Landroid/util/PrintWriterPrinter;
    :cond_1
    goto :goto_3

    .line 1014
    :cond_2
    new-instance v5, Landroid/util/PrintWriterPrinter;

    invoke-direct {v5, v2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 1015
    .local v5, "pr":Landroid/util/PrintWriterPrinter;
    move v4, v3

    move v10, v4

    .local v10, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v10, v4, :cond_4

    .line 1016
    const-string v6, ""

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-boolean v8, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v9, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    .line 1015
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1004
    .end local v5    # "pr":Landroid/util/PrintWriterPrinter;
    .end local v10    # "i":I
    :cond_3
    :goto_2
    const-string v4, "No services found"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1022
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "pw":Ljava/io/PrintWriter;
    :cond_4
    :goto_3
    nop

    .line 1023
    return v3

    .line 1020
    :catch_0
    move-exception v1

    .line 1021
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed calling service"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 996
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 997
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private runRemoveSplit(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "splitName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1741
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1742
    .local v0, "pw":Ljava/io/PrintWriter;
    new-instance v1, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 1743
    .local v1, "sessionParams":Landroid/content/pm/PackageInstaller$SessionParams;
    iget v3, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/2addr v2, v3

    iput v2, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1744
    iput-object p1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 1745
    nop

    .line 1746
    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->doCreateSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result v2

    .line 1747
    .local v2, "sessionId":I
    const/4 v3, 0x1

    .line 1749
    .local v3, "abandonSession":Z
    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, v2, p2, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doRemoveSplit(ILjava/lang/String;Z)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 1751
    nop

    .line 1761
    if-eqz v3, :cond_0

    .line 1763
    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1765
    goto :goto_0

    .line 1764
    :catch_0
    move-exception v4

    .line 1751
    :cond_0
    :goto_0
    return v6

    .line 1753
    :cond_1
    :try_start_2
    invoke-direct {p0, v2, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doCommitSession(IZ)I

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_3

    .line 1755
    nop

    .line 1761
    if-eqz v3, :cond_2

    .line 1763
    :try_start_3
    invoke-direct {p0, v2, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1765
    goto :goto_1

    .line 1764
    :catch_1
    move-exception v4

    .line 1755
    :cond_2
    :goto_1
    return v6

    .line 1757
    :cond_3
    const/4 v3, 0x0

    .line 1758
    :try_start_4
    const-string v5, "Success"

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1759
    nop

    .line 1761
    if-eqz v3, :cond_4

    .line 1763
    :try_start_5
    invoke-direct {p0, v2, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 1765
    goto :goto_2

    .line 1764
    :catch_2
    move-exception v5

    .line 1759
    :cond_4
    :goto_2
    return v4

    .line 1761
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_5

    .line 1763
    :try_start_6
    invoke-direct {p0, v2, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 1765
    goto :goto_3

    .line 1764
    :catch_3
    move-exception v4

    .line 1765
    :cond_5
    :goto_3
    throw v5
.end method

.method private runResetPermissions()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1984
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->resetRuntimePermissions()V

    .line 1985
    const/4 v0, 0x0

    return v0
.end method

.method private runResolveActivity()I
    .locals 9

    .line 938
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->parseIntentAndUser()Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 941
    .local v0, "intent":Landroid/content/Intent;
    nop

    .line 943
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mQueryFlags:I

    iget v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 945
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    move-object v8, v2

    .line 946
    .local v8, "pw":Ljava/io/PrintWriter;
    if-nez v1, :cond_0

    .line 947
    const-string v2, "No activity found"

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 949
    :cond_0
    new-instance v3, Landroid/util/PrintWriterPrinter;

    invoke-direct {v3, v8}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 950
    .local v3, "pr":Landroid/util/PrintWriterPrinter;
    const-string v4, ""

    iget-boolean v6, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v7, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v2, p0

    move-object v5, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 954
    .end local v1    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v3    # "pr":Landroid/util/PrintWriterPrinter;
    .end local v8    # "pw":Ljava/io/PrintWriter;
    :goto_0
    nop

    .line 955
    const/4 v1, 0x0

    return v1

    .line 952
    :catch_0
    move-exception v1

    .line 953
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed calling service"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 939
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 940
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private runRollbackApp()I
    .locals 11

    .line 413
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 415
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 416
    .local v1, "packageName":Ljava/lang/String;
    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 417
    const-string v3, "Error: package name not specified"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 418
    return v2

    .line 421
    :cond_0
    new-instance v3, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$1;)V

    .line 423
    .local v3, "receiver":Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
    :try_start_0
    const-string/jumbo v4, "rollback"

    .line 424
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 423
    invoke-static {v4}, Landroid/content/rollback/IRollbackManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/rollback/IRollbackManager;

    move-result-object v4

    .line 426
    .local v4, "rm":Landroid/content/rollback/IRollbackManager;
    const/4 v5, 0x0

    .line 427
    .local v5, "rollback":Landroid/content/rollback/RollbackInfo;
    invoke-interface {v4}, Landroid/content/rollback/IRollbackManager;->getAvailableRollbacks()Landroid/content/pm/ParceledListSlice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/rollback/RollbackInfo;

    .line 428
    .local v7, "r":Landroid/content/rollback/RollbackInfo;
    invoke-virtual {v7}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/rollback/PackageRollbackInfo;

    .line 429
    .local v9, "info":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v9}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 430
    move-object v5, v7

    .line 431
    goto :goto_2

    .line 433
    .end local v9    # "info":Landroid/content/rollback/PackageRollbackInfo;
    :cond_1
    goto :goto_1

    .line 434
    .end local v7    # "r":Landroid/content/rollback/RollbackInfo;
    :cond_2
    :goto_2
    goto :goto_0

    .line 436
    :cond_3
    if-nez v5, :cond_4

    .line 437
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No available rollbacks for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 438
    return v2

    .line 441
    :cond_4
    invoke-virtual {v5}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v6

    .line 442
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v7

    const-string v8, "com.android.shell"

    .line 443
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v9

    .line 441
    invoke-interface {v4, v6, v7, v8, v9}, Landroid/content/rollback/IRollbackManager;->commitRollback(ILandroid/content/pm/ParceledListSlice;Ljava/lang/String;Landroid/content/IntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    .end local v4    # "rm":Landroid/content/rollback/IRollbackManager;
    .end local v5    # "rollback":Landroid/content/rollback/RollbackInfo;
    goto :goto_3

    .line 444
    :catch_0
    move-exception v4

    .line 448
    :goto_3
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v4

    .line 449
    .local v4, "result":Landroid/content/Intent;
    const-string v5, "android.content.rollback.extra.STATUS"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 451
    .local v5, "status":I
    if-nez v5, :cond_5

    .line 452
    const-string v2, "Success"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 453
    const/4 v2, 0x0

    return v2

    .line 455
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    const-string v7, "android.content.rollback.extra.STATUS_MESSAGE"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 455
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 457
    return v2
.end method

.method private runSetAppLink()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2109
    const/4 v0, 0x0

    .line 2112
    .local v0, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 2113
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2114
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 2116
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2117
    return v3

    .line 2122
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 2123
    .local v1, "pkg":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 2124
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Error: no package specified."

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2125
    return v3

    .line 2129
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .line 2130
    .local v4, "modeString":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 2131
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    const-string v6, "Error: no app link state specified."

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2132
    return v3

    .line 2136
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x0

    sparse-switch v7, :sswitch_data_0

    :cond_4
    goto :goto_1

    :sswitch_0
    const-string v7, "always-ask"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v6, v9

    goto :goto_1

    :sswitch_1
    const-string/jumbo v7, "never"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v6, v8

    goto :goto_1

    :sswitch_2
    const-string v7, "ask"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v6, v10

    goto :goto_1

    :sswitch_3
    const-string/jumbo v7, "undefined"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v6, v11

    goto :goto_1

    :sswitch_4
    const-string v7, "always"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v6, v3

    :goto_1
    if-eqz v6, :cond_9

    if-eq v6, v3, :cond_8

    if-eq v6, v10, :cond_7

    if-eq v6, v9, :cond_6

    if-eq v6, v8, :cond_5

    .line 2158
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: unknown app link state \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2159
    return v3

    .line 2154
    :cond_5
    const/4 v5, 0x3

    .line 2155
    .local v5, "newMode":I
    goto :goto_2

    .line 2150
    .end local v5    # "newMode":I
    :cond_6
    const/4 v5, 0x4

    .line 2151
    .restart local v5    # "newMode":I
    goto :goto_2

    .line 2146
    .end local v5    # "newMode":I
    :cond_7
    const/4 v5, 0x1

    .line 2147
    .restart local v5    # "newMode":I
    goto :goto_2

    .line 2142
    .end local v5    # "newMode":I
    :cond_8
    const/4 v5, 0x2

    .line 2143
    .restart local v5    # "newMode":I
    goto :goto_2

    .line 2138
    .end local v5    # "newMode":I
    :cond_9
    const/4 v5, 0x0

    .line 2139
    .restart local v5    # "newMode":I
    nop

    .line 2162
    :goto_2
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v6, v1, v11, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 2163
    .local v6, "info":Landroid/content/pm/PackageInfo;
    const-string v7, "Error: package "

    if-nez v6, :cond_a

    .line 2164
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " not found."

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2165
    return v3

    .line 2168
    :cond_a
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v8, v8, 0x10

    if-nez v8, :cond_b

    .line 2169
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " does not handle web links."

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2170
    return v3

    .line 2173
    :cond_b
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v7, v1, v5, v0}, Landroid/content/pm/IPackageManager;->updateIntentVerificationStatus(Ljava/lang/String;II)Z

    move-result v7

    if-nez v7, :cond_c

    .line 2174
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: unable to update app link status for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2175
    return v3

    .line 2178
    :cond_c
    return v11

    nop

    :sswitch_data_0
    .sparse-switch
        -0x54506df1 -> :sswitch_4
        -0x3de09eb0 -> :sswitch_3
        0x17a79 -> :sswitch_2
        0x63dca8c -> :sswitch_1
        0x467fe1bb -> :sswitch_0
    .end sparse-switch
.end method

.method private runSetEnabledSetting(I)I
    .locals 12
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1834
    const/4 v0, 0x0

    .line 1835
    .local v0, "userId":I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    .line 1836
    .local v1, "option":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "--user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1837
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 1840
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v8

    .line 1841
    .local v8, "pkg":Ljava/lang/String;
    if-nez v8, :cond_1

    .line 1842
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: no package or component specified"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1843
    const/4 v2, 0x1

    return v2

    .line 1845
    :cond_1
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    .line 1846
    .local v9, "cn":Landroid/content/ComponentName;
    const-string v10, " new state: "

    const/4 v11, 0x0

    if-nez v9, :cond_2

    .line 1847
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/4 v5, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "shell:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1848
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1847
    move-object v3, v8

    move v4, p1

    move v6, v0

    invoke-interface/range {v2 .. v7}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    .line 1849
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 1851
    invoke-interface {v4, v8, v0}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v4

    .line 1850
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerShellCommand;->enabledSettingToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1849
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1852
    return v11

    .line 1854
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, v9, p1, v11, v0}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V

    .line 1855
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 1857
    invoke-interface {v4, v9, v0}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result v4

    .line 1856
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerShellCommand;->enabledSettingToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1855
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1858
    return v11
.end method

.method private runSetHarmfulAppWarning()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2646
    const/4 v0, -0x2

    .line 2649
    .local v0, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 2650
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2651
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 2653
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2654
    const/4 v1, -0x1

    return v1

    .line 2658
    :cond_1
    const/4 v1, 0x0

    const-string/jumbo v3, "runSetHarmfulAppWarning"

    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IZLjava/lang/String;)I

    move-result v0

    .line 2660
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 2661
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .line 2663
    .local v4, "warning":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v5, v3, v4, v0}, Landroid/content/pm/IPackageManager;->setHarmfulAppWarning(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 2665
    return v1
.end method

.method private runSetHiddenSetting(Z)I
    .locals 6
    .param p1, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1863
    const/4 v0, 0x0

    .line 1864
    .local v0, "userId":I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    .line 1865
    .local v1, "option":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "--user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1866
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 1869
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 1870
    .local v2, "pkg":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 1871
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: no package or component specified"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1872
    const/4 v3, 0x1

    return v3

    .line 1874
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v2, p1, v0}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z

    .line 1875
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " new hidden state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 1876
    invoke-interface {v5, v2, v0}, Landroid/content/pm/IPackageManager;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1875
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1877
    const/4 v3, 0x0

    return v3
.end method

.method private runSetHomeActivity()I
    .locals 14

    .line 2533
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2534
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 2536
    .local v1, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .local v8, "opt":Ljava/lang/String;
    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v2, :cond_3

    .line 2537
    const/4 v2, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x4f7b216b

    if-eq v3, v4, :cond_1

    :cond_0
    goto :goto_1

    :cond_1
    const-string v3, "--user"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v9

    :goto_1
    if-eqz v2, :cond_2

    .line 2542
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Unknown option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2543
    return v10

    .line 2539
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    .line 2540
    nop

    .line 2543
    goto :goto_0

    .line 2548
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v11

    .line 2549
    .local v11, "component":Ljava/lang/String;
    const/16 v2, 0x2f

    invoke-virtual {v11, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_4

    .line 2551
    move-object v2, v11

    move-object v12, v2

    .local v2, "pkgName":Ljava/lang/String;
    goto :goto_2

    .line 2554
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_4
    invoke-static {v11}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 2555
    .local v2, "componentName":Landroid/content/ComponentName;
    if-nez v2, :cond_5

    .line 2556
    const-string v3, "Error: invalid component name"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2557
    return v10

    .line 2559
    :cond_5
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v12, v2

    .line 2563
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .local v12, "pkgName":Ljava/lang/String;
    :goto_2
    new-instance v2, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v2}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    move-object v13, v2

    .line 2564
    .local v13, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;"
    new-instance v7, Landroid/os/RemoteCallback;

    new-instance v2, Lcom/android/server/pm/-$$Lambda$PackageManagerShellCommand$v3vXA2YvCwaE7J0QfR1IQ122iTI;

    invoke-direct {v2, v13}, Lcom/android/server/pm/-$$Lambda$PackageManagerShellCommand$v3vXA2YvCwaE7J0QfR1IQ122iTI;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-direct {v7, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 2566
    .local v7, "callback":Landroid/os/RemoteCallback;
    :try_start_0
    const-string/jumbo v2, "role"

    .line 2567
    invoke-static {v2}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 2566
    invoke-static {v2}, Landroid/app/role/IRoleManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/role/IRoleManager;

    move-result-object v2

    .line 2568
    .local v2, "roleManager":Landroid/app/role/IRoleManager;
    const-string v3, "android.app.role.HOME"

    const/4 v5, 0x0

    move-object v4, v12

    move v6, v1

    invoke-interface/range {v2 .. v7}, Landroid/app/role/IRoleManager;->addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;IILandroid/os/RemoteCallback;)V

    .line 2570
    invoke-virtual {v13}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 2571
    .local v3, "success":Z
    if-eqz v3, :cond_6

    .line 2572
    const-string v4, "Success"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2573
    return v9

    .line 2575
    :cond_6
    const-string v4, "Error: Failed to set default home."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2576
    return v10

    .line 2578
    .end local v2    # "roleManager":Landroid/app/role/IRoleManager;
    .end local v3    # "success":Z
    :catch_0
    move-exception v2

    .line 2579
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2580
    return v10
.end method

.method private runSetInstallLocation()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1252
    const-string v0, "Error: install location has to be a number."

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 1253
    .local v1, "arg":Ljava/lang/String;
    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 1254
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v3, "Error: no install location specified."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1255
    return v2

    .line 1258
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1262
    .local v3, "loc":I
    nop

    .line 1263
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, v3}, Landroid/content/pm/IPackageManager;->setInstallLocation(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1264
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1265
    return v2

    .line 1267
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 1259
    .end local v3    # "loc":I
    :catch_0
    move-exception v3

    .line 1260
    .local v3, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1261
    return v2
.end method

.method private runSetInstaller()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2585
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2586
    .local v0, "targetPackage":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 2588
    .local v1, "installerPackageName":Ljava/lang/String;
    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2593
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, v0, v1}, Landroid/content/pm/IPackageManager;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V

    .line 2594
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Success"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2595
    const/4 v2, 0x0

    return v2

    .line 2589
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Must provide both target and installer package names"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2590
    const/4 v2, 0x1

    return v2
.end method

.method private runSetPermissionEnforced()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1989
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 1990
    .local v0, "permission":Ljava/lang/String;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1991
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: no permission specified"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1992
    return v1

    .line 1994
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 1995
    .local v2, "enforcedRaw":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 1996
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: no enforcement specified"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1997
    return v1

    .line 1999
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v1, v0, v3}, Landroid/content/pm/IPackageManager;->setPermissionEnforced(Ljava/lang/String;Z)V

    .line 2000
    const/4 v1, 0x0

    return v1
.end method

.method private runSnapshotProfile()I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1544
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 1547
    .local v2, "pw":Ljava/io/PrintWriter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v9

    .line 1548
    .local v9, "packageName":Ljava/lang/String;
    const-string v0, "android"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 1550
    .local v10, "isBootImage":Z
    const/4 v0, 0x0

    .line 1552
    .local v0, "codePath":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    .local v11, "opt":Ljava/lang/String;
    const/4 v12, 0x0

    const/4 v13, -0x1

    if-eqz v3, :cond_4

    .line 1553
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x28d32d9b

    if-eq v3, v4, :cond_1

    :cond_0
    goto :goto_1

    :cond_1
    const-string v3, "--code-path"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :goto_1
    move v12, v13

    :goto_2
    if-eqz v12, :cond_2

    .line 1562
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown arg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 1563
    return v13

    .line 1555
    :cond_2
    if-eqz v10, :cond_3

    .line 1556
    const-string v3, "--code-path cannot be used for the boot image."

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 1557
    return v13

    .line 1559
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 1560
    nop

    .line 1563
    goto :goto_0

    .line 1568
    :cond_4
    const/4 v3, 0x0

    .line 1569
    .local v3, "baseCodePath":Ljava/lang/String;
    if-nez v10, :cond_7

    .line 1570
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, v9, v12, v12}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 1572
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v4, :cond_5

    .line 1573
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package not found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 1574
    return v13

    .line 1576
    :cond_5
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v3

    .line 1577
    if-nez v0, :cond_6

    .line 1578
    move-object v0, v3

    move-object v14, v0

    move-object v15, v3

    goto :goto_3

    .line 1577
    :cond_6
    move-object v14, v0

    move-object v15, v3

    goto :goto_3

    .line 1569
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_7
    move-object v14, v0

    move-object v15, v3

    .line 1583
    .end local v0    # "codePath":Ljava/lang/String;
    .end local v3    # "baseCodePath":Ljava/lang/String;
    .local v14, "codePath":Ljava/lang/String;
    .local v15, "baseCodePath":Ljava/lang/String;
    :goto_3
    new-instance v7, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$1;)V

    .line 1585
    .local v7, "callback":Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    if-nez v3, :cond_8

    .line 1586
    const-string/jumbo v3, "root"

    goto :goto_4

    :cond_8
    const-string v3, "com.android.shell"

    :goto_4
    move-object v8, v3

    .line 1587
    .local v8, "callingPackage":Ljava/lang/String;
    if-eqz v10, :cond_9

    .line 1588
    const/4 v3, 0x1

    goto :goto_5

    :cond_9
    move v3, v12

    :goto_5
    move v6, v3

    .line 1589
    .local v6, "profileType":I
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->getArtManager()Landroid/content/pm/dex/IArtManager;

    move-result-object v3

    invoke-interface {v3, v6, v8}, Landroid/content/pm/dex/IArtManager;->isRuntimeProfilingEnabled(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1590
    const-string v0, "Error: Runtime profiling is not enabled"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1591
    return v13

    .line 1593
    :cond_a
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->getArtManager()Landroid/content/pm/dex/IArtManager;

    move-result-object v3

    move v4, v6

    move-object v5, v9

    move/from16 v16, v6

    .end local v6    # "profileType":I
    .local v16, "profileType":I
    move-object v6, v14

    move-object/from16 v17, v8

    .end local v8    # "callingPackage":Ljava/lang/String;
    .local v17, "callingPackage":Ljava/lang/String;
    invoke-interface/range {v3 .. v8}, Landroid/content/pm/dex/IArtManager;->snapshotRuntimeProfile(ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V

    .line 1595
    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->waitTillDone()Z

    move-result v3

    if-nez v3, :cond_b

    .line 1596
    const-string v0, "Error: callback not called"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1597
    invoke-static {v7}, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->access$200(Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;)I

    move-result v0

    return v0

    .line 1601
    :cond_b
    :try_start_0
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-static {v7}, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->access$300(Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1602
    .local v3, "inStream":Ljava/io/InputStream;
    if-nez v10, :cond_d

    :try_start_1
    invoke-static {v15, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_6

    .line 1603
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_d
    :goto_6
    const-string v4, ""

    .line 1604
    .local v4, "outputFileSuffix":Ljava/lang/String;
    :goto_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/misc/profman/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".prof"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1606
    .local v5, "outputProfilePath":Ljava/lang/String;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1607
    .local v6, "outStream":Ljava/io/OutputStream;
    :try_start_2
    invoke-static {v3, v6}, Llibcore/io/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1608
    :try_start_3
    invoke-static {v0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 1610
    .end local v6    # "outStream":Ljava/io/OutputStream;
    const/16 v6, 0x1a4

    invoke-static {v5, v6}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1611
    .end local v4    # "outputFileSuffix":Ljava/lang/String;
    .end local v5    # "outputProfilePath":Ljava/lang/String;
    :try_start_4
    invoke-static {v0, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1615
    .end local v3    # "inStream":Ljava/io/InputStream;
    nop

    .line 1616
    return v12

    .line 1606
    .restart local v3    # "inStream":Ljava/io/InputStream;
    .restart local v4    # "outputFileSuffix":Ljava/lang/String;
    .restart local v5    # "outputProfilePath":Ljava/lang/String;
    .restart local v6    # "outStream":Ljava/io/OutputStream;
    :catchall_0
    move-exception v0

    move-object v8, v0

    .end local v2    # "pw":Ljava/io/PrintWriter;
    .end local v3    # "inStream":Ljava/io/InputStream;
    .end local v4    # "outputFileSuffix":Ljava/lang/String;
    .end local v5    # "outputProfilePath":Ljava/lang/String;
    .end local v6    # "outStream":Ljava/io/OutputStream;
    .end local v7    # "callback":Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "isBootImage":Z
    .end local v11    # "opt":Ljava/lang/String;
    .end local v14    # "codePath":Ljava/lang/String;
    .end local v15    # "baseCodePath":Ljava/lang/String;
    .end local v16    # "profileType":I
    .end local v17    # "callingPackage":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/pm/PackageManagerShellCommand;
    :try_start_5
    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1608
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    .restart local v3    # "inStream":Ljava/io/InputStream;
    .restart local v4    # "outputFileSuffix":Ljava/lang/String;
    .restart local v5    # "outputProfilePath":Ljava/lang/String;
    .restart local v6    # "outStream":Ljava/io/OutputStream;
    .restart local v7    # "callback":Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;
    .restart local v9    # "packageName":Ljava/lang/String;
    .restart local v10    # "isBootImage":Z
    .restart local v11    # "opt":Ljava/lang/String;
    .restart local v14    # "codePath":Ljava/lang/String;
    .restart local v15    # "baseCodePath":Ljava/lang/String;
    .restart local v16    # "profileType":I
    .restart local v17    # "callingPackage":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerShellCommand;
    :catchall_1
    move-exception v0

    move-object v12, v0

    :try_start_6
    invoke-static {v8, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v2    # "pw":Ljava/io/PrintWriter;
    .end local v3    # "inStream":Ljava/io/InputStream;
    .end local v7    # "callback":Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "isBootImage":Z
    .end local v11    # "opt":Ljava/lang/String;
    .end local v14    # "codePath":Ljava/lang/String;
    .end local v15    # "baseCodePath":Ljava/lang/String;
    .end local v16    # "profileType":I
    .end local v17    # "callingPackage":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/pm/PackageManagerShellCommand;
    throw v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1601
    .end local v4    # "outputFileSuffix":Ljava/lang/String;
    .end local v5    # "outputProfilePath":Ljava/lang/String;
    .end local v6    # "outStream":Ljava/io/OutputStream;
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    .restart local v3    # "inStream":Ljava/io/InputStream;
    .restart local v7    # "callback":Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;
    .restart local v9    # "packageName":Ljava/lang/String;
    .restart local v10    # "isBootImage":Z
    .restart local v11    # "opt":Ljava/lang/String;
    .restart local v14    # "codePath":Ljava/lang/String;
    .restart local v15    # "baseCodePath":Ljava/lang/String;
    .restart local v16    # "profileType":I
    .restart local v17    # "callingPackage":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerShellCommand;
    :catchall_2
    move-exception v0

    move-object v4, v0

    .end local v2    # "pw":Ljava/io/PrintWriter;
    .end local v3    # "inStream":Ljava/io/InputStream;
    .end local v7    # "callback":Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "isBootImage":Z
    .end local v11    # "opt":Ljava/lang/String;
    .end local v14    # "codePath":Ljava/lang/String;
    .end local v15    # "baseCodePath":Ljava/lang/String;
    .end local v16    # "profileType":I
    .end local v17    # "callingPackage":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/pm/PackageManagerShellCommand;
    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1611
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    .restart local v3    # "inStream":Ljava/io/InputStream;
    .restart local v7    # "callback":Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;
    .restart local v9    # "packageName":Ljava/lang/String;
    .restart local v10    # "isBootImage":Z
    .restart local v11    # "opt":Ljava/lang/String;
    .restart local v14    # "codePath":Ljava/lang/String;
    .restart local v15    # "baseCodePath":Ljava/lang/String;
    .restart local v16    # "profileType":I
    .restart local v17    # "callingPackage":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerShellCommand;
    :catchall_3
    move-exception v0

    move-object v5, v0

    :try_start_8
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v2    # "pw":Ljava/io/PrintWriter;
    .end local v7    # "callback":Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "isBootImage":Z
    .end local v11    # "opt":Ljava/lang/String;
    .end local v14    # "codePath":Ljava/lang/String;
    .end local v15    # "baseCodePath":Ljava/lang/String;
    .end local v16    # "profileType":I
    .end local v17    # "callingPackage":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/pm/PackageManagerShellCommand;
    throw v5
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_8} :catch_0

    .end local v3    # "inStream":Ljava/io/InputStream;
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    .restart local v7    # "callback":Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;
    .restart local v9    # "packageName":Ljava/lang/String;
    .restart local v10    # "isBootImage":Z
    .restart local v11    # "opt":Ljava/lang/String;
    .restart local v14    # "codePath":Ljava/lang/String;
    .restart local v15    # "baseCodePath":Ljava/lang/String;
    .restart local v16    # "profileType":I
    .restart local v17    # "callingPackage":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerShellCommand;
    :catch_0
    move-exception v0

    .line 1612
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error when reading the profile fd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1613
    invoke-virtual {v0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1614
    return v13
.end method

.method private runSuspend(Z)I
    .locals 17
    .param p1, "suspendedState"    # Z

    .line 1881
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 1882
    .local v2, "pw":Ljava/io/PrintWriter;
    const/4 v0, 0x0

    .line 1883
    .local v0, "userId":I
    const/4 v3, 0x0

    .line 1884
    .local v3, "dialogMessage":Ljava/lang/String;
    new-instance v7, Landroid/os/PersistableBundle;

    invoke-direct {v7}, Landroid/os/PersistableBundle;-><init>()V

    .line 1885
    .local v7, "appExtras":Landroid/os/PersistableBundle;
    new-instance v8, Landroid/os/PersistableBundle;

    invoke-direct {v8}, Landroid/os/PersistableBundle;-><init>()V

    move v12, v0

    .line 1887
    .end local v0    # "userId":I
    .local v8, "launcherExtras":Landroid/os/PersistableBundle;
    .local v12, "userId":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .local v13, "opt":Ljava/lang/String;
    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v0, :cond_6

    .line 1888
    const/4 v0, -0x1

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v4, "--user"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :sswitch_1
    const-string v4, "--les"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v14, 0x6

    goto :goto_2

    :sswitch_2
    const-string v4, "--lel"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v14, 0x5

    goto :goto_2

    :sswitch_3
    const-string v4, "--led"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v14, 0x7

    goto :goto_2

    :sswitch_4
    const-string v4, "--aes"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v14, 0x3

    goto :goto_2

    :sswitch_5
    const-string v4, "--ael"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v14, 0x2

    goto :goto_2

    :sswitch_6
    const-string v4, "--aed"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v14, v5

    goto :goto_2

    :sswitch_7
    const-string v4, "--dialogMessage"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v14, v15

    goto :goto_2

    :goto_1
    move v14, v0

    :goto_2
    packed-switch v14, :pswitch_data_0

    .line 1921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1922
    return v15

    .line 1901
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 1902
    .local v0, "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 1903
    .local v4, "val":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 1904
    goto :goto_5

    .line 1907
    :cond_1
    const-string v6, "--a"

    invoke-virtual {v13, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v7

    goto :goto_3

    :cond_2
    move-object v6, v8

    .line 1908
    .local v6, "bundleToInsert":Landroid/os/PersistableBundle;
    :goto_3
    invoke-virtual {v13, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v9, 0x64

    if-eq v5, v9, :cond_5

    const/16 v9, 0x6c

    if-eq v5, v9, :cond_4

    const/16 v9, 0x73

    if-eq v5, v9, :cond_3

    goto :goto_4

    .line 1916
    :cond_3
    invoke-virtual {v6, v0, v4}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1910
    :cond_4
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v6, v0, v9, v10}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 1911
    goto :goto_4

    .line 1913
    :cond_5
    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-virtual {v6, v0, v9, v10}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    .line 1914
    nop

    .line 1919
    :goto_4
    goto :goto_5

    .line 1893
    .end local v0    # "key":Ljava/lang/String;
    .end local v4    # "val":Ljava/lang/String;
    .end local v6    # "bundleToInsert":Landroid/os/PersistableBundle;
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 1894
    .end local v3    # "dialogMessage":Ljava/lang/String;
    .local v0, "dialogMessage":Ljava/lang/String;
    move-object v3, v0

    goto :goto_5

    .line 1890
    .end local v0    # "dialogMessage":Ljava/lang/String;
    .restart local v3    # "dialogMessage":Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 1891
    .end local v12    # "userId":I
    .local v0, "userId":I
    move v12, v0

    .line 1922
    .end local v0    # "userId":I
    .restart local v12    # "userId":I
    :goto_5
    goto/16 :goto_0

    .line 1926
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v11

    .line 1927
    .local v11, "packageName":Ljava/lang/String;
    if-nez v11, :cond_7

    .line 1928
    const-string v0, "Error: package name not specified"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1929
    return v15

    .line 1932
    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "root"

    goto :goto_6

    :cond_8
    const-string v0, "com.android.shell"

    :goto_6
    move-object v10, v0

    .line 1935
    .local v10, "callingPackage":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1936
    new-instance v0, Landroid/content/pm/SuspendDialogInfo$Builder;

    invoke-direct {v0}, Landroid/content/pm/SuspendDialogInfo$Builder;-><init>()V

    .line 1937
    invoke-virtual {v0, v3}, Landroid/content/pm/SuspendDialogInfo$Builder;->setMessage(Ljava/lang/String;)Landroid/content/pm/SuspendDialogInfo$Builder;

    move-result-object v0

    .line 1938
    invoke-virtual {v0}, Landroid/content/pm/SuspendDialogInfo$Builder;->build()Landroid/content/pm/SuspendDialogInfo;

    move-result-object v0

    move-object/from16 v16, v0

    .local v0, "info":Landroid/content/pm/SuspendDialogInfo;
    goto :goto_7

    .line 1940
    .end local v0    # "info":Landroid/content/pm/SuspendDialogInfo;
    :cond_9
    const/4 v0, 0x0

    move-object/from16 v16, v0

    .line 1943
    .local v16, "info":Landroid/content/pm/SuspendDialogInfo;
    :goto_7
    :try_start_0
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    new-array v5, v15, [Ljava/lang/String;

    aput-object v11, v5, v14
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v6, p1

    move-object/from16 v9, v16

    move-object v15, v11

    .end local v11    # "packageName":Ljava/lang/String;
    .local v15, "packageName":Ljava/lang/String;
    move v11, v12

    :try_start_1
    invoke-interface/range {v4 .. v11}, Landroid/content/pm/IPackageManager;->setPackagesSuspendedAsUser([Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SuspendDialogInfo;Ljava/lang/String;I)[Ljava/lang/String;

    .line 1945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " new suspended state: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 1946
    invoke-interface {v4, v15, v12}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1945
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1947
    return v14

    .line 1948
    :catch_0
    move-exception v0

    goto :goto_8

    .end local v15    # "packageName":Ljava/lang/String;
    .restart local v11    # "packageName":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v15, v11

    .line 1949
    .end local v11    # "packageName":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v15    # "packageName":Ljava/lang/String;
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1950
    const/4 v4, 0x1

    return v4

    :sswitch_data_0
    .sparse-switch
        -0x25a4801 -> :sswitch_7
        0x2900f20 -> :sswitch_6
        0x2900f28 -> :sswitch_5
        0x2900f2f -> :sswitch_4
        0x290386b -> :sswitch_3
        0x2903873 -> :sswitch_2
        0x290387a -> :sswitch_1
        0x4f7b216b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private runTrimCaches()I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2221
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2222
    .local v0, "size":Ljava/lang/String;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2223
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: no size specified"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2224
    return v1

    .line 2226
    :cond_0
    const-wide/16 v2, 0x1

    .line 2227
    .local v2, "multiplier":J
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 2228
    .local v4, "len":I
    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 2229
    .local v5, "c":C
    const/16 v6, 0x30

    const/4 v7, 0x0

    if-lt v5, v6, :cond_2

    const/16 v6, 0x39

    if-le v5, v6, :cond_1

    goto :goto_0

    :cond_1
    move-wide v8, v2

    move-object v2, v0

    goto :goto_5

    .line 2230
    :cond_2
    :goto_0
    const/16 v6, 0x4b

    if-eq v5, v6, :cond_8

    const/16 v6, 0x6b

    if-ne v5, v6, :cond_3

    goto :goto_3

    .line 2232
    :cond_3
    const/16 v6, 0x4d

    if-eq v5, v6, :cond_7

    const/16 v6, 0x6d

    if-ne v5, v6, :cond_4

    goto :goto_2

    .line 2234
    :cond_4
    const/16 v6, 0x47

    if-eq v5, v6, :cond_6

    const/16 v6, 0x67

    if-ne v5, v6, :cond_5

    goto :goto_1

    .line 2237
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid suffix: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2238
    return v1

    .line 2235
    :cond_6
    :goto_1
    const-wide/32 v2, 0x40000000

    goto :goto_4

    .line 2233
    :cond_7
    :goto_2
    const-wide/32 v2, 0x100000

    goto :goto_4

    .line 2231
    :cond_8
    :goto_3
    const-wide/16 v2, 0x400

    .line 2240
    :goto_4
    add-int/lit8 v6, v4, -0x1

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-wide v8, v2

    move-object v2, v0

    .line 2244
    .end local v0    # "size":Ljava/lang/String;
    .local v2, "size":Ljava/lang/String;
    .local v8, "multiplier":J
    :goto_5
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    mul-long v16, v0, v8

    .line 2248
    .local v16, "sizeVal":J
    nop

    .line 2249
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2250
    .local v0, "volumeUuid":Ljava/lang/String;
    const-string v1, "internal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2251
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_6

    .line 2250
    :cond_9
    move-object v3, v0

    .line 2253
    .end local v0    # "volumeUuid":Ljava/lang/String;
    .local v3, "volumeUuid":Ljava/lang/String;
    :goto_6
    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;-><init>()V

    move-object v6, v0

    .line 2254
    .local v6, "obs":Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;
    move-object/from16 v1, p0

    iget-object v10, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/4 v14, 0x2

    move-object v11, v3

    move-wide/from16 v12, v16

    move-object v15, v6

    invoke-interface/range {v10 .. v15}, Landroid/content/pm/IPackageManager;->freeStorageAndNotify(Ljava/lang/String;JILandroid/content/pm/IPackageDataObserver;)V

    .line 2256
    monitor-enter v6

    .line 2257
    :goto_7
    :try_start_1
    iget-boolean v0, v6, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_a

    .line 2259
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2261
    :goto_8
    goto :goto_7

    .line 2260
    :catch_0
    move-exception v0

    goto :goto_8

    .line 2263
    :cond_a
    :try_start_3
    monitor-exit v6

    .line 2264
    return v7

    .line 2263
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 2245
    .end local v3    # "volumeUuid":Ljava/lang/String;
    .end local v6    # "obs":Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;
    .end local v16    # "sizeVal":J
    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 2246
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: expected number at: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2247
    return v1
.end method

.method private runUninstall()I
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1660
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 1661
    .local v1, "pw":Ljava/io/PrintWriter;
    const/4 v2, 0x0

    .line 1662
    .local v2, "flags":I
    const/4 v3, -0x1

    .line 1663
    .local v3, "userId":I
    const-wide/16 v4, -0x1

    move-wide v10, v4

    .line 1666
    .local v10, "versionCode":J
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    move-object v12, v4

    .local v12, "opt":Ljava/lang/String;
    const/4 v5, -0x1

    const/4 v14, 0x1

    if-eqz v4, :cond_7

    .line 1667
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v6, 0x5de

    const/4 v7, 0x2

    if-eq v4, v6, :cond_3

    const v6, 0x4f7b216b

    if-eq v4, v6, :cond_2

    const v6, 0x704d4945

    if-eq v4, v6, :cond_1

    :cond_0
    goto :goto_1

    :cond_1
    const-string v4, "--versionCode"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v5, v7

    goto :goto_1

    :cond_2
    const-string v4, "--user"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v5, v14

    goto :goto_1

    :cond_3
    const-string v4, "-k"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_6

    if-eq v5, v14, :cond_5

    if-eq v5, v7, :cond_4

    .line 1678
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1679
    return v14

    .line 1675
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1676
    .end local v10    # "versionCode":J
    .local v4, "versionCode":J
    move-wide v10, v4

    goto :goto_2

    .line 1672
    .end local v4    # "versionCode":J
    .restart local v10    # "versionCode":J
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v3

    .line 1673
    goto :goto_2

    .line 1669
    :cond_6
    or-int/lit8 v2, v2, 0x1

    .line 1670
    nop

    .line 1679
    :goto_2
    goto :goto_0

    .line 1683
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v15

    .line 1684
    .local v15, "packageName":Ljava/lang/String;
    if-nez v15, :cond_8

    .line 1685
    const-string v4, "Error: package name not specified"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1686
    return v14

    .line 1690
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v9

    .line 1691
    .local v9, "splitName":Ljava/lang/String;
    if-eqz v9, :cond_9

    .line 1692
    invoke-direct {v0, v15, v9}, Lcom/android/server/pm/PackageManagerShellCommand;->runRemoveSplit(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    return v4

    .line 1695
    :cond_9
    const-string/jumbo v4, "runUninstall"

    invoke-direct {v0, v3, v14, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IZLjava/lang/String;)I

    move-result v3

    .line 1696
    new-instance v4, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$1;)V

    move-object/from16 v16, v4

    .line 1697
    .local v16, "receiver":Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
    const-class v4, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroid/content/pm/PackageManagerInternal;

    .line 1699
    .local v8, "internal":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v8, v15}, Landroid/content/pm/PackageManagerInternal;->isApexPackage(Ljava/lang/String;)Z

    move-result v4

    const-string v6, "]"

    if-eqz v4, :cond_a

    .line 1700
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v17

    move-object v4, v8

    move-object v5, v15

    move-object v13, v6

    move-wide v6, v10

    move-object/from16 v18, v8

    .end local v8    # "internal":Landroid/content/pm/PackageManagerInternal;
    .local v18, "internal":Landroid/content/pm/PackageManagerInternal;
    move v8, v3

    move-object/from16 v19, v9

    .end local v9    # "splitName":Ljava/lang/String;
    .local v19, "splitName":Ljava/lang/String;
    move-object/from16 v9, v17

    invoke-virtual/range {v4 .. v9}, Landroid/content/pm/PackageManagerInternal;->uninstallApex(Ljava/lang/String;JILandroid/content/IntentSender;)V

    goto :goto_5

    .line 1702
    .end local v18    # "internal":Landroid/content/pm/PackageManagerInternal;
    .end local v19    # "splitName":Ljava/lang/String;
    .restart local v8    # "internal":Landroid/content/pm/PackageManagerInternal;
    .restart local v9    # "splitName":Ljava/lang/String;
    :cond_a
    move-object v13, v6

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    .end local v8    # "internal":Landroid/content/pm/PackageManagerInternal;
    .end local v9    # "splitName":Ljava/lang/String;
    .restart local v18    # "internal":Landroid/content/pm/PackageManagerInternal;
    .restart local v19    # "splitName":Ljava/lang/String;
    if-ne v3, v5, :cond_b

    .line 1703
    const/4 v3, 0x0

    .line 1704
    or-int/lit8 v2, v2, 0x2

    goto :goto_4

    .line 1706
    :cond_b
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/high16 v5, 0x4000000

    invoke-interface {v4, v15, v5, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 1708
    .local v4, "info":Landroid/content/pm/PackageInfo;
    if-nez v4, :cond_c

    .line 1709
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure [not installed for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1710
    return v14

    .line 1712
    :cond_c
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v5, v14

    if-eqz v5, :cond_d

    move v5, v14

    goto :goto_3

    :cond_d
    const/4 v5, 0x0

    .line 1717
    .local v5, "isSystem":Z
    :goto_3
    if-eqz v5, :cond_e

    .line 1718
    or-int/lit8 v2, v2, 0x4

    .line 1722
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    .end local v5    # "isSystem":Z
    :cond_e
    :goto_4
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v4}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v20

    new-instance v4, Landroid/content/pm/VersionedPackage;

    invoke-direct {v4, v15, v10, v11}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    const/16 v22, 0x0

    .line 1724
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v24

    .line 1722
    move-object/from16 v21, v4

    move/from16 v23, v2

    move/from16 v25, v3

    invoke-interface/range {v20 .. v25}, Landroid/content/pm/IPackageInstaller;->uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;I)V

    .line 1727
    :goto_5
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v4

    .line 1728
    .local v4, "result":Landroid/content/Intent;
    const-string v5, "android.content.pm.extra.STATUS"

    invoke-virtual {v4, v5, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1730
    .local v5, "status":I
    if-nez v5, :cond_f

    .line 1731
    const-string v6, "Success"

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1732
    const/4 v6, 0x0

    return v6

    .line 1734
    :cond_f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1735
    const-string v7, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1734
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1736
    return v14
.end method

.method private runreconcileSecondaryDexFiles()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1515
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 1516
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, v0}, Landroid/content/pm/IPackageManager;->reconcileSecondaryDexFiles(Ljava/lang/String;)V

    .line 1517
    const/4 v1, 0x0

    return v1
.end method

.method private setParamsSize(Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;Ljava/lang/String;)V
    .locals 13
    .param p1, "params"    # Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    .param p2, "inPath"    # Ljava/lang/String;

    .line 462
    const-string v0, "Error: Failed to parse APK file: "

    iget-object v1, p1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    const-string v1, "-"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 463
    const-string/jumbo v1, "r"

    invoke-virtual {p0, p2, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 464
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_0

    .line 469
    :try_start_0
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p2, v3}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v6

    .line 470
    .local v6, "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    new-instance v2, Landroid/content/pm/PackageParser$PackageLite;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v12}, Landroid/content/pm/PackageParser$PackageLite;-><init>(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;[Ljava/lang/String;[Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I)V

    .line 472
    .local v2, "pkgLite":Landroid/content/pm/PackageParser$PackageLite;
    iget-object v3, p1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v4, p1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v4, v4, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    .line 473
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    .line 472
    invoke-static {v2, v4, v5}, Lcom/android/internal/content/PackageHelper;->calculateInstalledSize(Landroid/content/pm/PackageParser$PackageLite;Ljava/lang/String;Ljava/io/FileDescriptor;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    .end local v2    # "pkgLite":Landroid/content/pm/PackageParser$PackageLite;
    .end local v6    # "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 482
    goto :goto_2

    .line 481
    :catch_0
    move-exception v0

    .line 483
    goto :goto_2

    .line 479
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 474
    :catch_1
    move-exception v2

    .line 475
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 476
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local p0    # "this":Lcom/android/server/pm/PackageManagerShellCommand;
    .end local p1    # "params":Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    .end local p2    # "inPath":Ljava/lang/String;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 480
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerShellCommand;
    .restart local p1    # "params":Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    .restart local p2    # "inPath":Ljava/lang/String;
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 482
    goto :goto_1

    .line 481
    :catch_2
    move-exception v2

    .line 482
    :goto_1
    throw v0

    .line 465
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Can\'t open file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 466
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_1
    :goto_2
    return-void
.end method

.method private translateUserId(IZLjava/lang/String;)I
    .locals 7
    .param p1, "userId"    # I
    .param p2, "allowAll"    # Z
    .param p3, "logContext"    # Ljava/lang/String;

    .line 2713
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x1

    const-string/jumbo v6, "pm command"

    move v2, p1

    move v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private uninstallSystemUpdates()I
    .locals 17

    .line 372
    move-object/from16 v1, p0

    const-string v2, "]"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    .line 373
    .local v3, "pw":Ljava/io/PrintWriter;
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move-object v4, v0

    .line 375
    .local v4, "failedUninstalls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/high16 v6, 0x100000

    .line 376
    invoke-interface {v0, v6, v5}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 378
    .local v0, "packages":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v6}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v7

    .line 379
    .local v7, "installer":Landroid/content/pm/IPackageInstaller;
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v6

    .line 380
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v14, 0x1

    if-eqz v8, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    move-object v15, v8

    .line 381
    .local v15, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v15}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 382
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Uninstalling updates to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 383
    new-instance v8, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$1;)V

    move-object/from16 v16, v8

    .line 384
    .local v16, "receiver":Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
    new-instance v8, Landroid/content/pm/VersionedPackage;

    iget-object v9, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v10, v15, Landroid/content/pm/ApplicationInfo;->versionCode:I

    invoke-direct {v8, v9, v10}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 386
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v11

    const/4 v12, 0x0

    .line 384
    invoke-interface/range {v7 .. v12}, Landroid/content/pm/IPackageInstaller;->uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;I)V

    .line 388
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v8

    .line 389
    .local v8, "result":Landroid/content/Intent;
    const-string v9, "android.content.pm.extra.STATUS"

    invoke-virtual {v8, v9, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 391
    .local v9, "status":I
    if-eqz v9, :cond_0

    .line 392
    iget-object v10, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    .end local v8    # "result":Landroid/content/Intent;
    .end local v9    # "status":I
    .end local v15    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "receiver":Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
    :cond_0
    goto :goto_0

    .line 401
    .end local v0    # "packages":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v7    # "installer":Landroid/content/pm/IPackageInstaller;
    :cond_1
    nop

    .line 402
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure [Couldn\'t uninstall packages: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    const-string v6, ", "

    invoke-static {v6, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 403
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 406
    return v5

    .line 408
    :cond_2
    const-string v0, "Success"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 409
    return v14

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 397
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 400
    return v5
.end method


# virtual methods
.method public synthetic lambda$runGetOemPermissions$0$PackageManagerShellCommand(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "granted"    # Ljava/lang/Boolean;

    .line 2090
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " granted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onCommand(Ljava/lang/String;)I
    .locals 8
    .param p1, "cmd"    # Ljava/lang/String;

    .line 152
    if-nez p1, :cond_0

    .line 153
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 158
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto/16 :goto_0

    :sswitch_0
    const-string v2, "install"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x7

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "get-moduleinfo"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x3d

    goto/16 :goto_1

    :sswitch_2
    const-string/jumbo v2, "reconcile-secondary-dex-files"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x15

    goto/16 :goto_1

    :sswitch_3
    const-string/jumbo v2, "set-install-location"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xf

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "disable-until-used"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x1f

    goto/16 :goto_1

    :sswitch_5
    const-string v2, "disable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x1d

    goto/16 :goto_1

    :sswitch_6
    const-string v2, "install-write"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xd

    goto/16 :goto_1

    :sswitch_7
    const-string/jumbo v2, "set-home-activity"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x34

    goto/16 :goto_1

    :sswitch_8
    const-string/jumbo v2, "trim-caches"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x2e

    goto/16 :goto_1

    :sswitch_9
    const-string v2, "force-dex-opt"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x16

    goto/16 :goto_1

    :sswitch_a
    const-string/jumbo v2, "query-activities"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto/16 :goto_1

    :sswitch_b
    const-string v2, "compile"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x14

    goto/16 :goto_1

    :sswitch_c
    const-string/jumbo v2, "set-app-link"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x2c

    goto/16 :goto_1

    :sswitch_d
    const-string/jumbo v2, "set-user-restriction"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x31

    goto/16 :goto_1

    :sswitch_e
    const-string/jumbo v2, "uninstall-system-updates"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x3b

    goto/16 :goto_1

    :sswitch_f
    const-string v2, "install-destroy"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x9

    goto/16 :goto_1

    :sswitch_10
    const-string/jumbo v2, "snapshot-profile"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x19

    goto/16 :goto_1

    :sswitch_11
    const-string/jumbo v2, "rollback-app"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x3c

    goto/16 :goto_1

    :sswitch_12
    const-string/jumbo v2, "reset-permissions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x27

    goto/16 :goto_1

    :sswitch_13
    const-string v2, "install-remove"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xc

    goto/16 :goto_1

    :sswitch_14
    const-string v2, "install-add-session"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x11

    goto/16 :goto_1

    :sswitch_15
    const-string v2, "get-harmful-app-warning"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x39

    goto/16 :goto_1

    :sswitch_16
    const-string v2, "install-existing"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xe

    goto/16 :goto_1

    :sswitch_17
    const-string v2, "grant"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x25

    goto/16 :goto_1

    :sswitch_18
    const-string v2, "clear"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x1b

    goto/16 :goto_1

    :sswitch_19
    const-string v2, "get-max-users"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x32

    goto/16 :goto_1

    :sswitch_1a
    const-string/jumbo v2, "move-package"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x12

    goto/16 :goto_1

    :sswitch_1b
    const-string/jumbo v2, "path"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v7

    goto/16 :goto_1

    :sswitch_1c
    const-string/jumbo v2, "list"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    goto/16 :goto_1

    :sswitch_1d
    const-string v2, "hide"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x21

    goto/16 :goto_1

    :sswitch_1e
    const-string v2, "dump"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v6

    goto/16 :goto_1

    :sswitch_1f
    const-string/jumbo v2, "move-primary-storage"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x13

    goto/16 :goto_1

    :sswitch_20
    const-string v2, "default-state"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x20

    goto/16 :goto_1

    :sswitch_21
    const-string v2, "install-create"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xb

    goto/16 :goto_1

    :sswitch_22
    const-string v2, "install-commit"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xa

    goto/16 :goto_1

    :sswitch_23
    const-string/jumbo v2, "unsuspend"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x24

    goto/16 :goto_1

    :sswitch_24
    const-string/jumbo v2, "set-permission-enforced"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x28

    goto/16 :goto_1

    :sswitch_25
    const-string/jumbo v2, "remove-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x30

    goto/16 :goto_1

    :sswitch_26
    const-string v2, "get-stagedsessions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x3a

    goto/16 :goto_1

    :sswitch_27
    const-string/jumbo v2, "query-receivers"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x6

    goto/16 :goto_1

    :sswitch_28
    const-string v2, "bg-dexopt-job"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x17

    goto/16 :goto_1

    :sswitch_29
    const-string/jumbo v2, "query-services"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    goto/16 :goto_1

    :sswitch_2a
    const-string v2, "create-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x2f

    goto/16 :goto_1

    :sswitch_2b
    const-string v2, "get-app-link"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x2d

    goto/16 :goto_1

    :sswitch_2c
    const-string/jumbo v2, "uninstall"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x1a

    goto/16 :goto_1

    :sswitch_2d
    const-string/jumbo v2, "unhide"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x22

    goto/16 :goto_1

    :sswitch_2e
    const-string v2, "dump-profiles"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x18

    goto/16 :goto_1

    :sswitch_2f
    const-string/jumbo v2, "revoke"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x26

    goto/16 :goto_1

    :sswitch_30
    const-string v2, "disable-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x1e

    goto/16 :goto_1

    :sswitch_31
    const-string v2, "get-privapp-permissions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x29

    goto/16 :goto_1

    :sswitch_32
    const-string v2, "get-oem-permissions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x2b

    goto/16 :goto_1

    :sswitch_33
    const-string v2, "get-privapp-deny-permissions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x2a

    goto/16 :goto_1

    :sswitch_34
    const-string/jumbo v2, "resolve-activity"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto/16 :goto_1

    :sswitch_35
    const-string v2, "get-instantapp-resolver"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x36

    goto :goto_1

    :sswitch_36
    const-string v2, "enable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x1c

    goto :goto_1

    :sswitch_37
    const-string v2, "has-feature"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x37

    goto :goto_1

    :sswitch_38
    const-string/jumbo v2, "set-installer"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x35

    goto :goto_1

    :sswitch_39
    const-string v2, "get-max-running-users"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x33

    goto :goto_1

    :sswitch_3a
    const-string/jumbo v2, "suspend"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x23

    goto :goto_1

    :sswitch_3b
    const-string v2, "get-install-location"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x10

    goto :goto_1

    :sswitch_3c
    const-string v2, "install-abandon"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    goto :goto_1

    :sswitch_3d
    const-string/jumbo v2, "set-harmful-app-warning"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x38

    goto :goto_1

    :goto_0
    move v2, v1

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 285
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 283
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetModuleInfo()I

    move-result v1

    return v1

    .line 281
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runRollbackApp()I

    move-result v1

    return v1

    .line 279
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->uninstallSystemUpdates()I

    move-result v1

    return v1

    .line 277
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getStagedSessions()I

    move-result v1

    return v1

    .line 275
    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetHarmfulAppWarning()I

    move-result v1

    return v1

    .line 273
    :pswitch_5
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetHarmfulAppWarning()I

    move-result v1

    return v1

    .line 271
    :pswitch_6
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runHasFeature()I

    move-result v1

    return v1

    .line 269
    :pswitch_7
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetInstantAppResolver()I

    move-result v1

    return v1

    .line 267
    :pswitch_8
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetInstaller()I

    move-result v1

    return v1

    .line 265
    :pswitch_9
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetHomeActivity()I

    move-result v1

    return v1

    .line 263
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetMaxRunningUsers()I

    move-result v1

    return v1

    .line 261
    :pswitch_b
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetMaxUsers()I

    move-result v1

    return v1

    .line 259
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetUserRestriction()I

    move-result v1

    return v1

    .line 257
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runRemoveUser()I

    move-result v1

    return v1

    .line 255
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runCreateUser()I

    move-result v1

    return v1

    .line 253
    :pswitch_f
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runTrimCaches()I

    move-result v1

    return v1

    .line 251
    :pswitch_10
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetAppLink()I

    move-result v1

    return v1

    .line 249
    :pswitch_11
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetAppLink()I

    move-result v1

    return v1

    .line 247
    :pswitch_12
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetOemPermissions()I

    move-result v1

    return v1

    .line 245
    :pswitch_13
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetPrivappDenyPermissions()I

    move-result v1

    return v1

    .line 243
    :pswitch_14
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetPrivappPermissions()I

    move-result v1

    return v1

    .line 241
    :pswitch_15
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetPermissionEnforced()I

    move-result v1

    return v1

    .line 239
    :pswitch_16
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runResetPermissions()I

    move-result v1

    return v1

    .line 237
    :pswitch_17
    invoke-direct {p0, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->runGrantRevokePermission(Z)I

    move-result v1

    return v1

    .line 235
    :pswitch_18
    invoke-direct {p0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->runGrantRevokePermission(Z)I

    move-result v1

    return v1

    .line 233
    :pswitch_19
    invoke-direct {p0, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->runSuspend(Z)I

    move-result v1

    return v1

    .line 231
    :pswitch_1a
    invoke-direct {p0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->runSuspend(Z)I

    move-result v1

    return v1

    .line 229
    :pswitch_1b
    invoke-direct {p0, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetHiddenSetting(Z)I

    move-result v1

    return v1

    .line 227
    :pswitch_1c
    invoke-direct {p0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetHiddenSetting(Z)I

    move-result v1

    return v1

    .line 225
    :pswitch_1d
    invoke-direct {p0, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetEnabledSetting(I)I

    move-result v1

    return v1

    .line 222
    :pswitch_1e
    invoke-direct {p0, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetEnabledSetting(I)I

    move-result v1

    return v1

    .line 219
    :pswitch_1f
    invoke-direct {p0, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetEnabledSetting(I)I

    move-result v1

    return v1

    .line 217
    :pswitch_20
    invoke-direct {p0, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetEnabledSetting(I)I

    move-result v1

    return v1

    .line 215
    :pswitch_21
    invoke-direct {p0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetEnabledSetting(I)I

    move-result v1

    return v1

    .line 213
    :pswitch_22
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runClear()I

    move-result v1

    return v1

    .line 211
    :pswitch_23
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runUninstall()I

    move-result v1

    return v1

    .line 209
    :pswitch_24
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSnapshotProfile()I

    move-result v1

    return v1

    .line 207
    :pswitch_25
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runDumpProfiles()I

    move-result v1

    return v1

    .line 205
    :pswitch_26
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runDexoptJob()I

    move-result v1

    return v1

    .line 203
    :pswitch_27
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runForceDexOpt()I

    move-result v1

    return v1

    .line 201
    :pswitch_28
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runreconcileSecondaryDexFiles()I

    move-result v1

    return v1

    .line 199
    :pswitch_29
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runCompile()I

    move-result v1

    return v1

    .line 197
    :pswitch_2a
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runMovePrimaryStorage()I

    move-result v1

    return v1

    .line 195
    :pswitch_2b
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runMovePackage()I

    move-result v1

    return v1

    .line 193
    :pswitch_2c
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallAddSession()I

    move-result v1

    return v1

    .line 191
    :pswitch_2d
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetInstallLocation()I

    move-result v1

    return v1

    .line 189
    :pswitch_2e
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetInstallLocation()I

    move-result v1

    return v1

    .line 187
    :pswitch_2f
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallExisting()I

    move-result v1

    return v1

    .line 185
    :pswitch_30
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallWrite()I

    move-result v1

    return v1

    .line 183
    :pswitch_31
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallRemove()I

    move-result v1

    return v1

    .line 181
    :pswitch_32
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallCreate()I

    move-result v1

    return v1

    .line 179
    :pswitch_33
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallCommit()I

    move-result v1

    return v1

    .line 177
    :pswitch_34
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallAbandon()I

    move-result v1

    return v1

    .line 174
    :pswitch_35
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstall()I

    move-result v1

    return v1

    .line 172
    :pswitch_36
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runQueryIntentReceivers()I

    move-result v1

    return v1

    .line 170
    :pswitch_37
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runQueryIntentServices()I

    move-result v1

    return v1

    .line 168
    :pswitch_38
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runQueryIntentActivities()I

    move-result v1

    return v1

    .line 166
    :pswitch_39
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runResolveActivity()I

    move-result v1

    return v1

    .line 164
    :pswitch_3a
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runList()I

    move-result v1

    return v1

    .line 162
    :pswitch_3b
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runDump()I

    move-result v1

    return v1

    .line 160
    :pswitch_3c
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runPath()I

    move-result v1

    return v1

    .line 286
    .local v2, "nextArg":Ljava/lang/String;
    :goto_2
    if-nez v2, :cond_3

    .line 287
    const-string v3, "-l"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 288
    invoke-direct {p0, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPackages(Z)I

    move-result v1

    return v1

    .line 289
    :cond_2
    const-string v3, "-lf"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 290
    invoke-direct {p0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPackages(Z)I

    move-result v1

    return v1

    .line 292
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 293
    const-string v3, "-p"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 294
    invoke-direct {p0, v2, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->displayPackageFilePath(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 297
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 300
    .end local v2    # "nextArg":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 301
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 303
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d5639bf -> :sswitch_3d
        -0x7540f3bd -> :sswitch_3c
        -0x737996c2 -> :sswitch_3b
        -0x6e635fc4 -> :sswitch_3a
        -0x6e1196e6 -> :sswitch_39
        -0x67c8bc23 -> :sswitch_38
        -0x504e493d -> :sswitch_37
        -0x4d6ada7d -> :sswitch_36
        -0x4b90d264 -> :sswitch_35
        -0x495fa230 -> :sswitch_34
        -0x41b47fcb -> :sswitch_33
        -0x410d7369 -> :sswitch_32
        -0x3fd1a8ae -> :sswitch_31
        -0x3d838470 -> :sswitch_30
        -0x37b0f17a -> :sswitch_2f
        -0x36d5185d -> :sswitch_2e
        -0x321a08a5 -> :sswitch_2d
        -0x2549d71e -> :sswitch_2c
        -0x2525a743 -> :sswitch_2b
        -0x202b5604 -> :sswitch_2a
        -0x1b57243d -> :sswitch_29
        -0x1a825bcc -> :sswitch_28
        -0x1a490a61 -> :sswitch_27
        -0x18d650e6 -> :sswitch_26
        -0x143f388c -> :sswitch_25
        -0xd1dc6eb -> :sswitch_24
        -0x85b5c7d -> :sswitch_23
        -0x7e40657 -> :sswitch_22
        -0x7bd8e92 -> :sswitch_21
        -0x6dac5fb -> :sswitch_20
        -0x533744c -> :sswitch_1f
        0x2f39f4 -> :sswitch_1e
        0x30dd42 -> :sswitch_1d
        0x32b09e -> :sswitch_1c
        0x346425 -> :sswitch_1b
        0x120f24a -> :sswitch_1a
        0x5296aa8 -> :sswitch_19
        0x5a5b64d -> :sswitch_18
        0x5e0c11c -> :sswitch_17
        0x664b17d -> :sswitch_16
        0x8569735 -> :sswitch_15
        0xe265438 -> :sswitch_14
        0x1127c8f6 -> :sswitch_13
        0x156ea506 -> :sswitch_12
        0x1678dbb8 -> :sswitch_11
        0x1bde3ea0 -> :sswitch_10
        0x2f90ddc8 -> :sswitch_f
        0x3142fb77 -> :sswitch_e
        0x372512d5 -> :sswitch_d
        0x372e1931 -> :sswitch_c
        0x38a75a33 -> :sswitch_b
        0x3ec9c212 -> :sswitch_a
        0x4308171b -> :sswitch_9
        0x4634ad3c -> :sswitch_8
        0x55326612 -> :sswitch_7
        0x5bb0b12d -> :sswitch_6
        0x639e22e8 -> :sswitch_5
        0x653560d1 -> :sswitch_4
        0x681c75b2 -> :sswitch_3
        0x6a555f29 -> :sswitch_2
        0x6ecbfff1 -> :sswitch_1
        0x74ae259b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHelp()V
    .locals 8

    .line 2996
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2997
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Package manager (package) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2998
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2999
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3000
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3001
    const-string v2, "  path [--user USER_ID] PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3002
    const-string v2, "    Print the path to the .apk of the given PACKAGE."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3003
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3004
    const-string v2, "  dump PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3005
    const-string v2, "    Print various system state associated with the given PACKAGE."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3006
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3007
    const-string v2, "  list features"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3008
    const-string v2, "    Prints all features of the system."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3009
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3010
    const-string v2, "  has-feature FEATURE_NAME [version]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3011
    const-string v2, "    Prints true and returns exit status 0 when system has a FEATURE_NAME,"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3012
    const-string v2, "    otherwise prints false and returns exit status 1"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3013
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3014
    const-string v2, "  list instrumentation [-f] [TARGET-PACKAGE]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3015
    const-string v2, "    Prints all test packages; optionally only those targeting TARGET-PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3016
    const-string v2, "    Options:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3017
    const-string v2, "      -f: dump the name of the .apk file containing the test package"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3018
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3019
    const-string v2, "  list libraries"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3020
    const-string v2, "    Prints all system libraries."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3021
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3022
    const-string v2, "  list packages [-f] [-d] [-e] [-s] [-3] [-i] [-l] [-u] [-U] "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3023
    const-string v2, "      [--show-versioncode] [--apex-only] [--uid UID] [--user USER_ID] [FILTER]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3024
    const-string v2, "    Prints all packages; optionally only those whose name contains"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3025
    const-string v2, "    the text in FILTER.  Options are:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3026
    const-string v2, "      -f: see their associated file"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3027
    const-string v2, "      -a: all known packages (but excluding APEXes)"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3028
    const-string v2, "      -d: filter to only show disabled packages"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3029
    const-string v2, "      -e: filter to only show enabled packages"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3030
    const-string v2, "      -s: filter to only show system packages"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3031
    const-string v2, "      -3: filter to only show third party packages"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3032
    const-string v2, "      -i: see the installer for the packages"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3033
    const-string v2, "      -l: ignored (used for compatibility with older releases)"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3034
    const-string v2, "      -U: also show the package UID"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3035
    const-string v2, "      -u: also include uninstalled packages"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3036
    const-string v2, "      --show-versioncode: also show the version code"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3037
    const-string v2, "      --apex-only: only show APEX packages"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3038
    const-string v2, "      --uid UID: filter to only show packages with the given UID"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3039
    const-string v2, "      --user USER_ID: only list packages belonging to the given user"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3040
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3041
    const-string v2, "  list permission-groups"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3042
    const-string v2, "    Prints all known permission groups."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3043
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3044
    const-string v2, "  list permissions [-g] [-f] [-d] [-u] [GROUP]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3045
    const-string v2, "    Prints all known permissions; optionally only those in GROUP.  Options are:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3046
    const-string v2, "      -g: organize by group"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3047
    const-string v2, "      -f: print all information"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3048
    const-string v2, "      -s: short summary"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3049
    const-string v2, "      -d: only list dangerous permissions"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3050
    const-string v2, "      -u: list only the permissions users will see"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3051
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3052
    const-string v2, "  resolve-activity [--brief] [--components] [--query-flags FLAGS]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3053
    const-string v2, "       [--user USER_ID] INTENT"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3054
    const-string v3, "    Prints the activity that resolves to the given INTENT."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3055
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3056
    const-string v3, "  query-activities [--brief] [--components] [--query-flags FLAGS]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3057
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3058
    const-string v3, "    Prints all activities that can handle the given INTENT."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3059
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3060
    const-string v3, "  query-services [--brief] [--components] [--query-flags FLAGS]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3061
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3062
    const-string v3, "    Prints all services that can handle the given INTENT."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3063
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3064
    const-string v3, "  query-receivers [--brief] [--components] [--query-flags FLAGS]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3065
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3066
    const-string v2, "    Prints all broadcast receivers that can handle the given INTENT."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3067
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3068
    const-string v2, "  install [-lrtsfdgw] [-i PACKAGE] [--user USER_ID|all|current]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3069
    const-string v2, "       [-p INHERIT_PACKAGE] [--install-location 0/1/2]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3070
    const-string v3, "       [--install-reason 0/1/2/3/4] [--originating-uri URI]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3071
    const-string v4, "       [--referrer URI] [--abi ABI_NAME] [--force-sdk]"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3072
    const-string v5, "       [--preload] [--instantapp] [--full] [--dont-kill]"

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3073
    const-string v6, "       [--enable-rollback]"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3074
    const-string v6, "       [--force-uuid internal|UUID] [--pkg PACKAGE] [-S BYTES] [--apex]"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3075
    const-string v6, "       [PATH|-]"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3076
    const-string v6, "    Install an application.  Must provide the apk data to install, either as a"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3077
    const-string v6, "    file path or \'-\' to read from stdin.  Options are:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3078
    const-string v6, "      -l: forward lock application"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3079
    const-string v6, "      -R: disallow replacement of existing application"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3080
    const-string v6, "      -t: allow test packages"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3081
    const-string v6, "      -i: specify package name of installer owning the app"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3082
    const-string v6, "      -s: install application on sdcard"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3083
    const-string v6, "      -f: install application on internal flash"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3084
    const-string v6, "      -d: allow version code downgrade (debuggable packages only)"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3085
    const-string v6, "      -p: partial application install (new split on top of existing pkg)"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3086
    const-string v6, "      -g: grant all runtime permissions"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3087
    const-string v6, "      -S: size in bytes of package, required for stdin"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3088
    const-string v7, "      --user: install under the given user."

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3089
    const-string v7, "      --dont-kill: installing a new feature split, don\'t kill running app"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3090
    const-string v7, "      --restrict-permissions: don\'t whitelist restricted permissions at install"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3091
    const-string v7, "      --originating-uri: set URI where app was downloaded from"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3092
    const-string v7, "      --referrer: set URI that instigated the install of the app"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3093
    const-string v7, "      --pkg: specify expected package name of app being installed"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3094
    const-string v7, "      --abi: override the default ABI of the platform"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3095
    const-string v7, "      --instantapp: cause the app to be installed as an ephemeral install app"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3096
    const-string v7, "      --full: cause the app to be installed as a non-ephemeral full app"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3097
    const-string v7, "      --install-location: force the install location:"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3098
    const-string v7, "          0=auto, 1=internal only, 2=prefer external"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3099
    const-string v7, "      --install-reason: indicates why the app is being installed:"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3100
    const-string v7, "          0=unknown, 1=admin policy, 2=device restore,"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3101
    const-string v7, "          3=device setup, 4=user request"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3102
    const-string v7, "      --force-uuid: force install on to disk volume with given UUID"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3103
    const-string v7, "      --apex: install an .apex file, not an .apk"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3104
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3105
    const-string v7, "  install-create [-lrtsfdg] [-i PACKAGE] [--user USER_ID|all|current]"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3106
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3107
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3108
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3109
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3110
    const-string v2, "       [--force-uuid internal|UUID] [--pkg PACKAGE] [--apex] [-S BYTES]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3111
    const-string v2, "       [--multi-package] [--staged]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3112
    const-string v2, "    Like \"install\", but starts an install session.  Use \"install-write\""

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3113
    const-string v2, "    to push data into the session, and \"install-commit\" to finish."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3114
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3115
    const-string v2, "  install-write [-S BYTES] SESSION_ID SPLIT_NAME [PATH|-]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3116
    const-string v2, "    Write an apk into the given install session.  If the path is \'-\', data"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3117
    const-string v2, "    will be read from stdin.  Options are:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3118
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3119
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3120
    const-string v2, "  install-add-session MULTI_PACKAGE_SESSION_ID CHILD_SESSION_IDs"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3121
    const-string v2, "    Add one or more session IDs to a multi-package session."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3122
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3123
    const-string v2, "  install-commit SESSION_ID"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3124
    const-string v2, "    Commit the given active install session, installing the app."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3125
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3126
    const-string v2, "  install-abandon SESSION_ID"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3127
    const-string v2, "    Delete the given active install session."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3128
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3129
    const-string v2, "  set-install-location LOCATION"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3130
    const-string v2, "    Changes the default install location.  NOTE this is only intended for debugging;"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3131
    const-string v2, "    using this can cause applications to break and other undersireable behavior."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3132
    const-string v2, "    LOCATION is one of:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3133
    const-string v2, "    0 [auto]: Let system decide the best location"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3134
    const-string v2, "    1 [internal]: Install on internal device storage"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3135
    const-string v2, "    2 [external]: Install on external media"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3136
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3137
    const-string v2, "  get-install-location"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3138
    const-string v2, "    Returns the current install location: 0, 1 or 2 as per set-install-location."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3139
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3140
    const-string v2, "  move-package PACKAGE [internal|UUID]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3141
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3142
    const-string v2, "  move-primary-storage [internal|UUID]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3143
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3144
    const-string v2, "  pm uninstall [-k] [--user USER_ID] [--versionCode VERSION_CODE] PACKAGE [SPLIT]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3145
    const-string v2, "    Remove the given package name from the system.  May remove an entire app"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3146
    const-string v2, "    if no SPLIT name is specified, otherwise will remove only the split of the"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3147
    const-string v2, "    given app.  Options are:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3148
    const-string v2, "      -k: keep the data and cache directories around after package removal."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3149
    const-string v2, "      --user: remove the app from the given user."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3150
    const-string v2, "      --versionCode: only uninstall if the app has the given version code."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3151
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3152
    const-string v2, "  clear [--user USER_ID] PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3153
    const-string v2, "    Deletes all data associated with a package."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3154
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3155
    const-string v2, "  enable [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3156
    const-string v2, "  disable [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3157
    const-string v2, "  disable-user [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3158
    const-string v2, "  disable-until-used [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3159
    const-string v2, "  default-state [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3160
    const-string v2, "    These commands change the enabled state of a given package or"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3161
    const-string v2, "    component (written as \"package/class\")."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3162
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3163
    const-string v2, "  hide [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3164
    const-string v2, "  unhide [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3165
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3166
    const-string v2, "  suspend [--user USER_ID] TARGET-PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3167
    const-string v2, "    Suspends the specified package (as user)."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3168
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3169
    const-string v2, "  unsuspend [--user USER_ID] TARGET-PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3170
    const-string v2, "    Unsuspends the specified package (as user)."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3171
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3172
    const-string v2, "  grant [--user USER_ID] PACKAGE PERMISSION"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3173
    const-string v2, "  revoke [--user USER_ID] PACKAGE PERMISSION"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3174
    const-string v2, "    These commands either grant or revoke permissions to apps.  The permissions"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3175
    const-string v2, "    must be declared as used in the app\'s manifest, be runtime permissions"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3176
    const-string v2, "    (protection level dangerous), and the app targeting SDK greater than Lollipop MR1."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3177
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3178
    const-string v2, "  reset-permissions"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3179
    const-string v2, "    Revert all runtime permissions to their default state."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3180
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3181
    const-string v2, "  set-permission-enforced PERMISSION [true|false]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3182
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3183
    const-string v2, "  get-privapp-permissions TARGET-PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3184
    const-string v2, "    Prints all privileged permissions for a package."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3185
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3186
    const-string v2, "  get-privapp-deny-permissions TARGET-PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3187
    const-string v2, "    Prints all privileged permissions that are denied for a package."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3188
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3189
    const-string v2, "  get-oem-permissions TARGET-PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3190
    const-string v2, "    Prints all OEM permissions for a package."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3191
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3192
    const-string v2, "  set-app-link [--user USER_ID] PACKAGE {always|ask|never|undefined}"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3193
    const-string v2, "  get-app-link [--user USER_ID] PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3194
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3195
    const-string v2, "  trim-caches DESIRED_FREE_SPACE [internal|UUID]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3196
    const-string v2, "    Trim cache files to reach the given free space."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3197
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3198
    const-string v2, "  create-user [--profileOf USER_ID] [--managed] [--restricted] [--ephemeral]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3199
    const-string v2, "      [--guest] USER_NAME"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3200
    const-string v2, "    Create a new user with the given USER_NAME, printing the new user identifier"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3201
    const-string v2, "    of the user."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3202
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3203
    const-string v2, "  remove-user USER_ID"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3204
    const-string v2, "    Remove the user with the given USER_IDENTIFIER, deleting all data"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3205
    const-string v2, "    associated with that user"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3206
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3207
    const-string v2, "  set-user-restriction [--user USER_ID] RESTRICTION VALUE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3208
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3209
    const-string v2, "  get-max-users"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3210
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3211
    const-string v2, "  get-max-running-users"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3212
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3213
    const-string v2, "  compile [-m MODE | -r REASON] [-f] [-c] [--split SPLIT_NAME]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3214
    const-string v2, "          [--reset] [--check-prof (true | false)] (-a | TARGET-PACKAGE)"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3215
    const-string v2, "    Trigger compilation of TARGET-PACKAGE or all packages if \"-a\".  Options are:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3216
    const-string v2, "      -a: compile all packages"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3217
    const-string v2, "      -c: clear profile data before compiling"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3218
    const-string v2, "      -f: force compilation even if not needed"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3219
    const-string v2, "      -m: select compilation mode"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3220
    const-string v2, "          MODE is one of the dex2oat compiler filters:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3221
    const-string v2, "            assume-verified"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3222
    const-string v2, "            extract"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3223
    const-string v2, "            verify"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3224
    const-string v2, "            quicken"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3225
    const-string v2, "            space-profile"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3226
    const-string v2, "            space"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3227
    const-string v2, "            speed-profile"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3228
    const-string v2, "            speed"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3229
    const-string v2, "            everything"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3230
    const-string v2, "      -r: select compilation reason"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3231
    const-string v2, "          REASON is one of:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3232
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 3233
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "            "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3232
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3235
    .end local v2    # "i":I
    :cond_0
    const-string v2, "      --reset: restore package to its post-install state"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3236
    const-string v2, "      --check-prof (true | false): look at profiles when doing dexopt?"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3237
    const-string v2, "      --secondary-dex: compile app secondary dex files"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3238
    const-string v2, "      --split SPLIT: compile only the given split name"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3239
    const-string v2, "      --compile-layouts: compile layout resources for faster inflation"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3240
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3241
    const-string v2, "  force-dex-opt PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3242
    const-string v2, "    Force immediate execution of dex opt for the given PACKAGE."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3243
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3244
    const-string v2, "  bg-dexopt-job"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3245
    const-string v2, "    Execute the background optimizations immediately."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3246
    const-string v2, "    Note that the command only runs the background optimizer logic. It may"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3247
    const-string v2, "    overlap with the actual job but the job scheduler will not be able to"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3248
    const-string v2, "    cancel it. It will also run even if the device is not in the idle"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3249
    const-string v2, "    maintenance mode."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3250
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3251
    const-string v2, "  reconcile-secondary-dex-files TARGET-PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3252
    const-string v2, "    Reconciles the package secondary dex files with the generated oat files."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3253
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3254
    const-string v2, "  dump-profiles TARGET-PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3255
    const-string v2, "    Dumps method/class profile files to"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3256
    const-string v2, "    /data/misc/profman/TARGET-PACKAGE.txt"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3257
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3258
    const-string v2, "  snapshot-profile TARGET-PACKAGE [--code-path path]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3259
    const-string v2, "    Take a snapshot of the package profiles to"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3260
    const-string v2, "    /data/misc/profman/TARGET-PACKAGE[-code-path].prof"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3262
    const-string v2, "    If TARGET-PACKAGE=android it will take a snapshot of the boot image"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3263
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3264
    const-string v2, "  set-home-activity [--user USER_ID] TARGET-COMPONENT"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3265
    const-string v2, "    Set the default home activity (aka launcher)."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3266
    const-string v2, "    TARGET-COMPONENT can be a package name (com.package.my) or a full"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3267
    const-string v2, "    component (com.package.my/component.name). However, only the package name"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3268
    const-string v2, "    matters: the actual component used will be determined automatically from"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3269
    const-string v2, "    the package."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3270
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3271
    const-string v2, "  set-installer PACKAGE INSTALLER"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3272
    const-string v2, "    Set installer package name"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3273
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3274
    const-string v2, "  get-instantapp-resolver"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3275
    const-string v2, "    Return the name of the component that is the current instant app installer."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3276
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3277
    const-string v2, "  set-harmful-app-warning [--user <USER_ID>] <PACKAGE> [<WARNING>]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3278
    const-string v2, "    Mark the app as harmful with the given warning message."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3279
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3280
    const-string v2, "  get-harmful-app-warning [--user <USER_ID>] <PACKAGE>"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3281
    const-string v2, "    Return the harmful app warning message for the given app, if present"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3282
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 3283
    const-string v2, "  uninstall-system-updates"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3284
    const-string v2, "    Remove updates to all system applications and fall back to their /system version."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3286
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 3287
    const-string v2, "  get-moduleinfo [--all | --installed] [module-name]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3288
    const-string v2, "    Displays module info. If module-name is specified only that info is shown"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3289
    const-string v2, "    By default, without any argument only installed modules are shown."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3290
    const-string v2, "      --all: show all module info"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3291
    const-string v2, "      --installed: show only installed modules"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3292
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3293
    invoke-static {v0, v1}, Landroid/content/Intent;->printIntentArgsHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3294
    return-void
.end method

.method public runCreateUser()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2278
    const/4 v0, -0x1

    .line 2279
    .local v0, "userId":I
    const/4 v1, 0x0

    .line 2281
    .local v1, "flags":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "opt":Ljava/lang/String;
    const/4 v4, 0x1

    if-eqz v2, :cond_6

    .line 2282
    const-string v2, "--profileOf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2283
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 2284
    :cond_0
    const-string v2, "--managed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2285
    or-int/lit8 v1, v1, 0x20

    goto :goto_0

    .line 2286
    :cond_1
    const-string v2, "--restricted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2287
    or-int/lit8 v1, v1, 0x8

    goto :goto_0

    .line 2288
    :cond_2
    const-string v2, "--ephemeral"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2289
    or-int/lit16 v1, v1, 0x100

    goto :goto_0

    .line 2290
    :cond_3
    const-string v2, "--guest"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2291
    or-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 2292
    :cond_4
    const-string v2, "--demo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2293
    or-int/lit16 v1, v1, 0x200

    goto :goto_0

    .line 2295
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: unknown option "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2296
    return v4

    .line 2299
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 2300
    .local v2, "arg":Ljava/lang/String;
    if-nez v2, :cond_7

    .line 2301
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    const-string v6, "Error: no user name specified."

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2302
    return v4

    .line 2304
    :cond_7
    move-object v5, v2

    .line 2306
    .local v5, "name":Ljava/lang/String;
    nop

    .line 2307
    const-string/jumbo v6, "user"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 2306
    invoke-static {v6}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v6

    .line 2308
    .local v6, "um":Landroid/os/IUserManager;
    nop

    .line 2309
    const-string v7, "account"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    .line 2308
    invoke-static {v7}, Landroid/accounts/IAccountManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManager;

    move-result-object v7

    .line 2310
    .local v7, "accm":Landroid/accounts/IAccountManager;
    and-int/lit8 v8, v1, 0x8

    const/4 v9, 0x0

    if-eqz v8, :cond_a

    .line 2312
    if-ltz v0, :cond_8

    move v8, v0

    goto :goto_1

    :cond_8
    move v8, v9

    .line 2313
    .local v8, "parentUserId":I
    :goto_1
    invoke-interface {v6, v5, v8}, Landroid/os/IUserManager;->createRestrictedProfile(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v10

    .line 2314
    .local v10, "info":Landroid/content/pm/UserInfo;
    nop

    .line 2315
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v11

    if-nez v11, :cond_9

    const-string/jumbo v11, "root"

    goto :goto_2

    :cond_9
    const-string v11, "com.android.shell"

    .line 2314
    :goto_2
    invoke-interface {v7, v8, v0, v11}, Landroid/accounts/IAccountManager;->addSharedAccountsFromParentUser(IILjava/lang/String;)V

    .line 2316
    .end local v8    # "parentUserId":I
    goto :goto_3

    .end local v10    # "info":Landroid/content/pm/UserInfo;
    :cond_a
    if-gez v0, :cond_b

    .line 2317
    invoke-interface {v6, v5, v1}, Landroid/os/IUserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v10

    .restart local v10    # "info":Landroid/content/pm/UserInfo;
    goto :goto_3

    .line 2319
    .end local v10    # "info":Landroid/content/pm/UserInfo;
    :cond_b
    const/4 v8, 0x0

    invoke-interface {v6, v5, v1, v0, v8}, Landroid/os/IUserManager;->createProfileForUser(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v10

    .line 2322
    .restart local v10    # "info":Landroid/content/pm/UserInfo;
    :goto_3
    if-eqz v10, :cond_c

    .line 2323
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Success: created user id "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v10, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2324
    return v9

    .line 2326
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v8

    const-string v9, "Error: couldn\'t create User."

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2327
    return v4
.end method

.method public runForceDexOpt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1521
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->forceDexOpt(Ljava/lang/String;)V

    .line 1522
    const/4 v0, 0x0

    return v0
.end method

.method public runGetMaxRunningUsers()I
    .locals 4

    .line 2381
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 2382
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 2383
    .local v0, "activityManagerInternal":Landroid/app/ActivityManagerInternal;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Maximum supported running users: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2384
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getMaxRunningUsers()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2383
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2385
    const/4 v1, 0x0

    return v1
.end method

.method public runGetMaxUsers()I
    .locals 3

    .line 2375
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum supported users: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2376
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2375
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2377
    const/4 v0, 0x0

    return v0
.end method

.method public runMovePackage()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1285
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 1286
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1287
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: package name not specified"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1288
    return v1

    .line 1290
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 1291
    .local v2, "volumeUuid":Ljava/lang/String;
    const-string v3, "internal"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1292
    const/4 v2, 0x0

    .line 1295
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v0, v2}, Landroid/content/pm/IPackageManager;->movePackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1297
    .local v3, "moveId":I
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, v3}, Landroid/content/pm/IPackageManager;->getMoveStatus(I)I

    move-result v4

    .line 1298
    .local v4, "status":I
    :goto_0
    invoke-static {v4}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1299
    const-wide/16 v5, 0x3e8

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    .line 1300
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v5, v3}, Landroid/content/pm/IPackageManager;->getMoveStatus(I)I

    move-result v4

    goto :goto_0

    .line 1303
    :cond_2
    const/16 v5, -0x64

    if-ne v4, v5, :cond_3

    .line 1304
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v5, "Success"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1305
    const/4 v1, 0x0

    return v1

    .line 1307
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1308
    return v1
.end method

.method public runMovePrimaryStorage()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1313
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 1314
    .local v0, "volumeUuid":Ljava/lang/String;
    const-string v1, "internal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1315
    const/4 v0, 0x0

    .line 1318
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, v0}, Landroid/content/pm/IPackageManager;->movePrimaryStorage(Ljava/lang/String;)I

    move-result v1

    .line 1320
    .local v1, "moveId":I
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, v1}, Landroid/content/pm/IPackageManager;->getMoveStatus(I)I

    move-result v2

    .line 1321
    .local v2, "status":I
    :goto_0
    invoke-static {v2}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1322
    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 1323
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v1}, Landroid/content/pm/IPackageManager;->getMoveStatus(I)I

    move-result v2

    goto :goto_0

    .line 1326
    :cond_1
    const/16 v3, -0x64

    if-ne v2, v3, :cond_2

    .line 1327
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Success"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1328
    const/4 v3, 0x0

    return v3

    .line 1330
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1331
    const/4 v3, 0x1

    return v3
.end method

.method public runRemoveUser()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2333
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2334
    .local v0, "arg":Ljava/lang/String;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2335
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: no user id specified."

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2336
    return v1

    .line 2338
    :cond_0
    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    .line 2339
    .local v2, "userId":I
    nop

    .line 2340
    const-string/jumbo v3, "user"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 2339
    invoke-static {v3}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v3

    .line 2341
    .local v3, "um":Landroid/os/IUserManager;
    invoke-interface {v3, v2}, Landroid/os/IUserManager;->removeUser(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2342
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v4, "Success: removed user"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2343
    const/4 v1, 0x0

    return v1

    .line 2345
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: couldn\'t remove user id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2346
    return v1
.end method

.method public runSetUserRestriction()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2351
    const/4 v0, 0x0

    .line 2352
    .local v0, "userId":I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    .line 2353
    .local v1, "opt":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2354
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 2357
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 2358
    .local v2, "restriction":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 2360
    .local v3, "arg":Ljava/lang/String;
    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2361
    const/4 v4, 0x1

    .local v4, "value":Z
    goto :goto_0

    .line 2362
    .end local v4    # "value":Z
    :cond_1
    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2363
    const/4 v4, 0x0

    .line 2368
    .restart local v4    # "value":Z
    :goto_0
    nop

    .line 2369
    const-string/jumbo v5, "user"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 2368
    invoke-static {v5}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v5

    .line 2370
    .local v5, "um":Landroid/os/IUserManager;
    invoke-interface {v5, v2, v4, v0}, Landroid/os/IUserManager;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 2371
    const/4 v6, 0x0

    return v6

    .line 2365
    .end local v4    # "value":Z
    .end local v5    # "um":Landroid/os/IUserManager;
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Error: valid value not specified"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2366
    const/4 v4, 0x1

    return v4
.end method
