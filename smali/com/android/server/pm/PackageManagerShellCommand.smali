.class Lcom/android/server/pm/PackageManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "PackageManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;,
        Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;,
        Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;,
        Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;,
        Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;
    }
.end annotation


# static fields
.field private static final ART_PROFILE_SNAPSHOT_DEBUG_LOCATION:Ljava/lang/String; = "/data/misc/profman/"

.field private static final DEFAULT_WAIT_MS:I = 0xea60

.field private static final STDIN_PATH:Ljava/lang/String; = "-"

.field private static final TAG:Ljava/lang/String; = "PackageManagerShellCommand"


# instance fields
.field mBrief:Z

.field mComponents:Z

.field final mInterface:Landroid/content/pm/IPackageManager;

.field final mPermissionManager:Landroid/permission/IPermissionManager;

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
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/permission/IPermissionManager;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "permissionManager"    # Landroid/permission/IPermissionManager;

    .line 156
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 148
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mResourceCache:Ljava/util/WeakHashMap;

    .line 157
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 158
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mPermissionManager:Landroid/permission/IPermissionManager;

    .line 159
    return-void
.end method

.method private static checkAbiArgument(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "abi"    # Ljava/lang/String;

    .line 3080
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3084
    const-string v0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3085
    return-object p0

    .line 3088
    :cond_0
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 3089
    .local v0, "supportedAbis":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 3090
    .local v3, "supportedAbi":Ljava/lang/String;
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3091
    return-object p0

    .line 3089
    .end local v3    # "supportedAbi":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3095
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

    .line 3081
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

    .line 567
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-interface {v0, p1, v1, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 568
    .local v0, "info":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_1

    .line 569
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 570
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v2, "package:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 571
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 572
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 573
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length v5, v3

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v3, v6

    .line 574
    .local v7, "splitSourceDir":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 575
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 573
    .end local v7    # "splitSourceDir":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 578
    :cond_0
    return v4

    .line 580
    .end local v1    # "pw":Ljava/io/PrintWriter;
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

    .line 3394
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 3395
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 3397
    .local v1, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_0
    new-instance v2, Landroid/content/pm/PackageInstaller$Session;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 3398
    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V

    move-object v1, v2

    .line 3399
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$Session;->abandon()V

    .line 3400
    if-eqz p2, :cond_0

    .line 3401
    const-string v2, "Success"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3403
    :cond_0
    const/4 v2, 0x0

    .line 3405
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3403
    return v2

    .line 3405
    :catchall_0
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3406
    throw v2
.end method

.method private doAddFiles(ILjava/util/ArrayList;JZ)I
    .locals 14
    .param p1, "sessionId"    # I
    .param p3, "sessionSizeBytes"    # J
    .param p5, "isApex"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;JZ)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3119
    .local p2, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v1, p0

    const/4 v2, 0x0

    .line 3121
    .local v2, "session":Landroid/content/pm/PackageInstaller$Session;
    const/4 v3, 0x1

    :try_start_0
    new-instance v0, Landroid/content/pm/PackageInstaller$Session;

    iget-object v4, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 3122
    invoke-interface {v4}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v5, p1

    :try_start_1
    invoke-interface {v4, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V

    move-object v2, v0

    .line 3125
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_4

    const-string v0, "-"
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v13, p2

    :try_start_2
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3133
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3134
    .local v6, "arg":Ljava/lang/String;
    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 3136
    .local v7, "delimLocation":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 3138
    invoke-direct {p0, v6, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->processArgForStdin(Ljava/lang/String;Landroid/content/pm/PackageInstaller$Session;)I

    move-result v8
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v8, :cond_2

    .line 3139
    nop

    .line 3152
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3139
    return v3

    .line 3143
    :cond_1
    :try_start_3
    invoke-direct {p0, v6, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->processArgForLocalFile(Ljava/lang/String;Landroid/content/pm/PackageInstaller$Session;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 3145
    .end local v6    # "arg":Ljava/lang/String;
    .end local v7    # "delimLocation":I
    :cond_2
    goto :goto_0

    .line 3146
    :cond_3
    nop

    .line 3152
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3146
    return v4

    .line 3125
    :cond_4
    move-object/from16 v13, p2

    .line 3126
    :goto_1
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "base."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_5

    const-string v6, "apex"

    goto :goto_2

    :cond_5
    const-string v6, "apk"

    :goto_2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3127
    .local v8, "name":Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->forStdIn(Ljava/lang/String;)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    move-result-object v0

    .line 3128
    .local v0, "metadata":Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
    const/4 v7, 0x0

    .line 3129
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->toByteArray()[B

    move-result-object v11

    const/4 v12, 0x0

    .line 3128
    move-object v6, v2

    move-wide/from16 v9, p3

    invoke-virtual/range {v6 .. v12}, Landroid/content/pm/PackageInstaller$Session;->addFile(ILjava/lang/String;J[B[B)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 3130
    nop

    .line 3152
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3130
    return v4

    .line 3147
    .end local v0    # "metadata":Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
    .end local v8    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_5

    .line 3152
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 3147
    :catch_1
    move-exception v0

    goto :goto_4

    .line 3152
    :catchall_1
    move-exception v0

    move v5, p1

    :goto_3
    move-object/from16 v13, p2

    goto :goto_6

    .line 3147
    :catch_2
    move-exception v0

    move v5, p1

    :goto_4
    move-object/from16 v13, p2

    .line 3148
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :goto_5
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to add file(s), reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3149
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v6, "Failure [failed to add file(s)]"

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 3150
    nop

    .line 3152
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3150
    return v3

    .line 3152
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_2
    move-exception v0

    :goto_6
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3153
    throw v0
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

    .line 3359
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 3360
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 3362
    .local v1, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_0
    new-instance v2, Landroid/content/pm/PackageInstaller$Session;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 3363
    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V

    move-object v1, v2

    .line 3364
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

    .line 3368
    :try_start_2
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$Session;->getNames()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/dex/DexMetadataHelper;->validateDexPaths([Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3372
    goto :goto_0

    .line 3369
    :catch_0
    move-exception v2

    .line 3370
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Warning [Could not validate the dex paths: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3371
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3370
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3374
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    new-instance v2, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$1;)V

    .line 3375
    .local v2, "receiver":Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V

    .line 3376
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v4

    .line 3377
    .local v4, "result":Landroid/content/Intent;
    const-string v5, "android.content.pm.extra.STATUS"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 3379
    .local v5, "status":I
    if-nez v5, :cond_1

    .line 3380
    if-eqz p2, :cond_2

    .line 3381
    const-string v3, "Success"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 3384
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "android.content.pm.extra.STATUS_MESSAGE"

    .line 3385
    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3384
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3387
    :cond_2
    :goto_1
    nop

    .line 3389
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3387
    return v5

    .line 3389
    .end local v2    # "receiver":Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
    .end local v4    # "result":Landroid/content/Intent;
    .end local v5    # "status":I
    :catchall_0
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3390
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

    .line 3107
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 3108
    iget v0, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3110
    :cond_0
    const/4 v0, 0x0

    .line 3111
    const-string v1, "doCreateSession"

    invoke-direct {p0, p3, v0, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v0

    .line 3112
    .local v0, "translatedUserId":I
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v1

    .line 3113
    invoke-interface {v1, p1, p2, v0}, Landroid/content/pm/IPackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result v1

    .line 3114
    .local v1, "sessionId":I
    return v1
.end method

.method private doInstallAddSession(I[IZ)I
    .locals 4
    .param p1, "parentId"    # I
    .param p2, "sessionIds"    # [I
    .param p3, "logSuccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3311
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 3312
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 3314
    .local v1, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_0
    new-instance v2, Landroid/content/pm/PackageInstaller$Session;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 3315
    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V

    move-object v1, v2

    .line 3316
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$Session;->isMultiPackage()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3317
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: parent session ID is not a multi-package session"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3319
    nop

    .line 3329
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3319
    const/4 v2, 0x1

    return v2

    .line 3321
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_1
    array-length v3, p2

    if-ge v2, v3, :cond_1

    .line 3322
    aget v3, p2, v2

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageInstaller$Session;->addChildSessionId(I)V

    .line 3321
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3324
    .end local v2    # "i":I
    :cond_1
    if-eqz p3, :cond_2

    .line 3325
    const-string v2, "Success"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3327
    :cond_2
    const/4 v2, 0x0

    .line 3329
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3327
    return v2

    .line 3329
    :catchall_0
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3330
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

    .line 3412
    .local p1, "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 3413
    .local v2, "pw":Ljava/io/PrintWriter;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3414
    .local v3, "groupCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_13

    .line 3415
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3416
    .local v5, "groupName":Ljava/lang/String;
    const-string v6, ""

    .line 3417
    .local v6, "prefix":Ljava/lang/String;
    const-string v7, "  description:"

    const-string v8, "  label:"

    const-string v9, "  package:"

    const/4 v10, 0x0

    const-string v11, "+ "

    const-string v12, ""

    if-eqz p2, :cond_7

    .line 3418
    if-lez v4, :cond_0

    .line 3419
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3421
    :cond_0
    if-eqz v5, :cond_5

    .line 3422
    iget-object v13, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 3423
    invoke-interface {v13, v5, v10}, Landroid/content/pm/IPackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v13

    .line 3424
    .local v13, "pgi":Landroid/content/pm/PermissionGroupInfo;
    if-eqz p4, :cond_2

    .line 3425
    invoke-direct {v0, v13}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v14

    .line 3426
    .local v14, "res":Landroid/content/res/Resources;
    const-string v15, ": "

    if-eqz v14, :cond_1

    .line 3427
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

    .line 3429
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

    .line 3432
    .end local v14    # "res":Landroid/content/res/Resources;
    :goto_1
    goto/16 :goto_3

    .line 3433
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

    .line 3434
    if-eqz p3, :cond_4

    .line 3435
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v13, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3436
    invoke-direct {v0, v13}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v3

    .line 3437
    .local v3, "res":Landroid/content/res/Resources;
    if-eqz v3, :cond_4

    .line 3438
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v13, Landroid/content/pm/PermissionGroupInfo;->labelRes:I

    iget-object v14, v13, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 3439
    invoke-direct {v0, v13, v10, v14}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3438
    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3440
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v13, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    iget-object v14, v13, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    .line 3441
    invoke-direct {v0, v13, v10, v14}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3440
    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3446
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v13    # "pgi":Landroid/content/pm/PermissionGroupInfo;
    :cond_4
    :goto_3
    goto :goto_5

    .line 3447
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

    .line 3449
    :goto_5
    const-string v6, "  "

    .end local v18    # "prefix":Ljava/lang/String;
    .restart local v6    # "prefix":Ljava/lang/String;
    goto :goto_6

    .line 3417
    .end local v17    # "groupCount":I
    .restart local v3    # "groupCount":I
    :cond_7
    move/from16 v17, v3

    move-object/from16 v18, v6

    .line 3451
    .end local v3    # "groupCount":I
    .restart local v17    # "groupCount":I
    :goto_6
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mPermissionManager:Landroid/permission/IPermissionManager;

    .line 3452
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v13, 0x0

    invoke-interface {v3, v10, v13}, Landroid/permission/IPermissionManager;->queryPermissionsByGroup(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    .line 3453
    .local v3, "ps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    .line 3454
    .local v10, "count":I
    const/4 v13, 0x1

    .line 3455
    .local v13, "first":Z
    const/4 v14, 0x0

    .local v14, "p":I
    :goto_7
    if-ge v14, v10, :cond_11

    .line 3456
    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/PermissionInfo;

    .line 3457
    .local v15, "pi":Landroid/content/pm/PermissionInfo;
    if-eqz p2, :cond_8

    if-nez v5, :cond_8

    iget-object v1, v15, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 3458
    move-object/from16 v16, v3

    move-object/from16 v20, v5

    goto/16 :goto_c

    .line 3460
    :cond_8
    iget v1, v15, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v1, v1, 0xf

    .line 3461
    .local v1, "base":I
    move-object/from16 v16, v3

    move/from16 v3, p5

    .end local v3    # "ps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    .local v16, "ps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    if-lt v1, v3, :cond_10

    move/from16 v3, p6

    if-le v1, v3, :cond_9

    .line 3463
    move-object/from16 v20, v5

    goto/16 :goto_c

    .line 3465
    :cond_9
    if-eqz p4, :cond_c

    .line 3466
    if-eqz v13, :cond_a

    .line 3467
    const/4 v13, 0x0

    move/from16 v18, v1

    goto :goto_8

    .line 3469
    :cond_a
    move/from16 v18, v1

    .end local v1    # "base":I
    .local v18, "base":I
    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3471
    :goto_8
    invoke-direct {v0, v15}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v1

    .line 3472
    .local v1, "res":Landroid/content/res/Resources;
    if-eqz v1, :cond_b

    .line 3473
    move-object/from16 v19, v1

    .end local v1    # "res":Landroid/content/res/Resources;
    .local v19, "res":Landroid/content/res/Resources;
    iget v1, v15, Landroid/content/pm/PermissionInfo;->labelRes:I

    iget-object v3, v15, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-direct {v0, v15, v1, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_9

    .line 3476
    .end local v19    # "res":Landroid/content/res/Resources;
    .restart local v1    # "res":Landroid/content/res/Resources;
    :cond_b
    move-object/from16 v19, v1

    .end local v1    # "res":Landroid/content/res/Resources;
    .restart local v19    # "res":Landroid/content/res/Resources;
    iget-object v1, v15, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3478
    .end local v19    # "res":Landroid/content/res/Resources;
    :goto_9
    move-object/from16 v20, v5

    goto/16 :goto_c

    .line 3479
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

    .line 3481
    if-eqz p3, :cond_f

    .line 3482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3483
    invoke-direct {v0, v15}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v1

    .line 3484
    .local v1, "res":Landroid/content/res/Resources;
    if-eqz v1, :cond_e

    .line 3485
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

    .line 3486
    invoke-direct {v0, v15, v1, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3485
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v15, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    iget-object v5, v15, Landroid/content/pm/PermissionInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    .line 3489
    invoke-direct {v0, v15, v3, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3488
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b

    .line 3484
    .end local v19    # "res":Landroid/content/res/Resources;
    .end local v20    # "groupName":Ljava/lang/String;
    .restart local v1    # "res":Landroid/content/res/Resources;
    .restart local v5    # "groupName":Ljava/lang/String;
    :cond_e
    move-object/from16 v19, v1

    move-object/from16 v20, v5

    .line 3492
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

    .line 3493
    invoke-static {v3}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3492
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c

    .line 3481
    .end local v19    # "res":Landroid/content/res/Resources;
    .end local v20    # "groupName":Ljava/lang/String;
    .restart local v5    # "groupName":Ljava/lang/String;
    :cond_f
    move-object/from16 v20, v5

    .end local v5    # "groupName":Ljava/lang/String;
    .restart local v20    # "groupName":Ljava/lang/String;
    goto :goto_c

    .line 3461
    .end local v18    # "base":I
    .end local v20    # "groupName":Ljava/lang/String;
    .local v1, "base":I
    .restart local v5    # "groupName":Ljava/lang/String;
    :cond_10
    move/from16 v18, v1

    move-object/from16 v20, v5

    .line 3455
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

    .line 3498
    .end local v3    # "ps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    .end local v5    # "groupName":Ljava/lang/String;
    .end local v14    # "p":I
    .restart local v16    # "ps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    .restart local v20    # "groupName":Ljava/lang/String;
    if-eqz p4, :cond_12

    .line 3499
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3414
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

    .line 3502
    .end local v4    # "i":I
    .end local v17    # "groupCount":I
    .local v3, "groupCount":I
    :cond_13
    return-void
.end method

.method private doRemoveSplits(ILjava/util/Collection;Z)I
    .locals 5
    .param p1, "sessionId"    # I
    .param p3, "logSuccess"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3335
    .local p2, "splitNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 3336
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 3338
    .local v1, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_0
    new-instance v2, Landroid/content/pm/PackageInstaller$Session;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 3339
    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V

    move-object v1, v2

    .line 3340
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3341
    .local v3, "splitName":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageInstaller$Session;->removeSplit(Ljava/lang/String;)V

    .line 3342
    .end local v3    # "splitName":Ljava/lang/String;
    goto :goto_0

    .line 3344
    :cond_0
    if-eqz p3, :cond_1

    .line 3345
    const-string v2, "Success"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3347
    :cond_1
    const/4 v2, 0x0

    .line 3352
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3347
    return v2

    .line 3352
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 3348
    :catch_0
    move-exception v2

    .line 3349
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

    .line 3350
    const/4 v3, 0x1

    .line 3352
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3350
    return v3

    .line 3352
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3353
    throw v2
.end method

.method private doRunInstall(Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;)I
    .locals 18
    .param p1, "params"    # Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1266
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v9

    .line 1268
    .local v9, "pw":Ljava/io/PrintWriter;
    iget-object v0, v8, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v0, :cond_0

    move v0, v10

    goto :goto_0

    :cond_0
    move v0, v11

    :goto_0
    move v12, v0

    .line 1269
    .local v12, "isStreaming":Z
    iget-object v0, v8, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    move v0, v10

    goto :goto_1

    :cond_1
    move v0, v11

    :goto_1
    move v13, v0

    .line 1272
    .local v13, "isApex":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getRemainingArgs()Ljava/util/ArrayList;

    move-result-object v14

    .line 1274
    .local v14, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-string v1, "-"

    if-nez v0, :cond_3

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v11

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v10

    :goto_3
    move v15, v0

    .line 1275
    .local v15, "fromStdIn":Z
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v10, :cond_4

    move v0, v10

    goto :goto_4

    :cond_4
    move v0, v11

    :goto_4
    move/from16 v16, v0

    .line 1277
    .local v16, "hasSplits":Z
    if-eqz v15, :cond_5

    iget-object v0, v8, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_5

    .line 1278
    const-string v0, "Error: must either specify a package size or an APK file"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1279
    return v10

    .line 1282
    :cond_5
    if-eqz v13, :cond_6

    if-eqz v16, :cond_6

    .line 1283
    const-string v0, "Error: can\'t specify SPLIT(s) for APEX"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1284
    return v10

    .line 1287
    :cond_6
    if-nez v12, :cond_9

    .line 1288
    if-eqz v15, :cond_7

    if-eqz v16, :cond_7

    .line 1289
    const-string v0, "Error: can\'t specify SPLIT(s) along with STDIN"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1290
    return v10

    .line 1293
    :cond_7
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1294
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1296
    :cond_8
    invoke-direct {v7, v8, v14}, Lcom/android/server/pm/PackageManagerShellCommand;->setParamsSize(Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;Ljava/util/List;)V

    .line 1300
    :cond_9
    :goto_5
    iget-object v0, v8, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v8, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    iget v2, v8, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->userId:I

    invoke-direct {v7, v0, v1, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->doCreateSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result v6

    .line 1302
    .local v6, "sessionId":I
    const/16 v17, 0x1

    .line 1304
    .local v17, "abandonSession":Z
    if-eqz v12, :cond_b

    .line 1305
    :try_start_0
    iget-object v0, v8, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v4, v0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v1, p0

    move v2, v6

    move-object v3, v14

    move v10, v6

    .end local v6    # "sessionId":I
    .local v10, "sessionId":I
    move v6, v13

    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerShellCommand;->doAddFiles(ILjava/util/ArrayList;JZ)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_d

    .line 1307
    nop

    .line 1327
    if-eqz v17, :cond_a

    .line 1329
    :try_start_2
    invoke-direct {v7, v10, v11}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1331
    goto :goto_6

    .line 1330
    :catch_0
    move-exception v0

    .line 1307
    :cond_a
    :goto_6
    const/4 v1, 0x1

    return v1

    .line 1327
    .end local v10    # "sessionId":I
    .restart local v6    # "sessionId":I
    :catchall_0
    move-exception v0

    move v10, v6

    move-object v1, v0

    .end local v6    # "sessionId":I
    .restart local v10    # "sessionId":I
    goto :goto_c

    .line 1310
    .end local v10    # "sessionId":I
    .restart local v6    # "sessionId":I
    :cond_b
    move v10, v6

    .end local v6    # "sessionId":I
    .restart local v10    # "sessionId":I
    :try_start_3
    iget-object v0, v8, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v4, v0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    move-object/from16 v1, p0

    move v2, v10

    move-object v3, v14

    move v6, v13

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerShellCommand;->doWriteSplits(ILjava/util/ArrayList;JZ)I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_d

    .line 1312
    nop

    .line 1327
    if-eqz v17, :cond_c

    .line 1329
    :try_start_4
    invoke-direct {v7, v10, v11}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1331
    goto :goto_7

    .line 1330
    :catch_1
    move-exception v0

    .line 1312
    :cond_c
    :goto_7
    const/4 v1, 0x1

    return v1

    .line 1315
    :cond_d
    :try_start_5
    invoke-direct {v7, v10, v11}, Lcom/android/server/pm/PackageManagerShellCommand;->doCommitSession(IZ)I

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_f

    .line 1317
    nop

    .line 1327
    if-eqz v17, :cond_e

    .line 1329
    :try_start_6
    invoke-direct {v7, v10, v11}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 1331
    goto :goto_8

    .line 1330
    :catch_2
    move-exception v0

    .line 1317
    :cond_e
    :goto_8
    const/4 v1, 0x1

    return v1

    .line 1319
    :cond_f
    const/16 v17, 0x0

    .line 1321
    :try_start_7
    iget-object v0, v8, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v0, :cond_12

    iget-boolean v0, v8, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->mWaitForStagedSessionReady:Z

    if-nez v0, :cond_10

    goto :goto_a

    .line 1325
    :cond_10
    iget-wide v0, v8, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->timeoutMs:J

    invoke-direct {v7, v10, v0, v1, v9}, Lcom/android/server/pm/PackageManagerShellCommand;->doWaitForStagedSessionRead(IJLjava/io/PrintWriter;)I

    move-result v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1327
    if-eqz v17, :cond_11

    .line 1329
    :try_start_8
    invoke-direct {v7, v10, v11}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 1331
    goto :goto_9

    .line 1330
    :catch_3
    move-exception v0

    .line 1325
    :cond_11
    :goto_9
    return v1

    .line 1322
    :cond_12
    :goto_a
    :try_start_9
    const-string v0, "Success"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1323
    nop

    .line 1327
    if-eqz v17, :cond_13

    .line 1329
    :try_start_a
    invoke-direct {v7, v10, v11}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 1331
    goto :goto_b

    .line 1330
    :catch_4
    move-exception v0

    .line 1323
    :cond_13
    :goto_b
    return v11

    .line 1327
    :catchall_1
    move-exception v0

    move-object v1, v0

    :goto_c
    if-eqz v17, :cond_14

    .line 1329
    :try_start_b
    invoke-direct {v7, v10, v11}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 1331
    goto :goto_d

    .line 1330
    :catch_5
    move-exception v0

    .line 1333
    :cond_14
    :goto_d
    throw v1
.end method

.method private doWaitForStagedSessionRead(IJLjava/io/PrintWriter;)I
    .locals 11
    .param p1, "sessionId"    # I
    .param p2, "timeoutMs"    # J
    .param p4, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1338
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 1339
    const-wide/32 p2, 0xea60

    .line 1341
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v0

    .line 1342
    invoke-interface {v0, p1}, Landroid/content/pm/IPackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    .line 1343
    .local v0, "si":Landroid/content/pm/PackageInstaller$SessionInfo;
    const-string v1, "]"

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 1344
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure [Unknown session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1345
    return v2

    .line 1347
    :cond_1
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure [Session "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is not a staged session]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1349
    return v2

    .line 1351
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1352
    .local v3, "currentTime":J
    add-long v5, v3, p2

    .line 1357
    .local v5, "endTime":J
    :goto_0
    cmp-long v7, v3, v5

    if-gez v7, :cond_4

    .line 1358
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionReady()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionFailed()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1359
    goto :goto_1

    .line 1361
    :cond_3
    sub-long v7, v5, v3

    const-wide/16 v9, 0x64

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    .line 1362
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1363
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v7}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v7

    invoke-interface {v7, p1}, Landroid/content/pm/IPackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    goto :goto_0

    .line 1365
    :cond_4
    :goto_1
    if-nez v0, :cond_5

    .line 1366
    const-string v1, "Failure [failed to retrieve SessionInfo]"

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1367
    return v2

    .line 1369
    :cond_5
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionReady()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionFailed()Z

    move-result v7

    if-nez v7, :cond_6

    .line 1370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure [timed out after "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " ms]"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1371
    return v2

    .line 1373
    :cond_6
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionReady()Z

    move-result v7

    if-nez v7, :cond_7

    .line 1374
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getStagedSessionErrorCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1375
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getStagedSessionErrorMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1374
    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1376
    return v2

    .line 1378
    :cond_7
    const-string v1, "Success. Reboot device to apply staged session"

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1379
    const/4 v1, 0x0

    return v1
.end method

.method private doWriteSplit(ILjava/lang/String;JLjava/lang/String;Z)I
    .locals 15
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

    .line 3267
    move-object v1, p0

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 3269
    .local v3, "session":Landroid/content/pm/PackageInstaller$Session;
    const/4 v4, 0x1

    :try_start_0
    new-instance v5, Landroid/content/pm/PackageInstaller$Session;

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 3270
    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move/from16 v12, p1

    :try_start_1
    invoke-interface {v0, v12}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 3272
    .end local v3    # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v5, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 3275
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v3, "-"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-wide/16 v6, 0x0

    if-eqz v3, :cond_0

    .line 3276
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getInFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    move-wide/from16 v13, p3

    .local v3, "fd":Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    .line 3277
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    if-eqz v2, :cond_3

    .line 3278
    const-string/jumbo v3, "r"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 3279
    .restart local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    const/4 v8, -0x1

    if-nez v3, :cond_1

    .line 3280
    nop

    .line 3305
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3280
    return v8

    .line 3282
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v9
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 3283
    .end local p3    # "sizeBytes":J
    .local v9, "sizeBytes":J
    cmp-long v11, v9, v6

    if-gez v11, :cond_2

    .line 3284
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to get size of: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3285
    nop

    .line 3305
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3285
    return v8

    .line 3305
    .end local v0    # "pw":Ljava/io/PrintWriter;
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v0

    move-object v3, v5

    move-wide v13, v9

    goto/16 :goto_4

    .line 3301
    :catch_0
    move-exception v0

    move-object v3, v5

    move-wide v13, v9

    goto/16 :goto_3

    .line 3283
    .restart local v0    # "pw":Ljava/io/PrintWriter;
    .restart local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_2
    move-wide v13, v9

    goto :goto_0

    .line 3288
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v9    # "sizeBytes":J
    .restart local p3    # "sizeBytes":J
    :cond_3
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getInFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-wide/from16 v13, p3

    .line 3290
    .end local p3    # "sizeBytes":J
    .restart local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .local v13, "sizeBytes":J
    :goto_0
    cmp-long v6, v13, v6

    if-gtz v6, :cond_4

    .line 3291
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    const-string v7, "Error: must specify a APK size"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3292
    nop

    .line 3305
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3292
    return v4

    .line 3295
    :cond_4
    const-wide/16 v7, 0x0

    move-object/from16 v6, p5

    move-wide v9, v13

    move-object v11, v3

    :try_start_7
    invoke-virtual/range {v5 .. v11}, Landroid/content/pm/PackageInstaller$Session;->write(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V

    .line 3297
    if-eqz p6, :cond_5

    .line 3298
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Success: streamed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 3300
    :cond_5
    const/4 v4, 0x0

    .line 3305
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3300
    return v4

    .line 3305
    .end local v0    # "pw":Ljava/io/PrintWriter;
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    :catchall_1
    move-exception v0

    move-object v3, v5

    goto :goto_4

    .line 3301
    :catch_1
    move-exception v0

    move-object v3, v5

    goto :goto_3

    .line 3305
    .end local v13    # "sizeBytes":J
    .restart local p3    # "sizeBytes":J
    :catchall_2
    move-exception v0

    move-wide/from16 v13, p3

    move-object v3, v5

    goto :goto_4

    .line 3301
    :catch_2
    move-exception v0

    move-wide/from16 v13, p3

    move-object v3, v5

    goto :goto_3

    .line 3305
    .end local v5    # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v3, "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_3
    move-exception v0

    goto :goto_1

    .line 3301
    :catch_3
    move-exception v0

    goto :goto_2

    .line 3305
    :catchall_4
    move-exception v0

    move/from16 v12, p1

    :goto_1
    move-wide/from16 v13, p3

    goto :goto_4

    .line 3301
    :catch_4
    move-exception v0

    move/from16 v12, p1

    :goto_2
    move-wide/from16 v13, p3

    .line 3302
    .end local p3    # "sizeBytes":J
    .local v0, "e":Ljava/io/IOException;
    .restart local v13    # "sizeBytes":J
    :goto_3
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: failed to write; "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 3303
    nop

    .line 3305
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3303
    return v4

    .line 3305
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_5
    move-exception v0

    :goto_4
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3306
    throw v0
.end method

.method private doWriteSplits(ILjava/util/ArrayList;JZ)I
    .locals 12
    .param p1, "sessionId"    # I
    .param p3, "sessionSizeBytes"    # J
    .param p5, "isApex"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;JZ)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3252
    .local p2, "splitPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3253
    .local v0, "multipleSplits":Z
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3254
    .local v4, "splitPath":Ljava/lang/String;
    if-eqz v0, :cond_1

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v10, v5

    goto :goto_3

    .line 3255
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "base."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_2

    const-string v6, "apex"

    goto :goto_2

    :cond_2
    const-string v6, "apk"

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v10, v5

    :goto_3
    nop

    .line 3257
    .local v10, "splitName":Ljava/lang/String;
    const/4 v11, 0x0

    move-object v5, p0

    move v6, p1

    move-object v7, v4

    move-wide v8, p3

    invoke-direct/range {v5 .. v11}, Lcom/android/server/pm/PackageManagerShellCommand;->doWriteSplit(ILjava/lang/String;JLjava/lang/String;Z)I

    move-result v5

    if-eqz v5, :cond_3

    .line 3259
    return v2

    .line 3261
    .end local v4    # "splitPath":Ljava/lang/String;
    .end local v10    # "splitName":Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 3262
    :cond_4
    return v1
.end method

.method private static enabledSettingToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 2141
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 2153
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 2151
    :cond_0
    const-string v0, "disabled-until-used"

    return-object v0

    .line 2149
    :cond_1
    const-string v0, "disabled-user"

    return-object v0

    .line 2147
    :cond_2
    const-string v0, "disabled"

    return-object v0

    .line 2145
    :cond_3
    const-string v0, "enabled"

    return-object v0

    .line 2143
    :cond_4
    const-string v0, "default"

    return-object v0
.end method

.method private getRemainingArgs()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1922
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1924
    .local v0, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "arg":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1925
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1927
    :cond_0
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

    .line 3522
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mResourceCache:Ljava/util/WeakHashMap;

    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    .line 3523
    .local v0, "res":Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    return-object v0

    .line 3525
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const v3, 0x20008200

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 3529
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    new-instance v2, Landroid/content/res/AssetManager;

    invoke-direct {v2}, Landroid/content/res/AssetManager;-><init>()V

    .line 3530
    .local v2, "am":Landroid/content/res/AssetManager;
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 3531
    new-instance v3, Landroid/content/res/Resources;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4, v4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    move-object v0, v3

    .line 3532
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mResourceCache:Ljava/util/WeakHashMap;

    iget-object v4, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3533
    return-object v0
.end method

.method private static isNumber(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 2605
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2608
    nop

    .line 2609
    const/4 v0, 0x1

    return v0

    .line 2606
    :catch_0
    move-exception v0

    .line 2607
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    return v1
.end method

.method private isProductApp(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 2346
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, v0, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 2347
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

    .line 2348
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 2349
    .local v1, "e":Landroid/os/RemoteException;
    return v0
.end method

.method private isSystemExtApp(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 2355
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, v0, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 2356
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSystemExt()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 2357
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 2358
    .local v1, "e":Landroid/os/RemoteException;
    return v0
.end method

.method private isVendorApp(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 2337
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, v0, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 2338
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

    .line 2339
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 2340
    .local v1, "e":Landroid/os/RemoteException;
    return v0
.end method

.method static synthetic lambda$runSetHomeActivity$1(Ljava/util/concurrent/CompletableFuture;Landroid/os/Bundle;)V
    .locals 1
    .param p0, "future"    # Ljava/util/concurrent/CompletableFuture;
    .param p1, "res"    # Landroid/os/Bundle;

    .line 2950
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

    .line 2429
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 2436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown link state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2434
    :cond_0
    const-string v0, "always ask"

    return-object v0

    .line 2433
    :cond_1
    const-string/jumbo v0, "never"

    return-object v0

    .line 2432
    :cond_2
    const-string v0, "always"

    return-object v0

    .line 2431
    :cond_3
    const-string v0, "ask"

    return-object v0

    .line 2430
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

    .line 3506
    if-eqz p3, :cond_0

    .line 3507
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3509
    :cond_0
    if-eqz p2, :cond_1

    .line 3510
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v0

    .line 3511
    .local v0, "r":Landroid/content/res/Resources;
    if-eqz v0, :cond_1

    .line 3513
    :try_start_0
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 3514
    :catch_0
    move-exception v1

    .line 3518
    .end local v0    # "r":Landroid/content/res/Resources;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private makeInstallParams()Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    .locals 12

    .line 2764
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 2765
    .local v0, "sessionParams":Landroid/content/pm/PackageInstaller$SessionParams;
    new-instance v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$1;)V

    .line 2769
    .local v2, "params":Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    invoke-static {}, Lcom/android/server/pm/PmInjector;->updateUserId()I

    move-result v4

    iput v4, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->userId:I

    .line 2772
    iput-object v0, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 2774
    iget v4, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v5, 0x400000

    or-int/2addr v4, v5

    iput v4, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2777
    const/4 v4, 0x1

    .line 2778
    .local v4, "replaceExisting":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "opt":Ljava/lang/String;
    const/4 v7, 0x2

    if-eqz v5, :cond_7

    .line 2779
    const/4 v5, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/16 v9, 0x10

    const/4 v10, 0x4

    const/4 v11, 0x0

    sparse-switch v8, :sswitch_data_0

    :cond_0
    goto/16 :goto_1

    :sswitch_0
    const-string v8, "--skip-verification"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v5, 0x20

    goto/16 :goto_1

    :sswitch_1
    const-string v8, "--force-sdk"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v5, 0x18

    goto/16 :goto_1

    :sswitch_2
    const-string v8, "--staged"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v5, 0x1b

    goto/16 :goto_1

    :sswitch_3
    const-string v8, "--restrict-permissions"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v5, 0x7

    goto/16 :goto_1

    :sswitch_4
    const-string v8, "--wait"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v5, 0x1e

    goto/16 :goto_1

    :sswitch_5
    const-string v8, "--user"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v5, 0x14

    goto/16 :goto_1

    :sswitch_6
    const-string v8, "--full"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v5, 0x12

    goto/16 :goto_1

    :sswitch_7
    const-string v8, "--apex"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v5, 0x19

    goto/16 :goto_1

    :sswitch_8
    const-string v8, "--preload"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v5, 0x13

    goto/16 :goto_1

    :sswitch_9
    const-string v8, "--ephemeral"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v5, 0xf

    goto/16 :goto_1

    :sswitch_a
    const-string v8, "--originating-uri"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v5, 0x9

    goto/16 :goto_1

    :sswitch_b
    const-string v8, "--force-queryable"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v5, 0x1c

    goto/16 :goto_1

    :sswitch_c
    const-string v8, "--pkg"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v5, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string v8, "--abi"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v5, 0xe

    goto/16 :goto_1

    :sswitch_e
    const-string v8, "-t"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v5, 0x3

    goto/16 :goto_1

    :sswitch_f
    const-string v8, "-r"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v5, v11

    goto/16 :goto_1

    :sswitch_10
    const-string v8, "-p"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v5, 0xb

    goto/16 :goto_1

    :sswitch_11
    const-string v8, "-i"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v5, v7

    goto/16 :goto_1

    :sswitch_12
    const-string v8, "-g"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v5, 0x6

    goto/16 :goto_1

    :sswitch_13
    const-string v8, "-f"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v5, v10

    goto/16 :goto_1

    :sswitch_14
    const-string v8, "-d"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v5, 0x5

    goto/16 :goto_1

    :sswitch_15
    const-string v8, "-S"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v5, 0xd

    goto/16 :goto_1

    :sswitch_16
    const-string v8, "-R"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v5, v1

    goto/16 :goto_1

    :sswitch_17
    const-string v8, "--multi-package"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v5, 0x1a

    goto :goto_1

    :sswitch_18
    const-string v8, "--enable-rollback"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v5, 0x1d

    goto :goto_1

    :sswitch_19
    const-string v8, "--referrer"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v5, 0xa

    goto :goto_1

    :sswitch_1a
    const-string v8, "--no-wait"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v5, 0x1f

    goto :goto_1

    :sswitch_1b
    const-string v8, "--instant"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v5, v9

    goto :goto_1

    :sswitch_1c
    const-string v8, "--instantapp"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v5, 0x11

    goto :goto_1

    :sswitch_1d
    const-string v8, "--install-location"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v5, 0x15

    goto :goto_1

    :sswitch_1e
    const-string v8, "--dont-kill"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v5, 0x8

    goto :goto_1

    :sswitch_1f
    const-string v8, "--force-uuid"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v5, 0x17

    goto :goto_1

    :sswitch_20
    const-string v8, "--install-reason"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v5, 0x16

    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 2909
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

    .line 2906
    :pswitch_0
    iget v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v7, 0x80000

    or-int/2addr v5, v7

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2907
    goto/16 :goto_2

    .line 2903
    :pswitch_1
    iput-boolean v11, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->mWaitForStagedSessionReady:Z

    .line 2904
    goto/16 :goto_2

    .line 2895
    :pswitch_2
    iput-boolean v1, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->mWaitForStagedSessionReady:Z

    .line 2897
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->timeoutMs:J

    .line 2898
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2900
    goto/16 :goto_2

    .line 2899
    :catch_0
    move-exception v5

    .line 2901
    goto/16 :goto_2

    .line 2882
    :pswitch_3
    iget-object v5, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 2890
    const-string v5, "com.android.shell"

    iput-object v5, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    .line 2892
    :cond_1
    iget v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v7, 0x40000

    or-int/2addr v5, v7

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2893
    goto/16 :goto_2

    .line 2879
    :pswitch_4
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setForceQueryable()V

    .line 2880
    goto/16 :goto_2

    .line 2876
    :pswitch_5
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setStaged()V

    .line 2877
    goto/16 :goto_2

    .line 2873
    :pswitch_6
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setMultiPackage()V

    .line 2874
    goto/16 :goto_2

    .line 2869
    :pswitch_7
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsApex()V

    .line 2870
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setStaged()V

    .line 2871
    goto/16 :goto_2

    .line 2867
    :pswitch_8
    goto/16 :goto_2

    .line 2860
    :pswitch_9
    iget v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v5, v5, 0x200

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2861
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    .line 2862
    iget-object v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    const-string/jumbo v7, "internal"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2863
    iput-object v3, v0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    goto/16 :goto_2

    .line 2857
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    .line 2858
    goto/16 :goto_2

    .line 2854
    :pswitch_b
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 2855
    goto/16 :goto_2

    .line 2851
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->userId:I

    .line 2852
    goto/16 :goto_2

    .line 2848
    :pswitch_d
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsVirtualPreload()V

    .line 2849
    goto/16 :goto_2

    .line 2845
    :pswitch_e
    invoke-virtual {v0, v11}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsInstantApp(Z)V

    .line 2846
    goto/16 :goto_2

    .line 2842
    :pswitch_f
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsInstantApp(Z)V

    .line 2843
    goto/16 :goto_2

    .line 2837
    :pswitch_10
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/pm/PackageManagerShellCommand;->checkAbiArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    .line 2838
    goto/16 :goto_2

    .line 2830
    :pswitch_11
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 2831
    .local v7, "sizeBytes":J
    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-lez v5, :cond_2

    .line 2834
    invoke-virtual {v0, v7, v8}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V

    .line 2835
    goto/16 :goto_2

    .line 2832
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Size must be positive"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2824
    .end local v7    # "sizeBytes":J
    :pswitch_12
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 2825
    iget-object v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    if-eqz v5, :cond_3

    goto/16 :goto_2

    .line 2826
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Missing package name"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2817
    :pswitch_13
    iput v7, v0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    .line 2818
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 2819
    iget-object v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    if-eqz v5, :cond_4

    goto :goto_2

    .line 2820
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Missing inherit package name"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2814
    :pswitch_14
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    .line 2815
    goto :goto_2

    .line 2811
    :pswitch_15
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    .line 2812
    goto :goto_2

    .line 2808
    :pswitch_16
    iget v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v5, v5, 0x1000

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2809
    goto :goto_2

    .line 2804
    :pswitch_17
    iget v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v7, -0x400001

    and-int/2addr v5, v7

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2806
    goto :goto_2

    .line 2801
    :pswitch_18
    iget v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v5, v5, 0x100

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2802
    goto :goto_2

    .line 2798
    :pswitch_19
    iget v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v5, v5, 0x80

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2799
    goto :goto_2

    .line 2795
    :pswitch_1a
    iget v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/2addr v5, v9

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2796
    goto :goto_2

    .line 2792
    :pswitch_1b
    iget v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/2addr v5, v10

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2793
    goto :goto_2

    .line 2786
    :pswitch_1c
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    .line 2787
    iget-object v5, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    if-eqz v5, :cond_5

    goto :goto_2

    .line 2788
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Missing installer package"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2783
    :pswitch_1d
    const/4 v4, 0x0

    .line 2784
    goto :goto_2

    .line 2781
    :pswitch_1e
    nop

    .line 2909
    :cond_6
    :goto_2
    goto/16 :goto_0

    .line 2912
    :cond_7
    if-eqz v4, :cond_8

    .line 2913
    iget v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/2addr v1, v7

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2915
    :cond_8
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ca7efaa -> :sswitch_20
        -0x7449dd03 -> :sswitch_1f
        -0x69f9e586 -> :sswitch_1e
        -0x4e451eb9 -> :sswitch_1d
        -0x43c705c0 -> :sswitch_1c
        -0x38b573bf -> :sswitch_1b
        -0x325a839f -> :sswitch_1a
        -0x2a211e41 -> :sswitch_19
        -0x26fa19b2 -> :sswitch_18
        -0xa293dee -> :sswitch_17
        0x5c5 -> :sswitch_16
        0x5c6 -> :sswitch_15
        0x5d7 -> :sswitch_14
        0x5d9 -> :sswitch_13
        0x5da -> :sswitch_12
        0x5dc -> :sswitch_11
        0x5e3 -> :sswitch_10
        0x5e5 -> :sswitch_f
        0x5e7 -> :sswitch_e
        0x2900ec8 -> :sswitch_d
        0x290482c -> :sswitch_c
        0x4991420 -> :sswitch_b
        0x8d57768 -> :sswitch_a
        0x3eb0e7fd -> :sswitch_9
        0x3fa0d469 -> :sswitch_8
        0x4f71fec2 -> :sswitch_7
        0x4f74582f -> :sswitch_6
        0x4f7b216b -> :sswitch_5
        0x4f7bc715 -> :sswitch_4
        0x59147c93 -> :sswitch_3
        0x59daeac6 -> :sswitch_2
        0x781e9cb8 -> :sswitch_1
        0x79732a09 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_f
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

.method private parseIntentAndUser()Landroid/content/Intent;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 1063
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    .line 1064
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    .line 1065
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    .line 1066
    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommand$4;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageManagerShellCommand$4;-><init>(Lcom/android/server/pm/PackageManagerShellCommand;)V

    invoke-static {p0, v0}, Landroid/content/Intent;->parseCommandArgs(Landroid/os/ShellCommand;Landroid/content/Intent$CommandOptionHandler;)Landroid/content/Intent;

    move-result-object v0

    .line 1085
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1086
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    .line 1085
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    .line 1087
    return-object v0
.end method

.method private printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V
    .locals 3
    .param p1, "pr"    # Landroid/util/PrintWriterPrinter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p4, "brief"    # Z
    .param p5, "components"    # Z

    .line 1092
    if-nez p4, :cond_0

    if-eqz p5, :cond_5

    .line 1094
    :cond_0
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_1

    .line 1095
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "comp":Landroid/content/ComponentName;
    goto :goto_0

    .line 1096
    .end local v0    # "comp":Landroid/content/ComponentName;
    :cond_1
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_2

    .line 1097
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "comp":Landroid/content/ComponentName;
    goto :goto_0

    .line 1098
    .end local v0    # "comp":Landroid/content/ComponentName;
    :cond_2
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v0, :cond_3

    .line 1099
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v2, p3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "comp":Landroid/content/ComponentName;
    goto :goto_0

    .line 1101
    .end local v0    # "comp":Landroid/content/ComponentName;
    :cond_3
    const/4 v0, 0x0

    .line 1103
    .restart local v0    # "comp":Landroid/content/ComponentName;
    :goto_0
    if-eqz v0, :cond_5

    .line 1104
    if-nez p5, :cond_4

    .line 1105
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

    .line 1107
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

    .line 1105
    invoke-virtual {p1, v1}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 1111
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

    .line 1112
    return-void

    .line 1115
    .end local v0    # "comp":Landroid/content/ComponentName;
    :cond_5
    invoke-virtual {p3, p1, p2}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 1116
    return-void
.end method

.method private static printSession(Ljava/io/PrintWriter;Landroid/content/pm/PackageInstaller$SessionInfo;Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "session"    # Landroid/content/pm/PackageInstaller$SessionInfo;
    .param p2, "sessionDump"    # Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;

    .line 1050
    iget-boolean v0, p2, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;->onlySessionId:Z

    if-eqz v0, :cond_0

    .line 1051
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1052
    return-void

    .line 1054
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sessionId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; appPackageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1055
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; isStaged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1056
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; isReady = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1057
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionReady()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; isApplied = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionApplied()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; isFailed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1059
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionFailed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1054
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1060
    return-void
.end method

.method private printSessionList(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/List;Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;)V
    .locals 8
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p3, "sessionDump"    # Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;",
            "Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;",
            ")V"
        }
    .end annotation

    .line 1017
    .local p2, "stagedSessions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    new-instance v0, Landroid/util/SparseArray;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 1018
    .local v0, "sessionById":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 1019
    .local v2, "session":Landroid/content/pm/PackageInstaller$SessionInfo;
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v3

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1020
    .end local v2    # "session":Landroid/content/pm/PackageInstaller$SessionInfo;
    goto :goto_0

    .line 1021
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 1022
    .restart local v2    # "session":Landroid/content/pm/PackageInstaller$SessionInfo;
    iget-boolean v3, p3, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;->onlyReady:Z

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionReady()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1023
    goto :goto_1

    .line 1025
    :cond_1
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getParentSessionId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 1026
    goto :goto_1

    .line 1028
    :cond_2
    invoke-static {p1, v2, p3}, Lcom/android/server/pm/PackageManagerShellCommand;->printSession(Ljava/io/PrintWriter;Landroid/content/pm/PackageInstaller$SessionInfo;Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;)V

    .line 1029
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->isMultiPackage()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-boolean v3, p3, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;->onlyParent:Z

    if-nez v3, :cond_6

    .line 1030
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1031
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getChildSessionIds()[I

    move-result-object v3

    .line 1032
    .local v3, "childIds":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    array-length v5, v3

    if-ge v4, v5, :cond_5

    .line 1033
    aget v5, v3, v4

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 1034
    .local v5, "childSession":Landroid/content/pm/PackageInstaller$SessionInfo;
    if-nez v5, :cond_4

    .line 1035
    iget-boolean v6, p3, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;->onlySessionId:Z

    if-eqz v6, :cond_3

    .line 1036
    aget v6, v3, v4

    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    goto :goto_3

    .line 1038
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sessionId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v3, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "; not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 1041
    :cond_4
    invoke-static {p1, v5, p3}, Lcom/android/server/pm/PackageManagerShellCommand;->printSession(Ljava/io/PrintWriter;Landroid/content/pm/PackageInstaller$SessionInfo;Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;)V

    .line 1032
    .end local v5    # "childSession":Landroid/content/pm/PackageInstaller$SessionInfo;
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1044
    .end local v4    # "i":I
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1046
    .end local v2    # "session":Landroid/content/pm/PackageInstaller$SessionInfo;
    .end local v3    # "childIds":[I
    :cond_6
    goto :goto_1

    .line 1047
    :cond_7
    return-void
.end method

.method private processArgForLocalFile(Ljava/lang/String;Landroid/content/pm/PackageInstaller$Session;)V
    .locals 17
    .param p1, "arg"    # Ljava/lang/String;
    .param p2, "session"    # Landroid/content/pm/PackageInstaller$Session;

    .line 3225
    move-object/from16 v1, p1

    .line 3227
    .local v1, "inPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    .line 3228
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    .line 3229
    .local v10, "name":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v11

    .line 3230
    .local v11, "size":J
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->forLocalFile(Ljava/lang/String;)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    move-result-object v13

    .line 3232
    .local v13, "metadata":Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
    const/4 v3, 0x0

    .line 3234
    .local v3, "v4signatureBytes":[B
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".idsig"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 3235
    .local v14, "v4SignaturePath":Ljava/lang/String;
    const-string/jumbo v0, "r"

    move-object/from16 v15, p0

    invoke-virtual {v15, v14, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v16

    .line 3236
    .local v16, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v16, :cond_0

    .line 3238
    :try_start_0
    invoke-static/range {v16 .. v16}, Landroid/os/incremental/V4Signature;->readFrom(Landroid/os/ParcelFileDescriptor;)Landroid/os/incremental/V4Signature;

    move-result-object v0

    .line 3239
    .local v0, "v4signature":Landroid/os/incremental/V4Signature;
    invoke-virtual {v0}, Landroid/os/incremental/V4Signature;->toByteArray()[B

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v4

    .line 3243
    .end local v0    # "v4signature":Landroid/os/incremental/V4Signature;
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3244
    move-object v0, v3

    goto :goto_2

    .line 3243
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 3240
    :catch_0
    move-exception v0

    .line 3241
    .local v0, "ex":Ljava/io/IOException;
    :try_start_1
    const-string v4, "PackageManagerShellCommand"

    const-string v5, "V4 signature file exists but failed to be parsed."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3243
    nop

    .end local v0    # "ex":Ljava/io/IOException;
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3244
    goto :goto_1

    .line 3243
    :goto_0
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3244
    throw v0

    .line 3247
    :cond_0
    :goto_1
    move-object v0, v3

    .end local v3    # "v4signatureBytes":[B
    .local v0, "v4signatureBytes":[B
    :goto_2
    const/4 v4, 0x0

    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->toByteArray()[B

    move-result-object v8

    move-object/from16 v3, p2

    move-object v5, v10

    move-wide v6, v11

    move-object v9, v0

    invoke-virtual/range {v3 .. v9}, Landroid/content/pm/PackageInstaller$Session;->addFile(ILjava/lang/String;J[B[B)V

    .line 3248
    return-void
.end method

.method private processArgForStdin(Ljava/lang/String;Landroid/content/pm/PackageInstaller$Session;)I
    .locals 13
    .param p1, "arg"    # Ljava/lang/String;
    .param p2, "session"    # Landroid/content/pm/PackageInstaller$Session;

    .line 3157
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3160
    .local v0, "fileDesc":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 3161
    .local v1, "signature":[B
    const/4 v2, 0x0

    .line 3164
    .local v2, "streamingVersion":I
    const/4 v3, 0x1

    :try_start_0
    array-length v4, v0

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 3165
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Must specify file name and size"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3166
    return v3

    .line 3168
    :cond_0
    const/4 v4, 0x0

    aget-object v8, v0, v4

    .line 3169
    .local v8, "name":Ljava/lang/String;
    aget-object v6, v0, v3

    invoke-static {v6}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 3170
    .local v9, "sizeBytes":J
    move-object v6, v8

    .line 3172
    .local v6, "fileId":Ljava/lang/String;
    array-length v7, v0

    if-le v7, v5, :cond_1

    aget-object v7, v0, v5

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 3173
    aget-object v5, v0, v5

    move-object v6, v5

    goto :goto_0

    .line 3175
    :cond_1
    move-object v5, v6

    .end local v6    # "fileId":Ljava/lang/String;
    .local v5, "fileId":Ljava/lang/String;
    :goto_0
    array-length v6, v0

    const/4 v7, 0x3

    if-le v6, v7, :cond_2

    .line 3176
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v6

    aget-object v7, v0, v7

    invoke-virtual {v6, v7}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v6

    move-object v1, v6

    .line 3178
    :cond_2
    array-length v6, v0

    const/4 v7, 0x4

    if-le v6, v7, :cond_4

    .line 3179
    aget-object v6, v0, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I

    move-result v6

    move v2, v6

    .line 3180
    if-ltz v2, :cond_3

    if-le v2, v3, :cond_4

    .line 3181
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported streaming version: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3183
    return v3

    .line 3190
    :cond_4
    nop

    .line 3192
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3193
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Empty file name in: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3194
    return v3

    .line 3199
    :cond_5
    if-eqz v1, :cond_8

    .line 3203
    if-nez v2, :cond_6

    invoke-static {v5}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->forDataOnlyStreaming(Ljava/lang/String;)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    move-result-object v6

    goto :goto_1

    .line 3204
    :cond_6
    invoke-static {v5}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->forStreaming(Ljava/lang/String;)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    move-result-object v6

    :goto_1
    nop

    .line 3206
    .local v6, "metadata":Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
    :try_start_1
    array-length v7, v1

    if-lez v7, :cond_7

    invoke-static {v1}, Landroid/os/incremental/V4Signature;->readFrom([B)Landroid/os/incremental/V4Signature;

    move-result-object v7

    if-nez v7, :cond_7

    .line 3207
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "V4 signature is invalid in: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3208
    return v3

    .line 3214
    :cond_7
    move-object v3, v6

    goto :goto_2

    .line 3210
    :catch_0
    move-exception v4

    .line 3211
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "V4 signature is invalid: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3213
    return v3

    .line 3217
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "metadata":Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
    :cond_8
    invoke-static {v5}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->forStdIn(Ljava/lang/String;)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    move-result-object v6

    move-object v3, v6

    .line 3220
    .local v3, "metadata":Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
    :goto_2
    const/4 v7, 0x0

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->toByteArray()[B

    move-result-object v11

    move-object v6, p2

    move-object v12, v1

    invoke-virtual/range {v6 .. v12}, Landroid/content/pm/PackageInstaller$Session;->addFile(ILjava/lang/String;J[B[B)V

    .line 3221
    return v4

    .line 3186
    .end local v3    # "metadata":Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
    .end local v5    # "fileId":Ljava/lang/String;
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "sizeBytes":J
    :catch_1
    move-exception v4

    .line 3187
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to parse file parameters: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3189
    return v3
.end method

.method private runBypassStagedInstallerCheck()I
    .locals 4

    .line 413
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 415
    .local v0, "pw":Ljava/io/PrintWriter;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v1

    .line 416
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageInstaller;->bypassNextStagedInstallerCheck(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    const/4 v1, 0x0

    return v1

    .line 418
    :catch_0
    move-exception v1

    .line 419
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 419
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 422
    const/4 v2, -0x1

    return v2
.end method

.method private runClear()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2106
    const/4 v0, 0x0

    .line 2107
    .local v0, "userId":I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    .line 2108
    .local v1, "option":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "--user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2109
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 2112
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 2113
    .local v2, "pkg":Ljava/lang/String;
    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 2114
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Error: no package specified"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2115
    return v3

    .line 2118
    :cond_1
    const/16 v4, -0x2710

    .line 2119
    const-string/jumbo v5, "runClear"

    invoke-direct {p0, v0, v4, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v4

    .line 2120
    .local v4, "translatedUserId":I
    new-instance v5, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;

    invoke-direct {v5}, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;-><init>()V

    .line 2121
    .local v5, "obs":Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v2, v7, v5, v4}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;ZLandroid/content/pm/IPackageDataObserver;I)Z

    .line 2122
    monitor-enter v5

    .line 2123
    :goto_0
    :try_start_0
    iget-boolean v6, v5, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;->finished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_2

    .line 2125
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2127
    :goto_1
    goto :goto_0

    .line 2126
    :catch_0
    move-exception v6

    goto :goto_1

    .line 2129
    :cond_2
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2131
    iget-boolean v6, v5, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;->result:Z

    if-eqz v6, :cond_3

    .line 2132
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v6, "Success"

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2133
    return v7

    .line 2135
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    const-string v7, "Failed"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2136
    return v3

    .line 2129
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v5
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

    .line 1638
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 1639
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string v2, "dalvik.vm.usejitprofiles"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1640
    .local v2, "checkProfiles":Z
    const/4 v4, 0x0

    .line 1641
    .local v4, "forceCompilation":Z
    const/4 v5, 0x0

    .line 1642
    .local v5, "allPackages":Z
    const/4 v6, 0x0

    .line 1643
    .local v6, "clearProfileData":Z
    const/4 v7, 0x0

    .line 1644
    .local v7, "compilerFilter":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1645
    .local v8, "compilationReason":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1646
    .local v9, "checkProfilesRaw":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1647
    .local v10, "secondaryDex":Z
    const/4 v11, 0x0

    .line 1648
    .local v11, "split":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1651
    .local v12, "compileLayouts":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v13

    move-object v15, v13

    .local v15, "opt":Ljava/lang/String;
    const/4 v3, 0x1

    if-eqz v13, :cond_1

    .line 1652
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

    const/4 v14, 0x6

    goto :goto_2

    :sswitch_1
    const-string v13, "--compile-layouts"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v14, 0x5

    goto :goto_2

    :sswitch_2
    const-string v13, "--secondary-dex"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v14, 0x8

    goto :goto_2

    :sswitch_3
    const-string v13, "-r"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v14, 0x4

    goto :goto_2

    :sswitch_4
    const-string v13, "-m"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v14, 0x3

    goto :goto_2

    :sswitch_5
    const-string v13, "-f"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v14, 0x2

    goto :goto_2

    :sswitch_6
    const-string v13, "-c"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    move v14, v3

    goto :goto_2

    :sswitch_7
    const-string v13, "-a"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v14, 0x0

    goto :goto_2

    :sswitch_8
    const-string v13, "--split"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v14, 0x9

    goto :goto_2

    :sswitch_9
    const-string v13, "--reset"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v14, 0x7

    goto :goto_2

    :goto_1
    const/4 v14, -0x1

    :goto_2
    packed-switch v14, :pswitch_data_0

    .line 1686
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error: Unknown option: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1687
    return v3

    .line 1683
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 1684
    .end local v11    # "split":Ljava/lang/String;
    .local v3, "split":Ljava/lang/String;
    move-object v11, v3

    goto :goto_3

    .line 1680
    .end local v3    # "split":Ljava/lang/String;
    .restart local v11    # "split":Ljava/lang/String;
    :pswitch_1
    const/4 v3, 0x1

    .line 1681
    .end local v10    # "secondaryDex":Z
    .local v3, "secondaryDex":Z
    move v10, v3

    goto :goto_3

    .line 1675
    .end local v3    # "secondaryDex":Z
    .restart local v10    # "secondaryDex":Z
    :pswitch_2
    const/4 v3, 0x1

    .line 1676
    .end local v4    # "forceCompilation":Z
    .local v3, "forceCompilation":Z
    const/4 v4, 0x1

    .line 1677
    .end local v6    # "clearProfileData":Z
    .local v4, "clearProfileData":Z
    const-string/jumbo v6, "install"

    .line 1678
    .end local v8    # "compilationReason":Ljava/lang/String;
    .local v6, "compilationReason":Ljava/lang/String;
    move-object v8, v6

    move v6, v4

    move v4, v3

    goto :goto_3

    .line 1672
    .end local v3    # "forceCompilation":Z
    .local v4, "forceCompilation":Z
    .local v6, "clearProfileData":Z
    .restart local v8    # "compilationReason":Ljava/lang/String;
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 1673
    .end local v9    # "checkProfilesRaw":Ljava/lang/String;
    .local v3, "checkProfilesRaw":Ljava/lang/String;
    move-object v9, v3

    goto :goto_3

    .line 1669
    .end local v3    # "checkProfilesRaw":Ljava/lang/String;
    .restart local v9    # "checkProfilesRaw":Ljava/lang/String;
    :pswitch_4
    const/4 v3, 0x1

    .line 1670
    .end local v12    # "compileLayouts":Z
    .local v3, "compileLayouts":Z
    move v12, v3

    goto :goto_3

    .line 1666
    .end local v3    # "compileLayouts":Z
    .restart local v12    # "compileLayouts":Z
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 1667
    .end local v8    # "compilationReason":Ljava/lang/String;
    .local v3, "compilationReason":Ljava/lang/String;
    move-object v8, v3

    goto :goto_3

    .line 1663
    .end local v3    # "compilationReason":Ljava/lang/String;
    .restart local v8    # "compilationReason":Ljava/lang/String;
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 1664
    .end local v7    # "compilerFilter":Ljava/lang/String;
    .local v3, "compilerFilter":Ljava/lang/String;
    move-object v7, v3

    goto :goto_3

    .line 1660
    .end local v3    # "compilerFilter":Ljava/lang/String;
    .restart local v7    # "compilerFilter":Ljava/lang/String;
    :pswitch_7
    const/4 v3, 0x1

    .line 1661
    .end local v4    # "forceCompilation":Z
    .local v3, "forceCompilation":Z
    move v4, v3

    goto :goto_3

    .line 1657
    .end local v3    # "forceCompilation":Z
    .restart local v4    # "forceCompilation":Z
    :pswitch_8
    const/4 v3, 0x1

    .line 1658
    .end local v6    # "clearProfileData":Z
    .local v3, "clearProfileData":Z
    move v6, v3

    goto :goto_3

    .line 1654
    .end local v3    # "clearProfileData":Z
    .restart local v6    # "clearProfileData":Z
    :pswitch_9
    const/4 v3, 0x1

    .line 1655
    .end local v5    # "allPackages":Z
    .local v3, "allPackages":Z
    move v5, v3

    .line 1687
    .end local v3    # "allPackages":Z
    .restart local v5    # "allPackages":Z
    :goto_3
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1691
    :cond_1
    if-eqz v9, :cond_4

    .line 1692
    const-string/jumbo v13, "true"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1693
    const/4 v2, 0x1

    goto :goto_4

    .line 1694
    :cond_2
    const-string v13, "false"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1695
    const/4 v2, 0x0

    goto :goto_4

    .line 1697
    :cond_3
    const-string v13, "Invalid value for \"--check-prof\". Expected \"true\" or \"false\"."

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1698
    return v3

    .line 1702
    :cond_4
    :goto_4
    if-eqz v7, :cond_5

    move v13, v3

    goto :goto_5

    :cond_5
    const/4 v13, 0x0

    :goto_5
    move/from16 v20, v13

    .line 1703
    .local v20, "compilerFilterGiven":Z
    if-eqz v8, :cond_6

    move v13, v3

    goto :goto_6

    :cond_6
    const/4 v13, 0x0

    :goto_6
    move/from16 v21, v13

    .line 1705
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

    .line 1710
    :cond_b
    const-string v13, "Must specify exactly one of compilation filter (\"-m\"), compilation reason (\"-r\"), or compile layouts (\"--compile-layouts\")"

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1712
    return v3

    .line 1715
    :cond_c
    if-eqz v5, :cond_d

    if-eqz v11, :cond_d

    .line 1716
    const-string v13, "-a cannot be specified together with --split"

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1717
    return v3

    .line 1720
    :cond_d
    if-eqz v10, :cond_e

    if-eqz v11, :cond_e

    .line 1721
    const-string v13, "--secondary-dex cannot be specified together with --split"

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1722
    return v3

    .line 1725
    :cond_e
    const/4 v13, 0x0

    .line 1726
    .local v13, "targetCompilerFilter":Ljava/lang/String;
    if-eqz v20, :cond_10

    .line 1727
    invoke-static {v7}, Ldalvik/system/DexFile;->isValidCompilerFilter(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_f

    .line 1728
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: \""

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" is not a valid compilation filter."

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1730
    const/4 v3, 0x1

    return v3

    .line 1732
    :cond_f
    move-object v13, v7

    .line 1734
    :cond_10
    if-eqz v21, :cond_14

    .line 1735
    const/4 v3, -0x1

    .line 1736
    .local v3, "reason":I
    const/16 v16, 0x0

    move/from16 v14, v16

    .local v14, "i":I
    :goto_7
    move/from16 v16, v3

    .end local v3    # "reason":I
    .local v16, "reason":I
    sget-object v3, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v14, v3, :cond_12

    .line 1737
    sget-object v3, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    aget-object v3, v3, v14

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1739
    move v3, v14

    .line 1740
    .end local v16    # "reason":I
    .restart local v3    # "reason":I
    goto :goto_8

    .line 1736
    .end local v3    # "reason":I
    .restart local v16    # "reason":I
    :cond_11
    add-int/lit8 v14, v14, 0x1

    move/from16 v3, v16

    goto :goto_7

    :cond_12
    move/from16 v3, v16

    .line 1743
    .end local v14    # "i":I
    .end local v16    # "reason":I
    .restart local v3    # "reason":I
    :goto_8
    const/4 v14, -0x1

    if-ne v3, v14, :cond_13

    .line 1744
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

    .line 1745
    const/4 v7, 0x1

    return v7

    .line 1747
    .end local v22    # "compilerFilter":Ljava/lang/String;
    .restart local v7    # "compilerFilter":Ljava/lang/String;
    :cond_13
    move-object/from16 v22, v7

    .line 1748
    .end local v7    # "compilerFilter":Ljava/lang/String;
    .restart local v22    # "compilerFilter":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getCompilerFilterForReason(I)Ljava/lang/String;

    move-result-object v13

    move-object v3, v13

    goto :goto_9

    .line 1734
    .end local v3    # "reason":I
    .end local v22    # "compilerFilter":Ljava/lang/String;
    .restart local v7    # "compilerFilter":Ljava/lang/String;
    :cond_14
    move-object/from16 v22, v7

    .end local v7    # "compilerFilter":Ljava/lang/String;
    .restart local v22    # "compilerFilter":Ljava/lang/String;
    move-object v3, v13

    .line 1752
    .end local v13    # "targetCompilerFilter":Ljava/lang/String;
    .local v3, "targetCompilerFilter":Ljava/lang/String;
    :goto_9
    const/4 v7, 0x0

    .line 1753
    .local v7, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_15

    .line 1754
    iget-object v13, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v13}, Landroid/content/pm/IPackageManager;->getAllPackages()Ljava/util/List;

    move-result-object v7

    goto :goto_a

    .line 1756
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v13

    .line 1757
    .local v13, "packageName":Ljava/lang/String;
    if-nez v13, :cond_16

    .line 1758
    const-string v14, "Error: package name not specified"

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1759
    const/4 v14, 0x1

    return v14

    .line 1761
    :cond_16
    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 1764
    .end local v13    # "packageName":Ljava/lang/String;
    :goto_a
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v13

    .line 1765
    .local v14, "failedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .line 1766
    .local v13, "index":I
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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

    .line 1767
    .local v8, "packageName":Ljava/lang/String;
    if-eqz v6, :cond_17

    .line 1768
    move/from16 v25, v6

    .end local v6    # "clearProfileData":Z
    .local v25, "clearProfileData":Z
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v6, v8}, Landroid/content/pm/IPackageManager;->clearApplicationProfileData(Ljava/lang/String;)V

    goto :goto_c

    .line 1767
    .end local v25    # "clearProfileData":Z
    .restart local v6    # "clearProfileData":Z
    :cond_17
    move/from16 v25, v6

    .line 1771
    .end local v6    # "clearProfileData":Z
    .restart local v25    # "clearProfileData":Z
    :goto_c
    if-eqz v5, :cond_18

    .line 1772
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v26, v5

    .end local v5    # "allPackages":Z
    .local v26, "allPackages":Z
    const-string v5, "/"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1773
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    move v5, v13

    goto :goto_d

    .line 1771
    .end local v26    # "allPackages":Z
    .restart local v5    # "allPackages":Z
    :cond_18
    move/from16 v26, v5

    .end local v5    # "allPackages":Z
    .restart local v26    # "allPackages":Z
    move v5, v13

    .line 1776
    .end local v13    # "index":I
    .local v5, "index":I
    :goto_d
    const/4 v6, 0x1

    .line 1777
    .local v6, "result":Z
    if-eqz v12, :cond_19

    .line 1778
    const-class v13, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v13}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PackageManagerInternal;

    .line 1780
    .local v13, "internal":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v13, v8}, Landroid/content/pm/PackageManagerInternal;->compileLayouts(Ljava/lang/String;)Z

    move-result v6

    .line 1781
    .end local v13    # "internal":Landroid/content/pm/PackageManagerInternal;
    move-object v0, v14

    move-object/from16 v27, v15

    goto :goto_f

    .line 1782
    :cond_19
    if-eqz v10, :cond_1a

    .line 1783
    iget-object v13, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v13, v8, v3, v4}, Landroid/content/pm/IPackageManager;->performDexOptSecondary(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v13

    move-object v0, v14

    move-object/from16 v27, v15

    goto :goto_e

    .line 1785
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
    move v15, v2

    move-object/from16 v16, v3

    move/from16 v17, v4

    move-object/from16 v19, v11

    invoke-interface/range {v13 .. v19}, Landroid/content/pm/IPackageManager;->performDexOptMode(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)Z

    move-result v13

    :goto_e
    move v6, v13

    .line 1789
    :goto_f
    if-nez v6, :cond_1b

    .line 1790
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1792
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

    .line 1794
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

    .line 1795
    const-string v5, "Success"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1796
    const/4 v5, 0x0

    return v5

    .line 1797
    :cond_1d
    const/4 v5, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_1e

    .line 1798
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

    .line 1799
    const/4 v5, 0x1

    return v5

    .line 1801
    :cond_1e
    const-string v5, "Failure: the following packages could not be compiled: "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1802
    const/4 v5, 0x1

    .line 1803
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

    .line 1804
    .local v8, "packageName":Ljava/lang/String;
    if-eqz v5, :cond_1f

    .line 1805
    const/4 v5, 0x0

    goto :goto_11

    .line 1807
    :cond_1f
    const-string v14, ", "

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1809
    :goto_11
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1810
    .end local v8    # "packageName":Ljava/lang/String;
    goto :goto_10

    .line 1811
    :cond_20
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 1812
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

    .line 1829
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1830
    .local v0, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "arg":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1831
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1833
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    .line 1834
    :cond_1
    move-object v3, v0

    .line 1833
    :goto_1
    invoke-interface {v1, v3}, Landroid/content/pm/IPackageManager;->runBackgroundDexoptJob(Ljava/util/List;)Z

    move-result v1

    .line 1835
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

    .line 1836
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

    .line 3022
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 3023
    .local v0, "pkg":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 3024
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Error: no package specified"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3025
    const/4 v1, 0x1

    return v1

    .line 3027
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/app/ActivityManager;->dumpPackageStateStatic(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    .line 3028
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

    .line 1840
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 1841
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, v0}, Landroid/content/pm/IPackageManager;->dumpProfiles(Ljava/lang/String;)V

    .line 1842
    const/4 v1, 0x0

    return v1
.end method

.method private runGetAppLink()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2517
    const/4 v0, 0x0

    .line 2520
    .local v0, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 2521
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2522
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 2524
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

    .line 2525
    return v3

    .line 2530
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 2531
    .local v1, "pkg":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 2532
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Error: no package specified."

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2533
    return v3

    .line 2536
    :cond_2
    const/16 v4, -0x2710

    .line 2537
    const-string/jumbo v5, "runGetAppLink"

    invoke-direct {p0, v0, v4, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v4

    .line 2538
    .local v4, "translatedUserId":I
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6, v4}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 2539
    .local v5, "info":Landroid/content/pm/PackageInfo;
    const-string v7, "Error: package "

    if-nez v5, :cond_3

    .line 2540
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " not found."

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2541
    return v3

    .line 2544
    :cond_3
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v8, v8, 0x10

    if-nez v8, :cond_4

    .line 2546
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " does not handle web links."

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2547
    return v3

    .line 2550
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 2551
    invoke-interface {v7, v1, v4}, Landroid/content/pm/IPackageManager;->getIntentVerificationStatus(Ljava/lang/String;I)I

    move-result v7

    .line 2550
    invoke-direct {p0, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->linkStateToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2553
    return v6
.end method

.method private runGetHarmfulAppWarning()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3055
    const/4 v0, -0x2

    .line 3058
    .local v0, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 3059
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3060
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 3062
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

    .line 3063
    const/4 v1, -0x1

    return v1

    .line 3067
    :cond_1
    const/16 v1, -0x2710

    .line 3068
    const-string/jumbo v3, "runGetHarmfulAppWarning"

    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v1

    .line 3069
    .local v1, "translatedUserId":I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 3070
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, v3, v1}, Landroid/content/pm/IPackageManager;->getHarmfulAppWarning(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 3071
    .local v4, "warning":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 3072
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3073
    const/4 v5, 0x0

    return v5

    .line 3075
    :cond_2
    const/4 v5, 0x1

    return v5
.end method

.method private runGetInstallLocation()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1573
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getInstallLocation()I

    move-result v0

    .line 1574
    .local v0, "loc":I
    const-string/jumbo v1, "invalid"

    .line 1575
    .local v1, "locStr":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1576
    const-string v1, "auto"

    goto :goto_0

    .line 1577
    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1578
    const-string/jumbo v1, "internal"

    goto :goto_0

    .line 1579
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 1580
    const-string v1, "external"

    .line 1582
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

    .line 1583
    const/4 v2, 0x0

    return v2
.end method

.method private runGetInstantAppResolver()I
    .locals 4

    .line 2985
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2987
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v2}, Landroid/content/pm/IPackageManager;->getInstantAppResolverComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 2988
    .local v2, "instantAppsResolver":Landroid/content/ComponentName;
    if-nez v2, :cond_0

    .line 2989
    return v1

    .line 2991
    :cond_0
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2992
    const/4 v1, 0x0

    return v1

    .line 2993
    .end local v2    # "instantAppsResolver":Landroid/content/ComponentName;
    :catch_0
    move-exception v2

    .line 2994
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2995
    return v1
.end method

.method private runGetModuleInfo()I
    .locals 12

    .line 346
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 347
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 350
    .local v1, "flags":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "opt":Ljava/lang/String;
    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eqz v2, :cond_5

    .line 351
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

    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 359
    return v5

    .line 356
    :cond_3
    goto :goto_3

    .line 353
    :cond_4
    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    .line 354
    nop

    .line 359
    :goto_3
    goto :goto_0

    .line 363
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 365
    .local v2, "moduleName":Ljava/lang/String;
    const-string v6, " packageName: "

    if-eqz v2, :cond_6

    .line 366
    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v7, v2, v1}, Landroid/content/pm/IPackageManager;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    move-result-object v7

    .line 367
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

    .line 369
    .end local v7    # "m":Landroid/content/pm/ModuleInfo;
    goto :goto_5

    .line 370
    :cond_6
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v7, v1}, Landroid/content/pm/IPackageManager;->getInstalledModules(I)Ljava/util/List;

    move-result-object v7

    .line 371
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

    .line 372
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

    .line 373
    .end local v9    # "m":Landroid/content/pm/ModuleInfo;
    goto :goto_4

    .line 378
    .end local v7    # "modules":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ModuleInfo;>;"
    :cond_7
    :goto_5
    nop

    .line 379
    return v4

    .line 375
    :catch_0
    move-exception v4

    .line 376
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

    .line 377
    return v5
.end method

.method private runGetOemPermissions()I
    .locals 4

    .line 2411
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2412
    .local v0, "pkg":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2413
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Error: no package specified."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2414
    const/4 v1, 0x1

    return v1

    .line 2416
    :cond_0
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    .line 2417
    invoke-virtual {v1, v0}, Lcom/android/server/SystemConfig;->getOemPermissions(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 2418
    .local v1, "oemPermissions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 2421
    :cond_1
    new-instance v2, Lcom/android/server/pm/-$$Lambda$PackageManagerShellCommand$-OZpz58K2HXVuHDuVYKnCu6oo4c;

    invoke-direct {v2, p0}, Lcom/android/server/pm/-$$Lambda$PackageManagerShellCommand$-OZpz58K2HXVuHDuVYKnCu6oo4c;-><init>(Lcom/android/server/pm/PackageManagerShellCommand;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    goto :goto_1

    .line 2419
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string/jumbo v3, "{}"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2425
    :goto_1
    const/4 v2, 0x0

    return v2
.end method

.method private runGetPrivappDenyPermissions()I
    .locals 4

    .line 2387
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2388
    .local v0, "pkg":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2389
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Error: no package specified."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2390
    const/4 v1, 0x1

    return v1

    .line 2393
    :cond_0
    const/4 v1, 0x0

    .line 2394
    .local v1, "privAppPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->isVendorApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2395
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/SystemConfig;->getVendorPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_0

    .line 2396
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->isProductApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2397
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/SystemConfig;->getProductPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_0

    .line 2398
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->isSystemExtApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2399
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    .line 2400
    invoke-virtual {v2, v0}, Lcom/android/server/SystemConfig;->getSystemExtPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_0

    .line 2402
    :cond_3
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/SystemConfig;->getPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    .line 2405
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    if-nez v1, :cond_4

    .line 2406
    const-string/jumbo v3, "{}"

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2405
    :goto_1
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2407
    const/4 v2, 0x0

    return v2
.end method

.method private runGetPrivappPermissions()I
    .locals 4

    .line 2363
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2364
    .local v0, "pkg":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2365
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Error: no package specified."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2366
    const/4 v1, 0x1

    return v1

    .line 2369
    :cond_0
    const/4 v1, 0x0

    .line 2370
    .local v1, "privAppPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->isVendorApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2371
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/SystemConfig;->getVendorPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_0

    .line 2372
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->isProductApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2373
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/SystemConfig;->getProductPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_0

    .line 2374
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->isSystemExtApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2375
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    .line 2376
    invoke-virtual {v2, v0}, Lcom/android/server/SystemConfig;->getSystemExtPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_0

    .line 2378
    :cond_3
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/SystemConfig;->getPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    .line 2381
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    if-nez v1, :cond_4

    .line 2382
    const-string/jumbo v3, "{}"

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2381
    :goto_1
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2383
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

    .line 2286
    const/4 v0, 0x0

    .line 2288
    .local v0, "userId":I
    const/4 v1, 0x0

    .line 2289
    .local v1, "opt":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    if-eqz v2, :cond_1

    .line 2290
    const-string v2, "--user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2291
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 2295
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 2296
    .local v2, "pkg":Ljava/lang/String;
    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 2297
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Error: no package specified"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2298
    return v3

    .line 2300
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .line 2301
    .local v4, "perm":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 2302
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    const-string v6, "Error: no permission specified"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2303
    return v3

    .line 2305
    :cond_3
    const/16 v3, -0x2710

    .line 2306
    const-string/jumbo v5, "runGrantRevokePermission"

    invoke-direct {p0, v0, v3, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v3

    .line 2307
    .local v3, "translatedUserId":I
    if-eqz p1, :cond_4

    .line 2308
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-interface {v5, v2, v4, v3}, Landroid/permission/IPermissionManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 2310
    :cond_4
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mPermissionManager:Landroid/permission/IPermissionManager;

    const/4 v6, 0x0

    invoke-interface {v5, v2, v4, v3, v6}, Landroid/permission/IPermissionManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2312
    :goto_1
    const/4 v5, 0x0

    return v5
.end method

.method private runHasFeature()I
    .locals 8

    .line 3000
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 3001
    .local v0, "err":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 3002
    .local v1, "featureName":Ljava/lang/String;
    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 3003
    const-string v3, "Error: expected FEATURE name"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3004
    return v2

    .line 3006
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 3008
    .local v3, "versionString":Ljava/lang/String;
    const/4 v4, 0x0

    if-nez v3, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 3009
    .local v5, "version":I
    :goto_0
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v6, v1, v5}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v6

    .line 3010
    .local v6, "hasFeature":Z
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/io/PrintWriter;->println(Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3011
    if-eqz v6, :cond_2

    move v2, v4

    :cond_2
    return v2

    .line 3015
    .end local v5    # "version":I
    .end local v6    # "hasFeature":Z
    :catch_0
    move-exception v4

    .line 3016
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3017
    return v2

    .line 3012
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 3013
    .local v4, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: illegal version number "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3014
    return v2
.end method

.method private runIncrementalInstall()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1253
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->makeInstallParams()Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;

    move-result-object v0

    .line 1254
    .local v0, "params":Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-nez v1, :cond_0

    .line 1255
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 1256
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->getIncrementalDataLoaderParams(Landroid/os/ShellCommand;)Landroid/content/pm/DataLoaderParams;

    move-result-object v2

    .line 1255
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageInstaller$SessionParams;->setDataLoaderParams(Landroid/content/pm/DataLoaderParams;)V

    .line 1258
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->doRunInstall(Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;)I

    move-result v1

    return v1
.end method

.method private runInstall()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1262
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->makeInstallParams()Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->doRunInstall(Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;)I

    move-result v0

    return v0
.end method

.method private runInstallAbandon()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1383
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1384
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

    .line 1454
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1455
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1457
    .local v1, "parentSessionId":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1459
    .local v2, "otherSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "opt":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1460
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1462
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    if-nez v3, :cond_1

    .line 1463
    const-string v3, "Error: At least two sessions are required."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1464
    return v5

    .line 1466
    :cond_1
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Ljava/util/List;)[I

    move-result-object v3

    invoke-direct {p0, v1, v3, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->doInstallAddSession(I[IZ)I

    move-result v3

    return v3
.end method

.method private runInstallCommit()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1388
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1390
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x1

    .line 1391
    .local v1, "waitForStagedSessionReady":Z
    const-wide/16 v2, -0x1

    .line 1392
    .local v2, "timeoutMs":J
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "opt":Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_6

    .line 1393
    const/4 v4, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, -0x325a839f

    if-eq v8, v9, :cond_2

    const v9, 0x4f7bc715

    if-eq v8, v9, :cond_1

    :cond_0
    goto :goto_1

    :cond_1
    const-string v8, "--wait"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_2

    :cond_2
    const-string v6, "--no-wait"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v7

    goto :goto_2

    :goto_1
    move v6, v4

    :goto_2
    if-eqz v6, :cond_4

    if-eq v6, v7, :cond_3

    goto :goto_3

    .line 1407
    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    .line 1395
    :cond_4
    const/4 v1, 0x1

    .line 1398
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getRemainingArgsCount()I

    move-result v4

    if-le v4, v7, :cond_5

    .line 1400
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-wide v2, v6

    .line 1401
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1402
    :catch_0
    move-exception v4

    .line 1408
    :cond_5
    :goto_3
    goto :goto_0

    .line 1411
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1412
    .local v4, "sessionId":I
    invoke-direct {p0, v4, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->doCommitSession(IZ)I

    move-result v8

    if-eqz v8, :cond_7

    .line 1413
    return v7

    .line 1415
    :cond_7
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v7}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v7

    .line 1416
    invoke-interface {v7, v4}, Landroid/content/pm/IPackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v7

    .line 1417
    .local v7, "si":Landroid/content/pm/PackageInstaller$SessionInfo;
    if-eqz v7, :cond_9

    invoke-virtual {v7}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged()Z

    move-result v8

    if-eqz v8, :cond_9

    if-nez v1, :cond_8

    goto :goto_4

    .line 1421
    :cond_8
    invoke-direct {p0, v4, v2, v3, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->doWaitForStagedSessionRead(IJLjava/io/PrintWriter;)I

    move-result v6

    return v6

    .line 1418
    :cond_9
    :goto_4
    const-string v8, "Success"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1419
    return v6
.end method

.method private runInstallCreate()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1425
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1426
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->makeInstallParams()Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;

    move-result-object v1

    .line 1427
    .local v1, "installParams":Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    iget v4, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->userId:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doCreateSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result v2

    .line 1431
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

    .line 1432
    const/4 v3, 0x0

    return v3
.end method

.method private runInstallExisting()I
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1484
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 1485
    .local v2, "pw":Ljava/io/PrintWriter;
    const/4 v0, -0x2

    .line 1486
    .local v0, "userId":I
    const/high16 v3, 0x400000

    .line 1488
    .local v3, "installFlags":I
    const/4 v4, 0x0

    move v11, v3

    move v12, v4

    move v3, v0

    .line 1489
    .end local v0    # "userId":I
    .local v3, "userId":I
    .local v11, "installFlags":I
    .local v12, "waitTillComplete":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .local v13, "opt":Ljava/lang/String;
    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v0, :cond_6

    .line 1490
    const/4 v0, -0x1

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    sparse-switch v4, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v4, "--restrict-permissions"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v14, v5

    goto :goto_2

    :sswitch_1
    const-string v4, "--wait"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v14, v6

    goto :goto_2

    :sswitch_2
    const-string v4, "--user"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :sswitch_3
    const-string v4, "--full"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v14, v7

    goto :goto_2

    :sswitch_4
    const-string v4, "--ephemeral"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v14, v15

    goto :goto_2

    :sswitch_5
    const-string v4, "--instant"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v14, v8

    goto :goto_2

    :goto_1
    move v14, v0

    :goto_2
    if-eqz v14, :cond_5

    if-eq v14, v15, :cond_4

    if-eq v14, v8, :cond_4

    if-eq v14, v7, :cond_3

    if-eq v14, v6, :cond_2

    if-eq v14, v5, :cond_1

    .line 1510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1511
    return v15

    .line 1507
    :cond_1
    const v0, -0x400001

    and-int/2addr v0, v11

    .line 1508
    .end local v11    # "installFlags":I
    .local v0, "installFlags":I
    move v11, v0

    goto :goto_3

    .line 1504
    .end local v0    # "installFlags":I
    .restart local v11    # "installFlags":I
    :cond_2
    const/4 v0, 0x1

    .line 1505
    .end local v12    # "waitTillComplete":Z
    .local v0, "waitTillComplete":Z
    move v12, v0

    goto :goto_3

    .line 1500
    .end local v0    # "waitTillComplete":Z
    .restart local v12    # "waitTillComplete":Z
    :cond_3
    and-int/lit16 v0, v11, -0x801

    .line 1501
    .end local v11    # "installFlags":I
    .local v0, "installFlags":I
    or-int/lit16 v0, v0, 0x4000

    .line 1502
    move v11, v0

    goto :goto_3

    .line 1496
    .end local v0    # "installFlags":I
    .restart local v11    # "installFlags":I
    :cond_4
    or-int/lit16 v0, v11, 0x800

    .line 1497
    .end local v11    # "installFlags":I
    .restart local v0    # "installFlags":I
    and-int/lit16 v0, v0, -0x4001

    .line 1498
    move v11, v0

    goto :goto_3

    .line 1492
    .end local v0    # "installFlags":I
    .restart local v11    # "installFlags":I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 1493
    .end local v3    # "userId":I
    .local v0, "userId":I
    move v3, v0

    .line 1511
    .end local v0    # "userId":I
    .restart local v3    # "userId":I
    :goto_3
    goto/16 :goto_0

    .line 1515
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v10

    .line 1516
    .local v10, "packageName":Ljava/lang/String;
    if-nez v10, :cond_7

    .line 1517
    const-string v0, "Error: package name not specified"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1518
    return v15

    .line 1520
    :cond_7
    const/16 v0, -0x2710

    .line 1521
    const-string/jumbo v4, "runInstallExisting"

    invoke-direct {v1, v3, v0, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v9

    .line 1523
    .local v9, "translatedUserId":I
    const/16 v16, 0x0

    .line 1525
    .local v16, "installReason":I
    if-eqz v12, :cond_9

    .line 1526
    :try_start_0
    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$1;)V

    .line 1527
    .local v0, "receiver":Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v4}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v4

    .line 1528
    .local v4, "installer":Landroid/content/pm/IPackageInstaller;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Installing package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for user: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1529
    nop

    .line 1530
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v17, 0x0

    .line 1529
    move-object v5, v10

    move v6, v11

    move/from16 v7, v16

    move/from16 v18, v9

    .end local v9    # "translatedUserId":I
    .local v18, "translatedUserId":I
    move-object/from16 v19, v10

    .end local v10    # "packageName":Ljava/lang/String;
    .local v19, "packageName":Ljava/lang/String;
    move-object/from16 v10, v17

    :try_start_1
    invoke-interface/range {v4 .. v10}, Landroid/content/pm/IPackageInstaller;->installExistingPackage(Ljava/lang/String;IILandroid/content/IntentSender;ILjava/util/List;)V

    .line 1531
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v5

    .line 1532
    .local v5, "result":Landroid/content/Intent;
    const-string v6, "android.content.pm.extra.STATUS"

    invoke-virtual {v5, v6, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1534
    .local v6, "status":I
    const-string v7, "Received intent for package install"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1535
    if-nez v6, :cond_8

    goto :goto_4

    :cond_8
    move v14, v15

    :goto_4
    return v14

    .line 1545
    .end local v0    # "receiver":Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
    .end local v4    # "installer":Landroid/content/pm/IPackageInstaller;
    .end local v5    # "result":Landroid/content/Intent;
    .end local v6    # "status":I
    :catch_0
    move-exception v0

    move/from16 v7, v18

    move-object/from16 v6, v19

    goto :goto_5

    .end local v18    # "translatedUserId":I
    .end local v19    # "packageName":Ljava/lang/String;
    .restart local v9    # "translatedUserId":I
    .restart local v10    # "packageName":Ljava/lang/String;
    :catch_1
    move-exception v0

    move v7, v9

    move-object v6, v10

    .end local v9    # "translatedUserId":I
    .end local v10    # "packageName":Ljava/lang/String;
    .restart local v18    # "translatedUserId":I
    .restart local v19    # "packageName":Ljava/lang/String;
    goto :goto_5

    .line 1538
    .end local v18    # "translatedUserId":I
    .end local v19    # "packageName":Ljava/lang/String;
    .restart local v9    # "translatedUserId":I
    .restart local v10    # "packageName":Ljava/lang/String;
    :cond_9
    move/from16 v18, v9

    move-object/from16 v19, v10

    .end local v9    # "translatedUserId":I
    .end local v10    # "packageName":Ljava/lang/String;
    .restart local v18    # "translatedUserId":I
    .restart local v19    # "packageName":Ljava/lang/String;
    :try_start_2
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/4 v9, 0x0

    move-object/from16 v5, v19

    move/from16 v6, v18

    move v7, v11

    move/from16 v8, v16

    invoke-interface/range {v4 .. v9}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;)I

    move-result v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    .line 1540
    .local v0, "res":I
    const/4 v4, -0x3

    const-string v5, "Package "

    if-eq v0, v4, :cond_a

    .line 1543
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    move-object/from16 v6, v19

    .end local v19    # "packageName":Ljava/lang/String;
    .local v6, "packageName":Ljava/lang/String;
    :try_start_4
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " installed for user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    move/from16 v7, v18

    .end local v18    # "translatedUserId":I
    .local v7, "translatedUserId":I
    :try_start_5
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1544
    return v14

    .line 1545
    .end local v0    # "res":I
    .end local v7    # "translatedUserId":I
    .restart local v18    # "translatedUserId":I
    :catch_2
    move-exception v0

    move/from16 v7, v18

    .end local v18    # "translatedUserId":I
    .restart local v7    # "translatedUserId":I
    goto :goto_5

    .line 1541
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "translatedUserId":I
    .restart local v0    # "res":I
    .restart local v18    # "translatedUserId":I
    .restart local v19    # "packageName":Ljava/lang/String;
    :cond_a
    move/from16 v7, v18

    move-object/from16 v6, v19

    .end local v18    # "translatedUserId":I
    .end local v19    # "packageName":Ljava/lang/String;
    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v7    # "translatedUserId":I
    new-instance v4, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " doesn\'t exist"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v2    # "pw":Ljava/io/PrintWriter;
    .end local v3    # "userId":I
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "translatedUserId":I
    .end local v11    # "installFlags":I
    .end local v12    # "waitTillComplete":Z
    .end local v13    # "opt":Ljava/lang/String;
    .end local v16    # "installReason":I
    .end local p0    # "this":Lcom/android/server/pm/PackageManagerShellCommand;
    throw v4
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1545
    .end local v0    # "res":I
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    .restart local v3    # "userId":I
    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v7    # "translatedUserId":I
    .restart local v11    # "installFlags":I
    .restart local v12    # "waitTillComplete":Z
    .restart local v13    # "opt":Ljava/lang/String;
    .restart local v16    # "installReason":I
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerShellCommand;
    :catch_3
    move-exception v0

    goto :goto_5

    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "translatedUserId":I
    .restart local v18    # "translatedUserId":I
    .restart local v19    # "packageName":Ljava/lang/String;
    :catch_4
    move-exception v0

    move/from16 v7, v18

    move-object/from16 v6, v19

    .line 1546
    .end local v18    # "translatedUserId":I
    .end local v19    # "packageName":Ljava/lang/String;
    .local v0, "e":Landroid/util/AndroidException;
    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v7    # "translatedUserId":I
    :goto_5
    invoke-virtual {v0}, Landroid/util/AndroidException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1547
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

    .line 1471
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1473
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1475
    .local v1, "sessionId":I
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getRemainingArgs()Ljava/util/ArrayList;

    move-result-object v2

    .line 1476
    .local v2, "splitNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 1477
    const-string v3, "Error: split name not specified"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1478
    return v4

    .line 1480
    :cond_0
    invoke-direct {p0, v1, v2, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doRemoveSplits(ILjava/util/Collection;Z)I

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

    .line 1436
    const-wide/16 v0, -0x1

    .line 1439
    .local v0, "sizeBytes":J
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    .local v9, "opt":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1440
    const-string v2, "-S"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1441
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    .line 1443
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

    .line 1447
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1448
    .local v10, "sessionId":I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v11

    .line 1449
    .local v11, "splitName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v12

    .line 1450
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

    .line 601
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 602
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 603
    .local v1, "type":Ljava/lang/String;
    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 604
    const-string v3, "Error: didn\'t specify type of data to list"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 605
    return v2

    .line 607
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
    const-string/jumbo v3, "instrumentation"

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

    const/16 v3, 0x8

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

    :sswitch_8
    const-string/jumbo v3, "staged-sessions"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x7

    goto :goto_1

    :goto_0
    move v3, v2

    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 629
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

    .line 630
    return v2

    .line 624
    :pswitch_0
    const-string/jumbo v2, "user"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 625
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getInFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const-string/jumbo v2, "list"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v9

    .line 626
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getShellCallback()Landroid/os/ShellCallback;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->adoptResultReceiver()Landroid/os/ResultReceiver;

    move-result-object v11

    .line 624
    invoke-interface/range {v5 .. v11}, Landroid/os/IBinder;->shellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V

    .line 627
    return v4

    .line 622
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListStagedSessions()I

    move-result v2

    return v2

    .line 620
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPermissions()I

    move-result v2

    return v2

    .line 618
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPermissionGroups()I

    move-result v2

    return v2

    .line 616
    :pswitch_4
    invoke-direct {p0, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPackages(Z)I

    move-result v2

    return v2

    .line 613
    :pswitch_5
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListLibraries()I

    move-result v2

    return v2

    .line 611
    :pswitch_6
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListInstrumentation()I

    move-result v2

    return v2

    .line 609
    :pswitch_7
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListFeatures()I

    move-result v2

    return v2

    :sswitch_data_0
    .sparse-switch
        -0x431ede9c -> :sswitch_8
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
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
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

    .line 634
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 635
    .local v0, "pw":Ljava/io/PrintWriter;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getSystemAvailableFeatures()Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 638
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/FeatureInfo;>;"
    new-instance v2, Lcom/android/server/pm/PackageManagerShellCommand$1;

    invoke-direct {v2, p0}, Lcom/android/server/pm/PackageManagerShellCommand$1;-><init>(Lcom/android/server/pm/PackageManagerShellCommand;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 647
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    .line 648
    .local v3, "count":I
    :goto_0
    const/4 v4, 0x0

    .local v4, "p":I
    :goto_1
    if-ge v4, v3, :cond_3

    .line 649
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/FeatureInfo;

    .line 650
    .local v5, "fi":Landroid/content/pm/FeatureInfo;
    const-string v6, "feature:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 651
    iget-object v6, v5, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 652
    iget-object v6, v5, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 653
    iget v6, v5, Landroid/content/pm/FeatureInfo;->version:I

    if-lez v6, :cond_1

    .line 654
    const-string v6, "="

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 655
    iget v6, v5, Landroid/content/pm/FeatureInfo;->version:I

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 657
    :cond_1
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    goto :goto_2

    .line 659
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "reqGlEsVersion=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    .line 660
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 659
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 648
    .end local v5    # "fi":Landroid/content/pm/FeatureInfo;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 663
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

    .line 667
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 668
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 669
    .local v1, "showSourceDir":Z
    const/4 v2, 0x0

    .line 673
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

    .line 674
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

    .line 679
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x2d

    if-eq v4, v6, :cond_2

    .line 680
    move-object v2, v5

    goto :goto_3

    .line 682
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

    .line 683
    return v3

    .line 676
    :cond_3
    const/4 v1, 0x1

    .line 677
    nop

    .line 685
    :goto_3
    goto :goto_0

    .line 691
    .end local v5    # "opt":Ljava/lang/String;
    :cond_4
    nop

    .line 693
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 694
    invoke-interface {v3, v2, v6}, Landroid/content/pm/IPackageManager;->queryInstrumentation(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    .line 697
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    new-instance v4, Lcom/android/server/pm/PackageManagerShellCommand$2;

    invoke-direct {v4, p0}, Lcom/android/server/pm/PackageManagerShellCommand$2;-><init>(Lcom/android/server/pm/PackageManagerShellCommand;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 703
    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_4

    :cond_5
    move v4, v6

    .line 704
    .local v4, "count":I
    :goto_4
    const/4 v5, 0x0

    .local v5, "p":I
    :goto_5
    if-ge v5, v4, :cond_7

    .line 705
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/InstrumentationInfo;

    .line 706
    .local v7, "ii":Landroid/content/pm/InstrumentationInfo;
    const-string/jumbo v8, "instrumentation:"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 707
    if-eqz v1, :cond_6

    .line 708
    iget-object v8, v7, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 709
    const-string v8, "="

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 711
    :cond_6
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v7, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    iget-object v10, v7, Landroid/content/pm/InstrumentationInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    .local v8, "cn":Landroid/content/ComponentName;
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 713
    const-string v9, " (target="

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 714
    iget-object v9, v7, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 715
    const-string v9, ")"

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 704
    .end local v7    # "ii":Landroid/content/pm/InstrumentationInfo;
    .end local v8    # "cn":Landroid/content/ComponentName;
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 717
    .end local v5    # "p":I
    :cond_7
    return v6

    .line 688
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    .end local v4    # "count":I
    :catch_0
    move-exception v4

    .line 689
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

    .line 690
    return v3
.end method

.method private runListLibraries()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 721
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 722
    .local v0, "pw":Ljava/io/PrintWriter;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 723
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v2}, Landroid/content/pm/IPackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v2

    .line 724
    .local v2, "rawList":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 725
    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 724
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 729
    .end local v3    # "i":I
    :cond_0
    new-instance v3, Lcom/android/server/pm/PackageManagerShellCommand$3;

    invoke-direct {v3, p0}, Lcom/android/server/pm/PackageManagerShellCommand$3;-><init>(Lcom/android/server/pm/PackageManagerShellCommand;)V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 738
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 739
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "p":I
    :goto_1
    if-ge v4, v3, :cond_1

    .line 740
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 741
    .local v5, "lib":Ljava/lang/String;
    const-string/jumbo v6, "library:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 742
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 739
    .end local v5    # "lib":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 744
    .end local v4    # "p":I
    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method private runListPackages(Z)I
    .locals 28
    .param p1, "showSourceDir"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 748
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 749
    .local v2, "pw":Ljava/io/PrintWriter;
    const/4 v0, 0x0

    .line 750
    .local v0, "getFlags":I
    const/4 v3, 0x0

    .local v3, "listDisabled":Z
    const/4 v4, 0x0

    .line 751
    .local v4, "listEnabled":Z
    const/4 v5, 0x0

    .local v5, "listSystem":Z
    const/4 v6, 0x0

    .line 752
    .local v6, "listThirdParty":Z
    const/4 v7, 0x0

    .line 753
    .local v7, "listInstaller":Z
    const/4 v8, 0x0

    .line 754
    .local v8, "showUid":Z
    const/4 v9, 0x0

    .line 755
    .local v9, "showVersionCode":Z
    const/4 v10, 0x0

    .line 756
    .local v10, "listApexOnly":Z
    const/4 v11, -0x1

    .line 757
    .local v11, "uid":I
    const/4 v12, 0x0

    move v13, v11

    move v14, v12

    move v11, v9

    move v12, v10

    move v9, v7

    move v10, v8

    move v7, v5

    move v8, v6

    move v5, v3

    move v6, v4

    move/from16 v3, p1

    move v4, v0

    .line 760
    .end local v0    # "getFlags":I
    .end local p1    # "showSourceDir":Z
    .local v3, "showSourceDir":Z
    .local v4, "getFlags":I
    .local v5, "listDisabled":Z
    .local v6, "listEnabled":Z
    .local v7, "listSystem":Z
    .local v8, "listThirdParty":Z
    .local v9, "listInstaller":Z
    .local v10, "showUid":Z
    .local v11, "showVersionCode":Z
    .local v12, "listApexOnly":Z
    .local v13, "uid":I
    .local v14, "userId":I
    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 p1, v0

    .local p1, "opt":Ljava/lang/String;
    const v16, 0x402000

    const/16 v17, 0x1

    if-eqz v0, :cond_2

    .line 761
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    sparse-switch v0, :sswitch_data_0

    move-object/from16 v0, p1

    .end local p1    # "opt":Ljava/lang/String;
    .local v0, "opt":Ljava/lang/String;
    goto/16 :goto_2

    .end local v0    # "opt":Ljava/lang/String;
    .restart local p1    # "opt":Ljava/lang/String;
    :sswitch_0
    :try_start_2
    const-string v0, "--apex-only"

    move-object/from16 v15, p1

    .end local p1    # "opt":Ljava/lang/String;
    .local v15, "opt":Ljava/lang/String;
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v17, 0xb

    goto/16 :goto_1

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

    const/16 v17, 0xc

    goto :goto_1

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

    const/16 v17, 0xd

    goto :goto_1

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

    const/16 v17, 0x8

    goto :goto_1

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

    const/16 v17, 0x6

    goto :goto_1

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

    const/16 v17, 0x5

    goto :goto_1

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

    const/16 v17, 0x4

    goto :goto_1

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

    const/16 v17, 0x3

    goto :goto_1

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

    :goto_1
    move-object v0, v15

    goto :goto_3

    :cond_0
    move-object v0, v15

    goto :goto_2

    .end local v15    # "opt":Ljava/lang/String;
    .restart local p1    # "opt":Ljava/lang/String;
    :sswitch_9
    move-object/from16 v0, p1

    .end local p1    # "opt":Ljava/lang/String;
    .restart local v0    # "opt":Ljava/lang/String;
    const-string v15, "-d"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    const/16 v17, 0x0

    goto :goto_3

    .end local v0    # "opt":Ljava/lang/String;
    .restart local p1    # "opt":Ljava/lang/String;
    :sswitch_a
    move-object/from16 v0, p1

    .end local p1    # "opt":Ljava/lang/String;
    .restart local v0    # "opt":Ljava/lang/String;
    const-string v15, "-a"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    const/16 v17, 0x2

    goto :goto_3

    .end local v0    # "opt":Ljava/lang/String;
    .restart local p1    # "opt":Ljava/lang/String;
    :sswitch_b
    move-object/from16 v0, p1

    .end local p1    # "opt":Ljava/lang/String;
    .restart local v0    # "opt":Ljava/lang/String;
    const-string v15, "-U"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    const/16 v17, 0x7

    goto :goto_3

    .end local v0    # "opt":Ljava/lang/String;
    .restart local p1    # "opt":Ljava/lang/String;
    :sswitch_c
    move-object/from16 v0, p1

    .end local p1    # "opt":Ljava/lang/String;
    .restart local v0    # "opt":Ljava/lang/String;
    const-string v15, "-3"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    const/16 v17, 0x9

    goto :goto_3

    .end local v0    # "opt":Ljava/lang/String;
    .restart local p1    # "opt":Ljava/lang/String;
    :sswitch_d
    move-object/from16 v0, p1

    .end local p1    # "opt":Ljava/lang/String;
    .restart local v0    # "opt":Ljava/lang/String;
    const-string v15, "--show-versioncode"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v15, :cond_1

    const/16 v17, 0xa

    goto :goto_3

    .line 812
    .end local v0    # "opt":Ljava/lang/String;
    :catch_0
    move-exception v0

    move/from16 v26, v5

    move/from16 v27, v6

    move/from16 v21, v14

    goto/16 :goto_c

    .line 761
    .restart local v0    # "opt":Ljava/lang/String;
    :cond_1
    :goto_2
    const/16 v17, -0x1

    :goto_3
    packed-switch v17, :pswitch_data_0

    .line 808
    :try_start_3
    new-instance v15, Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    .line 804
    :pswitch_0
    const/4 v10, 0x1

    .line 805
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move v13, v15

    .line 806
    goto :goto_4

    .line 801
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v15
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    move v14, v15

    .line 802
    goto :goto_4

    .line 797
    :pswitch_2
    const/high16 v15, 0x40000000    # 2.0f

    or-int/2addr v4, v15

    .line 798
    const/4 v12, 0x1

    .line 799
    goto :goto_4

    .line 794
    :pswitch_3
    const/4 v11, 0x1

    .line 795
    goto :goto_4

    .line 791
    :pswitch_4
    const/4 v8, 0x1

    .line 792
    goto :goto_4

    .line 788
    :pswitch_5
    or-int/lit16 v4, v4, 0x2000

    .line 789
    goto :goto_4

    .line 785
    :pswitch_6
    const/4 v10, 0x1

    .line 786
    goto :goto_4

    .line 782
    :pswitch_7
    const/4 v7, 0x1

    .line 783
    goto :goto_4

    .line 780
    :pswitch_8
    goto :goto_4

    .line 776
    :pswitch_9
    const/4 v9, 0x1

    .line 777
    goto :goto_4

    .line 773
    :pswitch_a
    const/4 v3, 0x1

    .line 774
    goto :goto_4

    .line 769
    :pswitch_b
    or-int v4, v4, v16

    .line 770
    const/high16 v15, 0x20000000

    or-int/2addr v4, v15

    .line 771
    goto :goto_4

    .line 766
    :pswitch_c
    const/4 v6, 0x1

    .line 767
    goto :goto_4

    .line 763
    :pswitch_d
    const/4 v5, 0x1

    .line 764
    nop

    .line 809
    :goto_4
    goto/16 :goto_0

    .line 808
    :goto_5
    :try_start_5
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    move/from16 v18, v10

    .end local v10    # "showUid":Z
    .local v18, "showUid":Z
    :try_start_6
    const-string v10, "Error: Unknown option: "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    .line 809
    const/4 v10, -0x1

    return v10

    .line 812
    .end local v0    # "opt":Ljava/lang/String;
    :catch_1
    move-exception v0

    move/from16 v26, v5

    move/from16 v27, v6

    move/from16 v21, v14

    move/from16 v10, v18

    goto/16 :goto_c

    .end local v18    # "showUid":Z
    .restart local v10    # "showUid":Z
    :catch_2
    move-exception v0

    move/from16 v18, v10

    move/from16 v26, v5

    move/from16 v27, v6

    move/from16 v21, v14

    .end local v10    # "showUid":Z
    .restart local v18    # "showUid":Z
    goto/16 :goto_c

    .line 760
    .end local v18    # "showUid":Z
    .restart local v10    # "showUid":Z
    .restart local p1    # "opt":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p1

    move/from16 v18, v10

    .line 815
    .end local v10    # "showUid":Z
    .end local p1    # "opt":Ljava/lang/String;
    .restart local v18    # "showUid":Z
    nop

    .line 817
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 819
    .local v0, "filter":Ljava/lang/String;
    const/4 v10, -0x1

    if-ne v14, v10, :cond_3

    .line 820
    or-int v4, v4, v16

    .line 822
    :cond_3
    nop

    .line 823
    const-string/jumbo v10, "runListPackages"

    const/4 v15, 0x0

    invoke-direct {v1, v14, v15, v10}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v10

    .line 825
    .local v10, "translatedUserId":I
    iget-object v15, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 826
    invoke-interface {v15, v4, v10}, Landroid/content/pm/IPackageManager;->getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v15

    .line 827
    .local v15, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    move/from16 v16, v4

    .end local v4    # "getFlags":I
    .local v16, "getFlags":I
    invoke-virtual {v15}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v4

    .line 829
    .local v4, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    move/from16 v19, v10

    .end local v10    # "translatedUserId":I
    .local v19, "translatedUserId":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    .line 830
    .local v10, "count":I
    const/16 v20, 0x0

    move/from16 v21, v14

    move/from16 v14, v20

    .local v14, "p":I
    .local v21, "userId":I
    :goto_6
    if-ge v14, v10, :cond_15

    .line 831
    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v22, v4

    .end local v4    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .local v22, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    move-object/from16 v4, v20

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 832
    .local v4, "info":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_4

    move/from16 v20, v10

    .end local v10    # "count":I
    .local v20, "count":I
    iget-object v10, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 833
    move-object/from16 v24, v0

    move/from16 v26, v5

    move/from16 v27, v6

    move-object/from16 v23, v15

    goto/16 :goto_b

    .line 832
    .end local v20    # "count":I
    .restart local v10    # "count":I
    :cond_4
    move/from16 v20, v10

    .line 835
    .end local v10    # "count":I
    .restart local v20    # "count":I
    :cond_5
    iget-boolean v10, v4, Landroid/content/pm/PackageInfo;->isApex:Z

    .line 836
    .local v10, "isApex":Z
    move-object/from16 v23, v15

    const/4 v15, -0x1

    .end local v15    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    .local v23, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    if-eq v13, v15, :cond_6

    if-nez v10, :cond_6

    iget-object v15, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v15, v13, :cond_6

    .line 837
    move-object/from16 v24, v0

    move/from16 v26, v5

    move/from16 v27, v6

    goto/16 :goto_b

    .line 840
    :cond_6
    if-nez v10, :cond_7

    iget-object v15, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_7

    move/from16 v15, v17

    goto :goto_7

    :cond_7
    const/4 v15, 0x0

    .line 842
    .local v15, "isSystem":Z
    :goto_7
    if-nez v10, :cond_8

    move-object/from16 v24, v0

    .end local v0    # "filter":Ljava/lang/String;
    .local v24, "filter":Ljava/lang/String;
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_9

    move/from16 v0, v17

    goto :goto_8

    .end local v24    # "filter":Ljava/lang/String;
    .restart local v0    # "filter":Ljava/lang/String;
    :cond_8
    move-object/from16 v24, v0

    .end local v0    # "filter":Ljava/lang/String;
    .restart local v24    # "filter":Ljava/lang/String;
    :cond_9
    const/4 v0, 0x0

    .line 843
    .local v0, "isEnabled":Z
    :goto_8
    if-eqz v5, :cond_b

    if-nez v0, :cond_a

    goto :goto_9

    :cond_a
    move/from16 v26, v5

    move/from16 v27, v6

    goto/16 :goto_b

    :cond_b
    :goto_9
    if-eqz v6, :cond_c

    if-eqz v0, :cond_a

    :cond_c
    if-eqz v7, :cond_d

    if-eqz v15, :cond_a

    :cond_d
    if-eqz v8, :cond_e

    if-nez v15, :cond_a

    :cond_e
    if-eqz v12, :cond_f

    if-eqz v10, :cond_a

    .line 848
    :cond_f
    move/from16 v25, v0

    .end local v0    # "isEnabled":Z
    .local v25, "isEnabled":Z
    const-string/jumbo v0, "package:"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 849
    if-eqz v3, :cond_10

    .line 850
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 851
    const-string v0, "="

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 853
    :cond_10
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 854
    if-eqz v11, :cond_12

    .line 855
    const-string v0, " versionCode:"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 856
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_11

    .line 857
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move/from16 v26, v5

    move/from16 v27, v6

    .end local v5    # "listDisabled":Z
    .end local v6    # "listEnabled":Z
    .local v26, "listDisabled":Z
    .local v27, "listEnabled":Z
    iget-wide v5, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-virtual {v2, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    goto :goto_a

    .line 859
    .end local v26    # "listDisabled":Z
    .end local v27    # "listEnabled":Z
    .restart local v5    # "listDisabled":Z
    .restart local v6    # "listEnabled":Z
    :cond_11
    move/from16 v26, v5

    move/from16 v27, v6

    .end local v5    # "listDisabled":Z
    .end local v6    # "listEnabled":Z
    .restart local v26    # "listDisabled":Z
    .restart local v27    # "listEnabled":Z
    invoke-virtual {v4}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    goto :goto_a

    .line 854
    .end local v26    # "listDisabled":Z
    .end local v27    # "listEnabled":Z
    .restart local v5    # "listDisabled":Z
    .restart local v6    # "listEnabled":Z
    :cond_12
    move/from16 v26, v5

    move/from16 v27, v6

    .line 862
    .end local v5    # "listDisabled":Z
    .end local v6    # "listEnabled":Z
    .restart local v26    # "listDisabled":Z
    .restart local v27    # "listEnabled":Z
    :goto_a
    if-eqz v9, :cond_13

    .line 863
    const-string v0, "  installer="

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 864
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v5}, Landroid/content/pm/IPackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 866
    :cond_13
    if-eqz v18, :cond_14

    if-nez v10, :cond_14

    .line 867
    const-string v0, " uid:"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 868
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 870
    :cond_14
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 830
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    .end local v10    # "isApex":Z
    .end local v15    # "isSystem":Z
    .end local v25    # "isEnabled":Z
    :goto_b
    add-int/lit8 v14, v14, 0x1

    move/from16 v10, v20

    move-object/from16 v4, v22

    move-object/from16 v15, v23

    move-object/from16 v0, v24

    move/from16 v5, v26

    move/from16 v6, v27

    goto/16 :goto_6

    .end local v20    # "count":I
    .end local v22    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v23    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    .end local v24    # "filter":Ljava/lang/String;
    .end local v26    # "listDisabled":Z
    .end local v27    # "listEnabled":Z
    .local v0, "filter":Ljava/lang/String;
    .local v4, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v5    # "listDisabled":Z
    .restart local v6    # "listEnabled":Z
    .local v10, "count":I
    .local v15, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    :cond_15
    move-object/from16 v24, v0

    .line 873
    .end local v0    # "filter":Ljava/lang/String;
    .end local v14    # "p":I
    .restart local v24    # "filter":Ljava/lang/String;
    const/4 v0, 0x0

    return v0

    .line 812
    .end local v15    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    .end local v16    # "getFlags":I
    .end local v18    # "showUid":Z
    .end local v19    # "translatedUserId":I
    .end local v21    # "userId":I
    .end local v24    # "filter":Ljava/lang/String;
    .local v4, "getFlags":I
    .local v10, "showUid":Z
    .local v14, "userId":I
    :catch_3
    move-exception v0

    move/from16 v26, v5

    move/from16 v27, v6

    move/from16 v18, v10

    move/from16 v21, v14

    .line 813
    .end local v5    # "listDisabled":Z
    .end local v6    # "listEnabled":Z
    .end local v14    # "userId":I
    .local v0, "ex":Ljava/lang/RuntimeException;
    .restart local v21    # "userId":I
    .restart local v26    # "listDisabled":Z
    .restart local v27    # "listEnabled":Z
    :goto_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 814
    const/4 v5, -0x1

    return v5

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

    .line 877
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 878
    .local v0, "pw":Ljava/io/PrintWriter;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mPermissionManager:Landroid/permission/IPermissionManager;

    .line 879
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/permission/IPermissionManager;->getAllPermissionGroups(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 881
    .local v1, "pgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 882
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "p":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 883
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PermissionGroupInfo;

    .line 884
    .local v5, "pgi":Landroid/content/pm/PermissionGroupInfo;
    const-string/jumbo v6, "permission group:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 885
    iget-object v6, v5, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 882
    .end local v5    # "pgi":Landroid/content/pm/PermissionGroupInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 887
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

    .line 891
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 892
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 893
    .local v1, "labels":Z
    const/4 v2, 0x0

    .line 894
    .local v2, "groups":Z
    const/4 v3, 0x0

    .line 895
    .local v3, "userOnly":Z
    const/4 v4, 0x0

    .line 896
    .local v4, "summary":Z
    const/4 v5, 0x0

    .line 898
    .local v5, "dangerousOnly":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v6

    move-object v13, v6

    .local v13, "opt":Ljava/lang/String;
    const/4 v14, 0x0

    if-eqz v6, :cond_b

    .line 899
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

    move v14, v11

    goto :goto_2

    :cond_2
    const-string v7, "-f"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v14, v12

    goto :goto_2

    :cond_3
    const-string v7, "-u"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v14, v9

    goto :goto_2

    :cond_4
    const-string v7, "-s"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v14, v10

    goto :goto_2

    :cond_5
    const-string v7, "-d"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    :goto_1
    move v14, v6

    :goto_2
    if-eqz v14, :cond_a

    if-eq v14, v12, :cond_9

    if-eq v14, v11, :cond_8

    if-eq v14, v10, :cond_7

    if-eq v14, v9, :cond_6

    .line 918
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: Unknown option: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 919
    return v12

    .line 915
    :cond_6
    const/4 v3, 0x1

    .line 916
    goto :goto_3

    .line 910
    :cond_7
    const/4 v2, 0x1

    .line 911
    const/4 v1, 0x1

    .line 912
    const/4 v4, 0x1

    .line 913
    goto :goto_3

    .line 907
    :cond_8
    const/4 v2, 0x1

    .line 908
    goto :goto_3

    .line 904
    :cond_9
    const/4 v1, 0x1

    .line 905
    goto :goto_3

    .line 901
    :cond_a
    const/4 v5, 0x1

    .line 902
    nop

    .line 919
    :goto_3
    goto/16 :goto_0

    .line 923
    :cond_b
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v6

    .line 924
    .local v15, "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_d

    .line 925
    move-object/from16 v12, p0

    iget-object v6, v12, Lcom/android/server/pm/PackageManagerShellCommand;->mPermissionManager:Landroid/permission/IPermissionManager;

    .line 926
    invoke-interface {v6, v14}, Landroid/permission/IPermissionManager;->getAllPermissionGroups(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v6

    .line 927
    .local v6, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 928
    .local v7, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    if-ge v8, v7, :cond_c

    .line 929
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PermissionGroupInfo;

    iget-object v9, v9, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 928
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 931
    .end local v8    # "i":I
    :cond_c
    const/4 v8, 0x0

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 932
    .end local v6    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    .end local v7    # "count":I
    goto :goto_5

    .line 933
    :cond_d
    move-object/from16 v12, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    .line 934
    .local v6, "grp":Ljava/lang/String;
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 937
    .end local v6    # "grp":Ljava/lang/String;
    :goto_5
    const-string v11, ""

    if-eqz v5, :cond_e

    .line 938
    const-string v6, "Dangerous Permissions:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 939
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 940
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

    .line 943
    if-eqz v3, :cond_10

    .line 944
    const-string v6, "Normal Permissions:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 945
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 946
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, p0

    move-object v7, v15

    move v8, v2

    move v9, v1

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lcom/android/server/pm/PackageManagerShellCommand;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    goto :goto_6

    .line 950
    :cond_e
    move-object v14, v11

    if-eqz v3, :cond_f

    .line 951
    const-string v6, "Dangerous and Normal Permissions:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 952
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 953
    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v6, p0

    move-object v7, v15

    move v8, v2

    move v9, v1

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lcom/android/server/pm/PackageManagerShellCommand;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    goto :goto_6

    .line 957
    :cond_f
    const-string v6, "All Permissions:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 958
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 959
    const/16 v11, -0x2710

    const/16 v12, 0x2710

    move-object/from16 v6, p0

    move-object v7, v15

    move v8, v2

    move v9, v1

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lcom/android/server/pm/PackageManagerShellCommand;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    .line 962
    :cond_10
    :goto_6
    const/4 v6, 0x0

    return v6
.end method

.method private runListStagedSessions()I
    .locals 7

    .line 990
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    .line 991
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "  "

    const/16 v3, 0x78

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 992
    .local v0, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :try_start_0
    new-instance v1, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$1;)V

    .line 994
    .local v1, "sessionDump":Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "opt":Ljava/lang/String;
    const/4 v4, -0x1

    if-eqz v2, :cond_1

    .line 995
    invoke-direct {p0, v3, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->setSessionFlag(Ljava/lang/String;Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 996
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 997
    nop

    .line 1012
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->close()V

    .line 997
    return v4

    .line 1002
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 1003
    invoke-interface {v2}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/pm/IPackageInstaller;->getStagedSessions()Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    .line 1004
    .local v2, "stagedSessions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->printSessionList(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/List;Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1010
    .end local v2    # "stagedSessions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    nop

    .line 1011
    const/4 v2, 0x1

    .line 1012
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->close()V

    .line 1011
    return v2

    .line 1005
    :catch_0
    move-exception v2

    .line 1006
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1006
    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1009
    nop

    .line 1012
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->close()V

    .line 1009
    return v4

    .line 990
    .end local v1    # "sessionDump":Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "opt":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method private runLogVisibility()I
    .locals 7

    .line 383
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 384
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x1

    .line 387
    .local v1, "enable":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "opt":Ljava/lang/String;
    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eqz v2, :cond_5

    .line 388
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v6, -0x49c576b8

    if-eq v2, v6, :cond_2

    const v6, 0x41a27323

    if-eq v2, v6, :cond_1

    :cond_0
    goto :goto_1

    :cond_1
    const-string v2, "--enable"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_2

    :cond_2
    const-string v2, "--disable"

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

    .line 396
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 397
    return v5

    .line 393
    :cond_3
    const/4 v1, 0x1

    .line 394
    goto :goto_3

    .line 390
    :cond_4
    const/4 v1, 0x0

    .line 391
    nop

    .line 397
    :goto_3
    goto :goto_0

    .line 401
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 402
    .local v2, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 403
    const-class v5, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageManagerInternal;

    .line 404
    invoke-virtual {v5, v2, v1}, Landroid/content/pm/PackageManagerInternal;->setVisibilityLogging(Ljava/lang/String;Z)V

    .line 409
    return v4

    .line 406
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v6, "Error: no package specified"

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 407
    return v5
.end method

.method private runPath()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 584
    const/4 v0, 0x0

    .line 585
    .local v0, "userId":I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    .line 586
    .local v1, "option":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "--user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 587
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 590
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 591
    .local v2, "pkg":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 592
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: no package specified"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 593
    const/4 v3, 0x1

    return v3

    .line 595
    :cond_1
    const/16 v3, -0x2710

    .line 596
    const-string/jumbo v4, "runPath"

    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v3

    .line 597
    .local v3, "translatedUserId":I
    invoke-direct {p0, v2, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->displayPackageFilePath(Ljava/lang/String;I)I

    move-result v4

    return v4
.end method

.method private runQueryIntentActivities()I
    .locals 10

    .line 1144
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->parseIntentAndUser()Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1147
    .local v0, "intent":Landroid/content/Intent;
    nop

    .line 1149
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mQueryFlags:I

    iget v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 1150
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 1151
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 1152
    .local v2, "pw":Ljava/io/PrintWriter;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_2

    .line 1155
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    if-nez v3, :cond_2

    .line 1156
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " activities found:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1157
    new-instance v5, Landroid/util/PrintWriterPrinter;

    invoke-direct {v5, v2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 1158
    .local v5, "pr":Landroid/util/PrintWriterPrinter;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1159
    const-string v4, "  Activity #"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1160
    const-string v6, "    "

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-boolean v8, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v9, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    .line 1158
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1162
    .end local v3    # "i":I
    .end local v5    # "pr":Landroid/util/PrintWriterPrinter;
    :cond_1
    goto :goto_3

    .line 1163
    :cond_2
    new-instance v4, Landroid/util/PrintWriterPrinter;

    invoke-direct {v4, v2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 1164
    .local v4, "pr":Landroid/util/PrintWriterPrinter;
    const/4 v3, 0x0

    move v9, v3

    .local v9, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v9, v3, :cond_4

    .line 1165
    const-string v5, ""

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-boolean v7, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v8, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    .line 1164
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1153
    .end local v4    # "pr":Landroid/util/PrintWriterPrinter;
    .end local v9    # "i":I
    :cond_3
    :goto_2
    const-string v3, "No activities found"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1171
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "pw":Ljava/io/PrintWriter;
    :cond_4
    :goto_3
    nop

    .line 1172
    const/4 v1, 0x0

    return v1

    .line 1169
    :catch_0
    move-exception v1

    .line 1170
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed calling service"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1145
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1146
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private runQueryIntentReceivers()I
    .locals 10

    .line 1212
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->parseIntentAndUser()Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1215
    .local v0, "intent":Landroid/content/Intent;
    nop

    .line 1217
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mQueryFlags:I

    iget v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 1218
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 1219
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 1220
    .local v2, "pw":Ljava/io/PrintWriter;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_2

    .line 1223
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    if-nez v3, :cond_2

    .line 1224
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " receivers found:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1225
    new-instance v5, Landroid/util/PrintWriterPrinter;

    invoke-direct {v5, v2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 1226
    .local v5, "pr":Landroid/util/PrintWriterPrinter;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1227
    const-string v4, "  Receiver #"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1228
    const-string v6, "    "

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-boolean v8, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v9, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    .line 1226
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1230
    .end local v3    # "i":I
    .end local v5    # "pr":Landroid/util/PrintWriterPrinter;
    :cond_1
    goto :goto_3

    .line 1231
    :cond_2
    new-instance v4, Landroid/util/PrintWriterPrinter;

    invoke-direct {v4, v2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 1232
    .local v4, "pr":Landroid/util/PrintWriterPrinter;
    const/4 v3, 0x0

    move v9, v3

    .local v9, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v9, v3, :cond_4

    .line 1233
    const-string v5, ""

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-boolean v7, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v8, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    .line 1232
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1221
    .end local v4    # "pr":Landroid/util/PrintWriterPrinter;
    .end local v9    # "i":I
    :cond_3
    :goto_2
    const-string v3, "No receivers found"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1239
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "pw":Ljava/io/PrintWriter;
    :cond_4
    :goto_3
    nop

    .line 1240
    const/4 v1, 0x0

    return v1

    .line 1237
    :catch_0
    move-exception v1

    .line 1238
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed calling service"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1213
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1214
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private runQueryIntentServices()I
    .locals 10

    .line 1178
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->parseIntentAndUser()Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1181
    .local v0, "intent":Landroid/content/Intent;
    nop

    .line 1183
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mQueryFlags:I

    iget v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 1184
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 1185
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 1186
    .local v2, "pw":Ljava/io/PrintWriter;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_2

    .line 1189
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    if-nez v3, :cond_2

    .line 1190
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " services found:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1191
    new-instance v5, Landroid/util/PrintWriterPrinter;

    invoke-direct {v5, v2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 1192
    .local v5, "pr":Landroid/util/PrintWriterPrinter;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1193
    const-string v4, "  Service #"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1194
    const-string v6, "    "

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-boolean v8, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v9, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    .line 1192
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1196
    .end local v3    # "i":I
    .end local v5    # "pr":Landroid/util/PrintWriterPrinter;
    :cond_1
    goto :goto_3

    .line 1197
    :cond_2
    new-instance v4, Landroid/util/PrintWriterPrinter;

    invoke-direct {v4, v2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 1198
    .local v4, "pr":Landroid/util/PrintWriterPrinter;
    const/4 v3, 0x0

    move v9, v3

    .local v9, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v9, v3, :cond_4

    .line 1199
    const-string v5, ""

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-boolean v7, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v8, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    .line 1198
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1187
    .end local v4    # "pr":Landroid/util/PrintWriterPrinter;
    .end local v9    # "i":I
    :cond_3
    :goto_2
    const-string v3, "No services found"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1205
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "pw":Ljava/io/PrintWriter;
    :cond_4
    :goto_3
    nop

    .line 1206
    const/4 v1, 0x0

    return v1

    .line 1203
    :catch_0
    move-exception v1

    .line 1204
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed calling service"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1179
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1180
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private runRemoveSplits(Ljava/lang/String;Ljava/util/Collection;)I
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2062
    .local p2, "splitNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2063
    .local v0, "pw":Ljava/io/PrintWriter;
    new-instance v1, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 2064
    .local v1, "sessionParams":Landroid/content/pm/PackageInstaller$SessionParams;
    iget v3, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/2addr v2, v3

    iput v2, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2065
    iput-object p1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 2066
    nop

    .line 2067
    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->doCreateSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result v2

    .line 2068
    .local v2, "sessionId":I
    const/4 v3, 0x1

    .line 2070
    .local v3, "abandonSession":Z
    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, v2, p2, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doRemoveSplits(ILjava/util/Collection;Z)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 2072
    nop

    .line 2082
    if-eqz v3, :cond_0

    .line 2084
    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2086
    goto :goto_0

    .line 2085
    :catch_0
    move-exception v4

    .line 2072
    :cond_0
    :goto_0
    return v6

    .line 2074
    :cond_1
    :try_start_2
    invoke-direct {p0, v2, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doCommitSession(IZ)I

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_3

    .line 2076
    nop

    .line 2082
    if-eqz v3, :cond_2

    .line 2084
    :try_start_3
    invoke-direct {p0, v2, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 2086
    goto :goto_1

    .line 2085
    :catch_1
    move-exception v4

    .line 2076
    :cond_2
    :goto_1
    return v6

    .line 2078
    :cond_3
    const/4 v3, 0x0

    .line 2079
    :try_start_4
    const-string v5, "Success"

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2080
    nop

    .line 2082
    if-eqz v3, :cond_4

    .line 2084
    :try_start_5
    invoke-direct {p0, v2, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 2086
    goto :goto_2

    .line 2085
    :catch_2
    move-exception v5

    .line 2080
    :cond_4
    :goto_2
    return v4

    .line 2082
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_5

    .line 2084
    :try_start_6
    invoke-direct {p0, v2, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 2086
    goto :goto_3

    .line 2085
    :catch_3
    move-exception v4

    .line 2088
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

    .line 2316
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-interface {v0}, Landroid/permission/IPermissionManager;->resetRuntimePermissions()V

    .line 2317
    const/4 v0, 0x0

    return v0
.end method

.method private runResolveActivity()I
    .locals 9

    .line 1121
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->parseIntentAndUser()Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1124
    .local v0, "intent":Landroid/content/Intent;
    nop

    .line 1126
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mQueryFlags:I

    iget v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 1128
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    move-object v8, v2

    .line 1129
    .local v8, "pw":Ljava/io/PrintWriter;
    if-nez v1, :cond_0

    .line 1130
    const-string v2, "No activity found"

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1132
    :cond_0
    new-instance v3, Landroid/util/PrintWriterPrinter;

    invoke-direct {v3, v8}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 1133
    .local v3, "pr":Landroid/util/PrintWriterPrinter;
    const-string v4, ""

    iget-boolean v6, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v7, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v2, p0

    move-object v5, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1137
    .end local v1    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v3    # "pr":Landroid/util/PrintWriterPrinter;
    .end local v8    # "pw":Ljava/io/PrintWriter;
    :goto_0
    nop

    .line 1138
    const/4 v1, 0x0

    return v1

    .line 1135
    :catch_0
    move-exception v1

    .line 1136
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed calling service"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1122
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1123
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private runRollbackApp()I
    .locals 11

    .line 473
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 475
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 476
    .local v1, "packageName":Ljava/lang/String;
    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 477
    const-string v3, "Error: package name not specified"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 478
    return v2

    .line 481
    :cond_0
    new-instance v3, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$1;)V

    .line 483
    .local v3, "receiver":Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
    :try_start_0
    const-string/jumbo v4, "rollback"

    .line 484
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 483
    invoke-static {v4}, Landroid/content/rollback/IRollbackManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/rollback/IRollbackManager;

    move-result-object v4

    .line 486
    .local v4, "rm":Landroid/content/rollback/IRollbackManager;
    const/4 v5, 0x0

    .line 487
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

    .line 488
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

    .line 489
    .local v9, "info":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v9}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 490
    move-object v5, v7

    .line 491
    goto :goto_2

    .line 493
    .end local v9    # "info":Landroid/content/rollback/PackageRollbackInfo;
    :cond_1
    goto :goto_1

    .line 494
    .end local v7    # "r":Landroid/content/rollback/RollbackInfo;
    :cond_2
    :goto_2
    goto :goto_0

    .line 496
    :cond_3
    if-nez v5, :cond_4

    .line 497
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No available rollbacks for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 498
    return v2

    .line 501
    :cond_4
    invoke-virtual {v5}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v6

    .line 502
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v7

    const-string v8, "com.android.shell"

    .line 503
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v9

    .line 501
    invoke-interface {v4, v6, v7, v8, v9}, Landroid/content/rollback/IRollbackManager;->commitRollback(ILandroid/content/pm/ParceledListSlice;Ljava/lang/String;Landroid/content/IntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    .end local v4    # "rm":Landroid/content/rollback/IRollbackManager;
    .end local v5    # "rollback":Landroid/content/rollback/RollbackInfo;
    goto :goto_3

    .line 504
    :catch_0
    move-exception v4

    .line 508
    :goto_3
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v4

    .line 509
    .local v4, "result":Landroid/content/Intent;
    const-string v5, "android.content.rollback.extra.STATUS"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 511
    .local v5, "status":I
    if-nez v5, :cond_5

    .line 512
    const-string v2, "Success"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 513
    const/4 v2, 0x0

    return v2

    .line 515
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    const-string v7, "android.content.rollback.extra.STATUS_MESSAGE"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 515
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 517
    return v2
.end method

.method private runSetAppLink()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2441
    const/4 v0, 0x0

    .line 2444
    .local v0, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 2445
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2446
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 2448
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

    .line 2449
    return v3

    .line 2454
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 2455
    .local v1, "pkg":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 2456
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Error: no package specified."

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2457
    return v3

    .line 2461
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .line 2462
    .local v4, "modeString":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 2463
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    const-string v6, "Error: no app link state specified."

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2464
    return v3

    .line 2468
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

    .line 2490
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

    .line 2491
    return v3

    .line 2486
    :cond_5
    const/4 v5, 0x3

    .line 2487
    .local v5, "newMode":I
    goto :goto_2

    .line 2482
    .end local v5    # "newMode":I
    :cond_6
    const/4 v5, 0x4

    .line 2483
    .restart local v5    # "newMode":I
    goto :goto_2

    .line 2478
    .end local v5    # "newMode":I
    :cond_7
    const/4 v5, 0x1

    .line 2479
    .restart local v5    # "newMode":I
    goto :goto_2

    .line 2474
    .end local v5    # "newMode":I
    :cond_8
    const/4 v5, 0x2

    .line 2475
    .restart local v5    # "newMode":I
    goto :goto_2

    .line 2470
    .end local v5    # "newMode":I
    :cond_9
    const/4 v5, 0x0

    .line 2471
    .restart local v5    # "newMode":I
    nop

    .line 2494
    :goto_2
    const/16 v6, -0x2710

    .line 2495
    const-string/jumbo v7, "runSetAppLink"

    invoke-direct {p0, v0, v6, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v6

    .line 2496
    .local v6, "translatedUserId":I
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v7, v1, v11, v6}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 2497
    .local v7, "info":Landroid/content/pm/PackageInfo;
    const-string v8, "Error: package "

    if-nez v7, :cond_a

    .line 2498
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " not found."

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2499
    return v3

    .line 2502
    :cond_a
    iget-object v9, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v9, v9, 0x10

    if-nez v9, :cond_b

    .line 2503
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " does not handle web links."

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2504
    return v3

    .line 2507
    :cond_b
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v8, v1, v5, v6}, Landroid/content/pm/IPackageManager;->updateIntentVerificationStatus(Ljava/lang/String;II)Z

    move-result v8

    if-nez v8, :cond_c

    .line 2508
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error: unable to update app link status for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2509
    return v3

    .line 2512
    :cond_c
    return v11

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
    .locals 13
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2157
    const/4 v0, 0x0

    .line 2158
    .local v0, "userId":I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    .line 2159
    .local v1, "option":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "--user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2160
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 2163
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v8

    .line 2164
    .local v8, "pkg":Ljava/lang/String;
    if-nez v8, :cond_1

    .line 2165
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: no package or component specified"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2166
    const/4 v2, 0x1

    return v2

    .line 2168
    :cond_1
    const/16 v2, -0x2710

    .line 2169
    const-string/jumbo v3, "runSetEnabledSetting"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v9

    .line 2170
    .local v9, "translatedUserId":I
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    .line 2171
    .local v10, "cn":Landroid/content/ComponentName;
    const-string v11, " new state: "

    const/4 v12, 0x0

    if-nez v10, :cond_2

    .line 2172
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/4 v5, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "shell:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2173
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2172
    move-object v3, v8

    move v4, p1

    move v6, v9

    invoke-interface/range {v2 .. v7}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    .line 2174
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 2176
    invoke-interface {v4, v8, v9}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v4

    .line 2175
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerShellCommand;->enabledSettingToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2174
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2177
    return v12

    .line 2179
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, v10, p1, v12, v9}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V

    .line 2180
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 2182
    invoke-interface {v4, v10, v9}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result v4

    .line 2181
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerShellCommand;->enabledSettingToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2180
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2183
    return v12
.end method

.method private runSetHarmfulAppWarning()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3032
    const/4 v0, -0x2

    .line 3035
    .local v0, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 3036
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3037
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 3039
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

    .line 3040
    const/4 v1, -0x1

    return v1

    .line 3044
    :cond_1
    const/16 v1, -0x2710

    .line 3045
    const-string/jumbo v3, "runSetHarmfulAppWarning"

    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v1

    .line 3046
    .local v1, "translatedUserId":I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 3047
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .line 3049
    .local v4, "warning":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v5, v3, v4, v1}, Landroid/content/pm/IPackageManager;->setHarmfulAppWarning(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 3051
    const/4 v5, 0x0

    return v5
.end method

.method private runSetHiddenSetting(Z)I
    .locals 7
    .param p1, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2188
    const/4 v0, 0x0

    .line 2189
    .local v0, "userId":I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    .line 2190
    .local v1, "option":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "--user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2191
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 2194
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 2195
    .local v2, "pkg":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 2196
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: no package or component specified"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2197
    const/4 v3, 0x1

    return v3

    .line 2199
    :cond_1
    const/16 v3, -0x2710

    .line 2200
    const-string/jumbo v4, "runSetHiddenSetting"

    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v3

    .line 2201
    .local v3, "translatedUserId":I
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, v2, p1, v3}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z

    .line 2202
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " new hidden state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 2203
    invoke-interface {v6, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2202
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2204
    const/4 v4, 0x0

    return v4
.end method

.method private runSetHomeActivity()I
    .locals 15

    .line 2919
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2920
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 2922
    .local v1, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "opt":Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    .line 2923
    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, 0x4f7b216b

    if-eq v6, v7, :cond_1

    :cond_0
    goto :goto_1

    :cond_1
    const-string v6, "--user"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    :goto_1
    move v4, v2

    :goto_2
    if-eqz v4, :cond_2

    .line 2928
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2929
    return v5

    .line 2925
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    .line 2926
    nop

    .line 2929
    goto :goto_0

    .line 2934
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 2935
    .local v2, "component":Ljava/lang/String;
    const/16 v6, 0x2f

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_4

    .line 2937
    move-object v6, v2

    .local v6, "pkgName":Ljava/lang/String;
    goto :goto_4

    .line 2940
    .end local v6    # "pkgName":Ljava/lang/String;
    :cond_4
    if-eqz v2, :cond_5

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    .line 2941
    .local v6, "componentName":Landroid/content/ComponentName;
    :goto_3
    if-nez v6, :cond_6

    .line 2942
    const-string v4, "Error: invalid component name"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2943
    return v5

    .line 2945
    :cond_6
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 2947
    .local v6, "pkgName":Ljava/lang/String;
    :goto_4
    const/16 v7, -0x2710

    .line 2948
    const-string/jumbo v8, "runSetHomeActivity"

    invoke-direct {p0, v1, v7, v8}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v7

    .line 2949
    .local v7, "translatedUserId":I
    new-instance v8, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v8}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    move-object v14, v8

    .line 2950
    .local v14, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;"
    new-instance v13, Landroid/os/RemoteCallback;

    new-instance v8, Lcom/android/server/pm/-$$Lambda$PackageManagerShellCommand$v3vXA2YvCwaE7J0QfR1IQ122iTI;

    invoke-direct {v8, v14}, Lcom/android/server/pm/-$$Lambda$PackageManagerShellCommand$v3vXA2YvCwaE7J0QfR1IQ122iTI;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-direct {v13, v8}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 2952
    .local v13, "callback":Landroid/os/RemoteCallback;
    :try_start_0
    const-string/jumbo v8, "role"

    .line 2953
    invoke-static {v8}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    .line 2952
    invoke-static {v8}, Landroid/app/role/IRoleManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/role/IRoleManager;

    move-result-object v8

    .line 2954
    .local v8, "roleManager":Landroid/app/role/IRoleManager;
    const-string v9, "android.app.role.HOME"

    const/4 v11, 0x0

    move-object v10, v6

    move v12, v7

    invoke-interface/range {v8 .. v13}, Landroid/app/role/IRoleManager;->addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;IILandroid/os/RemoteCallback;)V

    .line 2956
    invoke-virtual {v14}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 2957
    .local v9, "success":Z
    if-eqz v9, :cond_7

    .line 2958
    const-string v10, "Success"

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2959
    return v4

    .line 2961
    :cond_7
    const-string v4, "Error: Failed to set default home."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2962
    return v5

    .line 2964
    .end local v8    # "roleManager":Landroid/app/role/IRoleManager;
    .end local v9    # "success":Z
    :catch_0
    move-exception v4

    .line 2965
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2966
    return v5
.end method

.method private runSetInstallLocation()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1554
    const-string v0, "Error: install location has to be a number."

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 1555
    .local v1, "arg":Ljava/lang/String;
    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 1556
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v3, "Error: no install location specified."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1557
    return v2

    .line 1560
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1564
    .local v3, "loc":I
    nop

    .line 1565
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, v3}, Landroid/content/pm/IPackageManager;->setInstallLocation(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1566
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1567
    return v2

    .line 1569
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 1561
    .end local v3    # "loc":I
    :catch_0
    move-exception v3

    .line 1562
    .local v3, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1563
    return v2
.end method

.method private runSetInstaller()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2971
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2972
    .local v0, "targetPackage":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 2974
    .local v1, "installerPackageName":Ljava/lang/String;
    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2979
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, v0, v1}, Landroid/content/pm/IPackageManager;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V

    .line 2980
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Success"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2981
    const/4 v2, 0x0

    return v2

    .line 2975
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Must provide both target and installer package names"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2976
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

    .line 2321
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2322
    .local v0, "permission":Ljava/lang/String;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2323
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: no permission specified"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2324
    return v1

    .line 2326
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 2327
    .local v2, "enforcedRaw":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 2328
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: no enforcement specified"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2329
    return v1

    .line 2331
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v1, v0, v3}, Landroid/permission/IPermissionManager;->setPermissionEnforced(Ljava/lang/String;Z)V

    .line 2332
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

    .line 1846
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 1849
    .local v2, "pw":Ljava/io/PrintWriter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v9

    .line 1850
    .local v9, "packageName":Ljava/lang/String;
    const-string v0, "android"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 1852
    .local v10, "isBootImage":Z
    const/4 v0, 0x0

    .line 1854
    .local v0, "codePath":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    .local v11, "opt":Ljava/lang/String;
    const/4 v12, 0x0

    const/4 v13, -0x1

    if-eqz v3, :cond_4

    .line 1855
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

    .line 1864
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown arg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 1865
    return v13

    .line 1857
    :cond_2
    if-eqz v10, :cond_3

    .line 1858
    const-string v3, "--code-path cannot be used for the boot image."

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 1859
    return v13

    .line 1861
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 1862
    nop

    .line 1865
    goto :goto_0

    .line 1870
    :cond_4
    const/4 v3, 0x0

    .line 1871
    .local v3, "baseCodePath":Ljava/lang/String;
    if-nez v10, :cond_7

    .line 1872
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, v9, v12, v12}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 1874
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v4, :cond_5

    .line 1875
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package not found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 1876
    return v13

    .line 1878
    :cond_5
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v3

    .line 1879
    if-nez v0, :cond_6

    .line 1880
    move-object v0, v3

    move-object v14, v0

    move-object v15, v3

    goto :goto_3

    .line 1879
    :cond_6
    move-object v14, v0

    move-object v15, v3

    goto :goto_3

    .line 1871
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_7
    move-object v14, v0

    move-object v15, v3

    .line 1885
    .end local v0    # "codePath":Ljava/lang/String;
    .end local v3    # "baseCodePath":Ljava/lang/String;
    .local v14, "codePath":Ljava/lang/String;
    .local v15, "baseCodePath":Ljava/lang/String;
    :goto_3
    new-instance v7, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$1;)V

    .line 1887
    .local v7, "callback":Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-nez v0, :cond_8

    .line 1888
    const-string/jumbo v0, "root"

    goto :goto_4

    :cond_8
    const-string v0, "com.android.shell"

    :goto_4
    move-object v8, v0

    .line 1889
    .local v8, "callingPackage":Ljava/lang/String;
    if-eqz v10, :cond_9

    .line 1890
    const/4 v0, 0x1

    goto :goto_5

    :cond_9
    move v0, v12

    :goto_5
    move v6, v0

    .line 1891
    .local v6, "profileType":I
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getArtManager()Landroid/content/pm/dex/IArtManager;

    move-result-object v0

    invoke-interface {v0, v6, v8}, Landroid/content/pm/dex/IArtManager;->isRuntimeProfilingEnabled(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1892
    const-string v0, "Error: Runtime profiling is not enabled"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1893
    return v13

    .line 1895
    :cond_a
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getArtManager()Landroid/content/pm/dex/IArtManager;

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

    .line 1897
    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->waitTillDone()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1898
    const-string v0, "Error: callback not called"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1899
    invoke-static {v7}, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->access$300(Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;)I

    move-result v0

    return v0

    .line 1903
    :cond_b
    :try_start_0
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-static {v7}, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->access$400(Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 1904
    .local v3, "inStream":Ljava/io/InputStream;
    if-nez v10, :cond_d

    :try_start_1
    invoke-static {v15, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_6

    .line 1905
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_d
    :goto_6
    const-string v0, ""

    :goto_7
    move-object v4, v0

    .line 1906
    .local v4, "outputFileSuffix":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/misc/profman/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".prof"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 1908
    .local v5, "outputProfilePath":Ljava/lang/String;
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v6, v0

    .line 1909
    .local v6, "outStream":Ljava/io/OutputStream;
    :try_start_2
    invoke-static {v3, v6}, Llibcore/io/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1910
    :try_start_3
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 1912
    .end local v6    # "outStream":Ljava/io/OutputStream;
    const/16 v0, 0x1a4

    invoke-static {v5, v0}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1913
    .end local v4    # "outputFileSuffix":Ljava/lang/String;
    .end local v5    # "outputProfilePath":Ljava/lang/String;
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1917
    .end local v3    # "inStream":Ljava/io/InputStream;
    nop

    .line 1918
    return v12

    .line 1908
    .restart local v3    # "inStream":Ljava/io/InputStream;
    .restart local v4    # "outputFileSuffix":Ljava/lang/String;
    .restart local v5    # "outputProfilePath":Ljava/lang/String;
    .restart local v6    # "outStream":Ljava/io/OutputStream;
    :catchall_0
    move-exception v0

    move-object v8, v0

    :try_start_5
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v12, v0

    :try_start_6
    invoke-virtual {v8, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

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
    :goto_8
    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1903
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

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object v5, v0

    :try_start_8
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

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
    :goto_9
    throw v4
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_8} :catch_0

    .line 1913
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

    .line 1914
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

    .line 1915
    invoke-virtual {v0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1916
    return v13
.end method

.method private runStreamingInstall()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1244
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->makeInstallParams()Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;

    move-result-object v0

    .line 1245
    .local v0, "params":Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-nez v1, :cond_0

    .line 1246
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 1247
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->getStreamingDataLoaderParams(Landroid/os/ShellCommand;)Landroid/content/pm/DataLoaderParams;

    move-result-object v2

    .line 1246
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageInstaller$SessionParams;->setDataLoaderParams(Landroid/content/pm/DataLoaderParams;)V

    .line 1249
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->doRunInstall(Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;)I

    move-result v1

    return v1
.end method

.method private runSuspend(Z)I
    .locals 20
    .param p1, "suspendedState"    # Z

    .line 2208
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 2209
    .local v2, "pw":Ljava/io/PrintWriter;
    const/4 v0, 0x0

    .line 2210
    .local v0, "userId":I
    const/4 v3, 0x0

    .line 2211
    .local v3, "dialogMessage":Ljava/lang/String;
    new-instance v4, Landroid/os/PersistableBundle;

    invoke-direct {v4}, Landroid/os/PersistableBundle;-><init>()V

    .line 2212
    .local v4, "appExtras":Landroid/os/PersistableBundle;
    new-instance v5, Landroid/os/PersistableBundle;

    invoke-direct {v5}, Landroid/os/PersistableBundle;-><init>()V

    move-object v6, v3

    move v3, v0

    .line 2214
    .end local v0    # "userId":I
    .local v3, "userId":I
    .local v5, "launcherExtras":Landroid/os/PersistableBundle;
    .local v6, "dialogMessage":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .local v7, "opt":Ljava/lang/String;
    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v0, :cond_6

    .line 2215
    const/4 v0, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/4 v11, 0x4

    sparse-switch v10, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v10, "--user"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_2

    :sswitch_1
    const-string v8, "--les"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x6

    goto :goto_2

    :sswitch_2
    const-string v8, "--lel"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x5

    goto :goto_2

    :sswitch_3
    const-string v8, "--led"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x7

    goto :goto_2

    :sswitch_4
    const-string v8, "--aes"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x3

    goto :goto_2

    :sswitch_5
    const-string v8, "--ael"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x2

    goto :goto_2

    :sswitch_6
    const-string v8, "--aed"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v11

    goto :goto_2

    :sswitch_7
    const-string v8, "--dialogMessage"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v9

    goto :goto_2

    :goto_1
    move v8, v0

    :goto_2
    packed-switch v8, :pswitch_data_0

    .line 2248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: Unknown option: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2249
    return v9

    .line 2228
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2229
    .local v0, "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 2230
    .local v8, "val":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 2231
    goto :goto_5

    .line 2234
    :cond_1
    const-string v9, "--a"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v4

    goto :goto_3

    :cond_2
    move-object v9, v5

    .line 2235
    .local v9, "bundleToInsert":Landroid/os/PersistableBundle;
    :goto_3
    invoke-virtual {v7, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x64

    if-eq v10, v11, :cond_5

    const/16 v11, 0x6c

    if-eq v10, v11, :cond_4

    const/16 v11, 0x73

    if-eq v10, v11, :cond_3

    goto :goto_4

    .line 2243
    :cond_3
    invoke-virtual {v9, v0, v8}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 2237
    :cond_4
    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v9, v0, v10, v11}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 2238
    goto :goto_4

    .line 2240
    :cond_5
    invoke-static {v8}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-virtual {v9, v0, v10, v11}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    .line 2241
    nop

    .line 2246
    :goto_4
    goto :goto_5

    .line 2220
    .end local v0    # "key":Ljava/lang/String;
    .end local v8    # "val":Ljava/lang/String;
    .end local v9    # "bundleToInsert":Landroid/os/PersistableBundle;
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2221
    .end local v6    # "dialogMessage":Ljava/lang/String;
    .local v0, "dialogMessage":Ljava/lang/String;
    move-object v6, v0

    goto :goto_5

    .line 2217
    .end local v0    # "dialogMessage":Ljava/lang/String;
    .restart local v6    # "dialogMessage":Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 2218
    .end local v3    # "userId":I
    .local v0, "userId":I
    move v3, v0

    .line 2249
    .end local v0    # "userId":I
    .restart local v3    # "userId":I
    :goto_5
    goto/16 :goto_0

    .line 2253
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v10

    .line 2254
    .local v10, "packageName":Ljava/lang/String;
    if-nez v10, :cond_7

    .line 2255
    const-string v0, "Error: package name not specified"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2256
    return v9

    .line 2259
    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "root"

    goto :goto_6

    :cond_8
    const-string v0, "com.android.shell"

    :goto_6
    move-object/from16 v18, v0

    .line 2262
    .local v18, "callingPackage":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2263
    new-instance v0, Landroid/content/pm/SuspendDialogInfo$Builder;

    invoke-direct {v0}, Landroid/content/pm/SuspendDialogInfo$Builder;-><init>()V

    .line 2264
    invoke-virtual {v0, v6}, Landroid/content/pm/SuspendDialogInfo$Builder;->setMessage(Ljava/lang/String;)Landroid/content/pm/SuspendDialogInfo$Builder;

    move-result-object v0

    .line 2265
    invoke-virtual {v0}, Landroid/content/pm/SuspendDialogInfo$Builder;->build()Landroid/content/pm/SuspendDialogInfo;

    move-result-object v0

    move-object v11, v0

    .local v0, "info":Landroid/content/pm/SuspendDialogInfo;
    goto :goto_7

    .line 2267
    .end local v0    # "info":Landroid/content/pm/SuspendDialogInfo;
    :cond_9
    const/4 v0, 0x0

    move-object v11, v0

    .line 2270
    .local v11, "info":Landroid/content/pm/SuspendDialogInfo;
    :goto_7
    const/16 v0, -0x2710

    :try_start_0
    const-string/jumbo v12, "runSuspend"

    .line 2271
    invoke-direct {v1, v3, v0, v12}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v0

    .line 2272
    .local v0, "translatedUserId":I
    iget-object v12, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    new-array v13, v9, [Ljava/lang/String;

    aput-object v10, v13, v8

    .line 2273
    invoke-virtual {v4}, Landroid/os/PersistableBundle;->size()I

    move-result v14

    const/4 v15, 0x0

    if-lez v14, :cond_a

    move-object/from16 v16, v4

    goto :goto_8

    :cond_a
    move-object/from16 v16, v15

    .line 2274
    :goto_8
    invoke-virtual {v5}, Landroid/os/PersistableBundle;->size()I

    move-result v14

    if-lez v14, :cond_b

    move-object/from16 v17, v5

    goto :goto_9

    :cond_b
    move-object/from16 v17, v15

    .line 2272
    :goto_9
    move/from16 v14, p1

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v11

    move/from16 v19, v0

    invoke-interface/range {v12 .. v19}, Landroid/content/pm/IPackageManager;->setPackagesSuspendedAsUser([Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SuspendDialogInfo;Ljava/lang/String;I)[Ljava/lang/String;

    .line 2276
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Package "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " new suspended state: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 2277
    invoke-interface {v13, v10, v0}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2276
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2278
    return v8

    .line 2279
    .end local v0    # "translatedUserId":I
    :catch_0
    move-exception v0

    .line 2280
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2281
    return v9

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

    .line 2557
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2558
    .local v0, "size":Ljava/lang/String;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2559
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: no size specified"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2560
    return v1

    .line 2562
    :cond_0
    const-wide/16 v2, 0x1

    .line 2563
    .local v2, "multiplier":J
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 2564
    .local v4, "len":I
    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 2565
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

    .line 2566
    :cond_2
    :goto_0
    const/16 v6, 0x4b

    if-eq v5, v6, :cond_8

    const/16 v6, 0x6b

    if-ne v5, v6, :cond_3

    goto :goto_3

    .line 2568
    :cond_3
    const/16 v6, 0x4d

    if-eq v5, v6, :cond_7

    const/16 v6, 0x6d

    if-ne v5, v6, :cond_4

    goto :goto_2

    .line 2570
    :cond_4
    const/16 v6, 0x47

    if-eq v5, v6, :cond_6

    const/16 v6, 0x67

    if-ne v5, v6, :cond_5

    goto :goto_1

    .line 2573
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

    .line 2574
    return v1

    .line 2571
    :cond_6
    :goto_1
    const-wide/32 v2, 0x40000000

    goto :goto_4

    .line 2569
    :cond_7
    :goto_2
    const-wide/32 v2, 0x100000

    goto :goto_4

    .line 2567
    :cond_8
    :goto_3
    const-wide/16 v2, 0x400

    .line 2576
    :goto_4
    add-int/lit8 v6, v4, -0x1

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-wide v8, v2

    move-object v2, v0

    .line 2580
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

    .line 2584
    .local v16, "sizeVal":J
    nop

    .line 2585
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2586
    .local v0, "volumeUuid":Ljava/lang/String;
    const-string/jumbo v1, "internal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2587
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_6

    .line 2586
    :cond_9
    move-object v3, v0

    .line 2589
    .end local v0    # "volumeUuid":Ljava/lang/String;
    .local v3, "volumeUuid":Ljava/lang/String;
    :goto_6
    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;-><init>()V

    move-object v6, v0

    .line 2590
    .local v6, "obs":Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;
    move-object/from16 v1, p0

    iget-object v10, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/4 v14, 0x2

    move-object v11, v3

    move-wide/from16 v12, v16

    move-object v15, v6

    invoke-interface/range {v10 .. v15}, Landroid/content/pm/IPackageManager;->freeStorageAndNotify(Ljava/lang/String;JILandroid/content/pm/IPackageDataObserver;)V

    .line 2592
    monitor-enter v6

    .line 2593
    :goto_7
    :try_start_1
    iget-boolean v0, v6, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_a

    .line 2595
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2597
    :goto_8
    goto :goto_7

    .line 2596
    :catch_0
    move-exception v0

    goto :goto_8

    .line 2599
    :cond_a
    :try_start_3
    monitor-exit v6

    .line 2600
    return v7

    .line 2599
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 2581
    .end local v3    # "volumeUuid":Ljava/lang/String;
    .end local v6    # "obs":Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;
    .end local v16    # "sizeVal":J
    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 2582
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

    .line 2583
    return v1
.end method

.method private runUninstall()I
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1971
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 1972
    .local v1, "pw":Ljava/io/PrintWriter;
    const/4 v2, 0x0

    .line 1973
    .local v2, "flags":I
    const/4 v3, -0x1

    .line 1974
    .local v3, "userId":I
    const-wide/16 v4, -0x1

    move-wide v11, v4

    .line 1977
    .local v11, "versionCode":J
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    move-object v13, v4

    .local v13, "opt":Ljava/lang/String;
    const/4 v5, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v4, :cond_7

    .line 1978
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

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

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v5, v7

    goto :goto_1

    :cond_2
    const-string v4, "--user"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v5, v15

    goto :goto_1

    :cond_3
    const-string v4, "-k"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v5, v14

    :goto_1
    if-eqz v5, :cond_6

    if-eq v5, v15, :cond_5

    if-eq v5, v7, :cond_4

    .line 1989
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1990
    return v15

    .line 1986
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1987
    .end local v11    # "versionCode":J
    .local v4, "versionCode":J
    move-wide v11, v4

    goto :goto_2

    .line 1983
    .end local v4    # "versionCode":J
    .restart local v11    # "versionCode":J
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v3

    .line 1984
    goto :goto_2

    .line 1980
    :cond_6
    or-int/lit8 v2, v2, 0x1

    .line 1981
    nop

    .line 1990
    :goto_2
    goto :goto_0

    .line 1994
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v10

    .line 1995
    .local v10, "packageName":Ljava/lang/String;
    if-nez v10, :cond_8

    .line 1996
    const-string v4, "Error: package name not specified"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1997
    return v15

    .line 2001
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getRemainingArgs()Ljava/util/ArrayList;

    move-result-object v9

    .line 2002
    .local v9, "splitNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 2003
    invoke-direct {v0, v10, v9}, Lcom/android/server/pm/PackageManagerShellCommand;->runRemoveSplits(Ljava/lang/String;Ljava/util/Collection;)I

    move-result v4

    return v4

    .line 2006
    :cond_9
    if-ne v3, v5, :cond_a

    .line 2007
    or-int/lit8 v2, v2, 0x2

    .line 2009
    :cond_a
    nop

    .line 2010
    const-string/jumbo v4, "runUninstall"

    invoke-direct {v0, v3, v14, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v8

    .line 2011
    .local v8, "translatedUserId":I
    new-instance v4, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$1;)V

    move-object/from16 v22, v4

    .line 2012
    .local v22, "receiver":Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
    const-class v4, Landroid/content/pm/PackageManagerInternal;

    .line 2013
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/content/pm/PackageManagerInternal;

    .line 2015
    .local v6, "internal":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v6, v10}, Landroid/content/pm/PackageManagerInternal;->isApexPackage(Ljava/lang/String;)Z

    move-result v4

    const-string v7, "]"

    if-eqz v4, :cond_b

    .line 2016
    nop

    .line 2017
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v16

    .line 2016
    move-object v4, v6

    move-object v5, v10

    move-object/from16 v23, v6

    move-object v14, v7

    .end local v6    # "internal":Landroid/content/pm/PackageManagerInternal;
    .local v23, "internal":Landroid/content/pm/PackageManagerInternal;
    move-wide v6, v11

    move/from16 v24, v8

    .end local v8    # "translatedUserId":I
    .local v24, "translatedUserId":I
    move-object/from16 v25, v9

    .end local v9    # "splitNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v25, "splitNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v9, v16

    move-object v15, v10

    .end local v10    # "packageName":Ljava/lang/String;
    .local v15, "packageName":Ljava/lang/String;
    move v10, v2

    invoke-virtual/range {v4 .. v10}, Landroid/content/pm/PackageManagerInternal;->uninstallApex(Ljava/lang/String;JILandroid/content/IntentSender;I)V

    move/from16 v6, v24

    goto/16 :goto_5

    .line 2019
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v23    # "internal":Landroid/content/pm/PackageManagerInternal;
    .end local v24    # "translatedUserId":I
    .end local v25    # "splitNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "internal":Landroid/content/pm/PackageManagerInternal;
    .restart local v8    # "translatedUserId":I
    .restart local v9    # "splitNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "packageName":Ljava/lang/String;
    :cond_b
    move-object/from16 v23, v6

    move-object v14, v7

    move/from16 v24, v8

    move-object/from16 v25, v9

    move-object v15, v10

    .end local v6    # "internal":Landroid/content/pm/PackageManagerInternal;
    .end local v8    # "translatedUserId":I
    .end local v9    # "splitNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "packageName":Ljava/lang/String;
    .restart local v15    # "packageName":Ljava/lang/String;
    .restart local v23    # "internal":Landroid/content/pm/PackageManagerInternal;
    .restart local v24    # "translatedUserId":I
    .restart local v25    # "splitNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_f

    .line 2020
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/high16 v5, 0x4000000

    move/from16 v6, v24

    .end local v24    # "translatedUserId":I
    .local v6, "translatedUserId":I
    invoke-interface {v4, v15, v5, v6}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 2022
    .local v4, "info":Landroid/content/pm/PackageInfo;
    if-nez v4, :cond_c

    .line 2023
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure [not installed for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2024
    const/4 v5, 0x1

    return v5

    .line 2026
    :cond_c
    const/4 v5, 0x1

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v7, v5

    if-eqz v7, :cond_d

    const/4 v5, 0x1

    goto :goto_3

    :cond_d
    const/4 v5, 0x0

    .line 2031
    .local v5, "isSystem":Z
    :goto_3
    if-eqz v5, :cond_10

    .line 2034
    const-string v7, "com.tmobile.echolocate"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 2035
    const-string v7, "Failure [can not uninstall com.tmobile.echolocate ]"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2036
    const/4 v7, 0x1

    return v7

    .line 2039
    :cond_e
    or-int/lit8 v2, v2, 0x4

    goto :goto_4

    .line 2019
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    .end local v5    # "isSystem":Z
    .end local v6    # "translatedUserId":I
    .restart local v24    # "translatedUserId":I
    :cond_f
    move/from16 v6, v24

    .line 2042
    .end local v24    # "translatedUserId":I
    .restart local v6    # "translatedUserId":I
    :cond_10
    :goto_4
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v4}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v16

    new-instance v4, Landroid/content/pm/VersionedPackage;

    invoke-direct {v4, v15, v11, v12}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    const/16 v18, 0x0

    .line 2044
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v20

    .line 2042
    move-object/from16 v17, v4

    move/from16 v19, v2

    move/from16 v21, v6

    invoke-interface/range {v16 .. v21}, Landroid/content/pm/IPackageInstaller;->uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;I)V

    .line 2047
    :goto_5
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v4

    .line 2048
    .local v4, "result":Landroid/content/Intent;
    const-string v5, "android.content.pm.extra.STATUS"

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 2050
    .local v5, "status":I
    if-nez v5, :cond_11

    .line 2051
    const-string v7, "Success"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2052
    const/4 v7, 0x0

    return v7

    .line 2054
    :cond_11
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2055
    const-string v8, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2054
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2056
    const/4 v7, 0x1

    return v7
.end method

.method private runValidate()I
    .locals 3

    .line 329
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 330
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, "identifier":Ljava/lang/String;
    const-string v2, "169414761"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 332
    const-string v2, "applied"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 334
    :cond_0
    const-string/jumbo v2, "missing"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 336
    :goto_0
    const/4 v2, 0x0

    return v2
.end method

.method private runreconcileSecondaryDexFiles()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1817
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 1818
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, v0}, Landroid/content/pm/IPackageManager;->reconcileSecondaryDexFiles(Ljava/lang/String;)V

    .line 1819
    const/4 v1, 0x0

    return v1
.end method

.method private setParamsSize(Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;Ljava/util/List;)V
    .locals 22
    .param p1, "params"    # Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 522
    .local p2, "inPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p1

    const-string v2, "Error: Failed to parse APK file: "

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v3, v0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_4

    const/4 v3, 0x0

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v5, "-"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v10, p0

    goto/16 :goto_4

    .line 526
    :cond_0
    const-wide/16 v5, 0x0

    .line 528
    .local v5, "sessionSize":J
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v7

    .line 529
    .local v7, "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    .line 530
    .local v9, "inPath":Ljava/lang/String;
    const-string/jumbo v0, "r"

    move-object/from16 v10, p0

    invoke-virtual {v10, v9, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v11

    .line 531
    .local v11, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v11, :cond_2

    .line 536
    nop

    .line 537
    :try_start_0
    invoke-virtual {v7}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v0

    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    .line 536
    invoke-static {v0, v12, v9, v3}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 538
    .local v0, "apkLiteResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/PackageParser$ApkLite;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v12

    if-nez v12, :cond_1

    .line 544
    new-instance v12, Landroid/content/pm/PackageParser$PackageLite;

    const/4 v14, 0x0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v13

    move-object v15, v13

    check-cast v15, Landroid/content/pm/PackageParser$ApkLite;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v13, v12

    invoke-direct/range {v13 .. v21}, Landroid/content/pm/PackageParser$PackageLite;-><init>(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;[Ljava/lang/String;[Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I)V

    .line 546
    .local v12, "pkgLite":Landroid/content/pm/PackageParser$PackageLite;
    iget-object v13, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v13, v13, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    .line 547
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v14

    .line 546
    invoke-static {v12, v13, v14}, Lcom/android/internal/content/PackageHelper;->calculateInstalledSize(Landroid/content/pm/PackageParser$PackageLite;Ljava/lang/String;Ljava/io/FileDescriptor;)J

    move-result-wide v13
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v5, v13

    .line 554
    .end local v0    # "apkLiteResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/PackageParser$ApkLite;>;"
    .end local v12    # "pkgLite":Landroid/content/pm/PackageParser$PackageLite;
    :try_start_1
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 556
    goto :goto_1

    .line 555
    :catch_0
    move-exception v0

    .line 557
    nop

    .line 558
    .end local v9    # "inPath":Ljava/lang/String;
    .end local v11    # "fd":Landroid/os/ParcelFileDescriptor;
    :goto_1
    goto :goto_0

    .line 539
    .restart local v0    # "apkLiteResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/PackageParser$ApkLite;>;"
    .restart local v9    # "inPath":Ljava/lang/String;
    .restart local v11    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_1
    :try_start_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ": "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 542
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v12

    invoke-direct {v3, v8, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v5    # "sessionSize":J
    .end local v7    # "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    .end local v9    # "inPath":Ljava/lang/String;
    .end local v11    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local p0    # "this":Lcom/android/server/pm/PackageManagerShellCommand;
    .end local p1    # "params":Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    .end local p2    # "inPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 553
    .end local v0    # "apkLiteResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/PackageParser$ApkLite;>;"
    .restart local v5    # "sessionSize":J
    .restart local v7    # "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    .restart local v9    # "inPath":Ljava/lang/String;
    .restart local v11    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerShellCommand;
    .restart local p1    # "params":Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    .restart local p2    # "inPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_2

    .line 548
    :catch_1
    move-exception v0

    .line 549
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 550
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v5    # "sessionSize":J
    .end local v7    # "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    .end local v9    # "inPath":Ljava/lang/String;
    .end local v11    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local p0    # "this":Lcom/android/server/pm/PackageManagerShellCommand;
    .end local p1    # "params":Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    .end local p2    # "inPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 554
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v5    # "sessionSize":J
    .restart local v7    # "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    .restart local v9    # "inPath":Ljava/lang/String;
    .restart local v11    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerShellCommand;
    .restart local p1    # "params":Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    .restart local p2    # "inPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    :try_start_4
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 556
    goto :goto_3

    .line 555
    :catch_2
    move-exception v0

    .line 557
    :goto_3
    throw v2

    .line 532
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Can\'t open file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 533
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 560
    .end local v9    # "inPath":Ljava/lang/String;
    .end local v11    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_3
    move-object/from16 v10, p0

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V

    .line 561
    return-void

    .line 522
    .end local v5    # "sessionSize":J
    .end local v7    # "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    :cond_4
    move-object/from16 v10, p0

    move-object/from16 v4, p2

    .line 523
    :goto_4
    return-void
.end method

.method private setSessionFlag(Ljava/lang/String;Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;)Z
    .locals 5
    .param p1, "flag"    # Ljava/lang/String;
    .param p2, "sessionDump"    # Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;

    .line 973
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7a952fb5

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v1, :cond_3

    const v1, -0x6e25b510

    if-eq v0, v1, :cond_2

    const v1, 0x4ebe19e2

    if-eq v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v0, "--only-ready"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :cond_2
    const-string v0, "--only-sessionid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :cond_3
    const-string v0, "--only-parent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_4

    .line 984
    return v2

    .line 981
    :cond_4
    iput-boolean v4, p2, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;->onlySessionId:Z

    .line 982
    goto :goto_2

    .line 978
    :cond_5
    iput-boolean v4, p2, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;->onlyReady:Z

    .line 979
    goto :goto_2

    .line 975
    :cond_6
    iput-boolean v4, p2, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;->onlyParent:Z

    .line 976
    nop

    .line 986
    :goto_2
    return v4
.end method

.method private translateUserId(IILjava/lang/String;)I
    .locals 8
    .param p1, "userId"    # I
    .param p2, "allUserId"    # I
    .param p3, "logContext"    # Ljava/lang/String;

    .line 3099
    const/16 v0, -0x2710

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v4, v0

    .line 3100
    .local v4, "allowAll":Z
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 3101
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v5, 0x1

    .line 3100
    const-string/jumbo v7, "pm command"

    move v3, p1

    move-object v6, p3

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 3102
    .local v0, "translatedUserId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    move v1, p2

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    return v1
.end method

.method private uninstallSystemUpdates(Ljava/lang/String;)I
    .locals 14
    .param p1, "packageName"    # Ljava/lang/String;

    .line 427
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 428
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 430
    .local v1, "failedUninstalls":Z
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v4

    .line 432
    .local v4, "installer":Landroid/content/pm/IPackageInstaller;
    const/high16 v3, 0x100000

    const/4 v10, 0x1

    if-nez p1, :cond_0

    .line 433
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 434
    invoke-interface {v5, v3, v2}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 436
    .local v3, "packages":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v5

    move-object v3, v5

    .line 437
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    goto :goto_0

    .line 438
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 439
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v6, p1, v3, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, v5

    .line 442
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    move-object v12, v5

    .line 443
    .local v12, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v12}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 444
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Uninstalling updates to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 445
    new-instance v5, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$1;)V

    move-object v13, v5

    .line 446
    .local v13, "receiver":Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
    new-instance v5, Landroid/content/pm/VersionedPackage;

    iget-object v6, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v7, v12, Landroid/content/pm/ApplicationInfo;->versionCode:I

    invoke-direct {v5, v6, v7}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 448
    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v8

    const/4 v9, 0x0

    .line 446
    invoke-interface/range {v4 .. v9}, Landroid/content/pm/IPackageInstaller;->uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;I)V

    .line 450
    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v5

    .line 451
    .local v5, "result":Landroid/content/Intent;
    const-string v6, "android.content.pm.extra.STATUS"

    invoke-virtual {v5, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 453
    .local v6, "status":I
    if-eqz v6, :cond_1

    .line 454
    const/4 v1, 0x1

    .line 455
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t uninstall package: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    .end local v5    # "result":Landroid/content/Intent;
    .end local v6    # "status":I
    .end local v12    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "receiver":Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
    :cond_1
    goto :goto_1

    .line 464
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v4    # "installer":Landroid/content/pm/IPackageInstaller;
    :cond_2
    nop

    .line 465
    if-eqz v1, :cond_3

    .line 466
    return v2

    .line 468
    :cond_3
    const-string v2, "Success"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 469
    return v10

    .line 459
    :catch_0
    move-exception v3

    .line 460
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 460
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 463
    return v2
.end method


# virtual methods
.method public synthetic lambda$runGetOemPermissions$0$PackageManagerShellCommand(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "granted"    # Ljava/lang/Boolean;

    .line 2422
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

    .line 163
    if-nez p1, :cond_0

    .line 164
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 169
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
    const-string/jumbo v2, "install"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "get-moduleinfo"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x40

    goto/16 :goto_1

    :sswitch_2
    const-string/jumbo v2, "log-visibility"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x41

    goto/16 :goto_1

    :sswitch_3
    const-string/jumbo v2, "reconcile-secondary-dex-files"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x18

    goto/16 :goto_1

    :sswitch_4
    const-string/jumbo v2, "set-install-location"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x12

    goto/16 :goto_1

    :sswitch_5
    const-string v2, "disable-until-used"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x22

    goto/16 :goto_1

    :sswitch_6
    const-string v2, "disable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x20

    goto/16 :goto_1

    :sswitch_7
    const-string/jumbo v2, "install-write"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x10

    goto/16 :goto_1

    :sswitch_8
    const-string/jumbo v2, "set-home-activity"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x37

    goto/16 :goto_1

    :sswitch_9
    const-string/jumbo v2, "trim-caches"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x31

    goto/16 :goto_1

    :sswitch_a
    const-string v2, "force-dex-opt"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x19

    goto/16 :goto_1

    :sswitch_b
    const-string/jumbo v2, "query-activities"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    goto/16 :goto_1

    :sswitch_c
    const-string v2, "compile"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x17

    goto/16 :goto_1

    :sswitch_d
    const-string/jumbo v2, "set-app-link"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x2f

    goto/16 :goto_1

    :sswitch_e
    const-string/jumbo v2, "set-user-restriction"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x34

    goto/16 :goto_1

    :sswitch_f
    const-string/jumbo v2, "uninstall-system-updates"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x3e

    goto/16 :goto_1

    :sswitch_10
    const-string/jumbo v2, "install-destroy"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xc

    goto/16 :goto_1

    :sswitch_11
    const-string/jumbo v2, "snapshot-profile"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x1c

    goto/16 :goto_1

    :sswitch_12
    const-string/jumbo v2, "rollback-app"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x3f

    goto/16 :goto_1

    :sswitch_13
    const-string/jumbo v2, "reset-permissions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x2a

    goto/16 :goto_1

    :sswitch_14
    const-string/jumbo v2, "install-remove"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xf

    goto/16 :goto_1

    :sswitch_15
    const-string/jumbo v2, "install-add-session"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x14

    goto/16 :goto_1

    :sswitch_16
    const-string v2, "get-harmful-app-warning"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x3c

    goto/16 :goto_1

    :sswitch_17
    const-string/jumbo v2, "install-existing"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x11

    goto/16 :goto_1

    :sswitch_18
    const-string v2, "grant"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x28

    goto/16 :goto_1

    :sswitch_19
    const-string v2, "clear"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x1e

    goto/16 :goto_1

    :sswitch_1a
    const-string/jumbo v2, "install-streaming"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x9

    goto/16 :goto_1

    :sswitch_1b
    const-string v2, "get-max-users"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x35

    goto/16 :goto_1

    :sswitch_1c
    const-string/jumbo v2, "move-package"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x15

    goto/16 :goto_1

    :sswitch_1d
    const-string/jumbo v2, "path"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v7

    goto/16 :goto_1

    :sswitch_1e
    const-string/jumbo v2, "list"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto/16 :goto_1

    :sswitch_1f
    const-string v2, "hide"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x24

    goto/16 :goto_1

    :sswitch_20
    const-string v2, "dump"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    goto/16 :goto_1

    :sswitch_21
    const-string/jumbo v2, "move-primary-storage"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x16

    goto/16 :goto_1

    :sswitch_22
    const-string v2, "default-state"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x23

    goto/16 :goto_1

    :sswitch_23
    const-string/jumbo v2, "install-create"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xe

    goto/16 :goto_1

    :sswitch_24
    const-string/jumbo v2, "install-commit"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xd

    goto/16 :goto_1

    :sswitch_25
    const-string/jumbo v2, "unsuspend"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x27

    goto/16 :goto_1

    :sswitch_26
    const-string/jumbo v2, "set-permission-enforced"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x2b

    goto/16 :goto_1

    :sswitch_27
    const-string/jumbo v2, "remove-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x33

    goto/16 :goto_1

    :sswitch_28
    const-string v2, "get-stagedsessions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x3d

    goto/16 :goto_1

    :sswitch_29
    const-string/jumbo v2, "query-receivers"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x7

    goto/16 :goto_1

    :sswitch_2a
    const-string v2, "bg-dexopt-job"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x1a

    goto/16 :goto_1

    :sswitch_2b
    const-string/jumbo v2, "query-services"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x6

    goto/16 :goto_1

    :sswitch_2c
    const-string v2, "create-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x32

    goto/16 :goto_1

    :sswitch_2d
    const-string v2, "get-app-link"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x30

    goto/16 :goto_1

    :sswitch_2e
    const-string/jumbo v2, "uninstall"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x1d

    goto/16 :goto_1

    :sswitch_2f
    const-string v2, "bypass-staged-installer-check"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x42

    goto/16 :goto_1

    :sswitch_30
    const-string/jumbo v2, "install-incremental"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xa

    goto/16 :goto_1

    :sswitch_31
    const-string/jumbo v2, "unhide"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x25

    goto/16 :goto_1

    :sswitch_32
    const-string v2, "dump-profiles"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x1b

    goto/16 :goto_1

    :sswitch_33
    const-string/jumbo v2, "revoke"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x29

    goto/16 :goto_1

    :sswitch_34
    const-string v2, "disable-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x21

    goto/16 :goto_1

    :sswitch_35
    const-string v2, "get-privapp-permissions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x2c

    goto/16 :goto_1

    :sswitch_36
    const-string v2, "get-oem-permissions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x2e

    goto/16 :goto_1

    :sswitch_37
    const-string v2, "get-privapp-deny-permissions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x2d

    goto/16 :goto_1

    :sswitch_38
    const-string/jumbo v2, "resolve-activity"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto/16 :goto_1

    :sswitch_39
    const-string v2, "get-instantapp-resolver"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x39

    goto/16 :goto_1

    :sswitch_3a
    const-string v2, "enable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x1f

    goto :goto_1

    :sswitch_3b
    const-string v2, "has-feature"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x3a

    goto :goto_1

    :sswitch_3c
    const-string/jumbo v2, "validate"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v6

    goto :goto_1

    :sswitch_3d
    const-string/jumbo v2, "set-installer"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x38

    goto :goto_1

    :sswitch_3e
    const-string v2, "get-max-running-users"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x36

    goto :goto_1

    :sswitch_3f
    const-string/jumbo v2, "suspend"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x26

    goto :goto_1

    :sswitch_40
    const-string v2, "get-install-location"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x13

    goto :goto_1

    :sswitch_41
    const-string/jumbo v2, "install-abandon"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xb

    goto :goto_1

    :sswitch_42
    const-string/jumbo v2, "set-harmful-app-warning"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x3b

    goto :goto_1

    :goto_0
    move v2, v1

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 307
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 305
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runBypassStagedInstallerCheck()I

    move-result v1

    return v1

    .line 303
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runLogVisibility()I

    move-result v1

    return v1

    .line 301
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetModuleInfo()I

    move-result v1

    return v1

    .line 299
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runRollbackApp()I

    move-result v1

    return v1

    .line 296
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->uninstallSystemUpdates(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 294
    .end local v2    # "packageName":Ljava/lang/String;
    :pswitch_5
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListStagedSessions()I

    move-result v1

    return v1

    .line 292
    :pswitch_6
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetHarmfulAppWarning()I

    move-result v1

    return v1

    .line 290
    :pswitch_7
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetHarmfulAppWarning()I

    move-result v1

    return v1

    .line 288
    :pswitch_8
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runHasFeature()I

    move-result v1

    return v1

    .line 286
    :pswitch_9
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetInstantAppResolver()I

    move-result v1

    return v1

    .line 284
    :pswitch_a
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetInstaller()I

    move-result v1

    return v1

    .line 282
    :pswitch_b
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetHomeActivity()I

    move-result v1

    return v1

    .line 280
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetMaxRunningUsers()I

    move-result v1

    return v1

    .line 278
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetMaxUsers()I

    move-result v1

    return v1

    .line 276
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetUserRestriction()I

    move-result v1

    return v1

    .line 274
    :pswitch_f
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runRemoveUser()I

    move-result v1

    return v1

    .line 272
    :pswitch_10
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runCreateUser()I

    move-result v1

    return v1

    .line 270
    :pswitch_11
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runTrimCaches()I

    move-result v1

    return v1

    .line 268
    :pswitch_12
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetAppLink()I

    move-result v1

    return v1

    .line 266
    :pswitch_13
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetAppLink()I

    move-result v1

    return v1

    .line 264
    :pswitch_14
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetOemPermissions()I

    move-result v1

    return v1

    .line 262
    :pswitch_15
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetPrivappDenyPermissions()I

    move-result v1

    return v1

    .line 260
    :pswitch_16
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetPrivappPermissions()I

    move-result v1

    return v1

    .line 258
    :pswitch_17
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetPermissionEnforced()I

    move-result v1

    return v1

    .line 256
    :pswitch_18
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runResetPermissions()I

    move-result v1

    return v1

    .line 254
    :pswitch_19
    invoke-direct {p0, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->runGrantRevokePermission(Z)I

    move-result v1

    return v1

    .line 252
    :pswitch_1a
    invoke-direct {p0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->runGrantRevokePermission(Z)I

    move-result v1

    return v1

    .line 250
    :pswitch_1b
    invoke-direct {p0, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->runSuspend(Z)I

    move-result v1

    return v1

    .line 248
    :pswitch_1c
    invoke-direct {p0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->runSuspend(Z)I

    move-result v1

    return v1

    .line 246
    :pswitch_1d
    invoke-direct {p0, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetHiddenSetting(Z)I

    move-result v1

    return v1

    .line 244
    :pswitch_1e
    invoke-direct {p0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetHiddenSetting(Z)I

    move-result v1

    return v1

    .line 242
    :pswitch_1f
    invoke-direct {p0, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetEnabledSetting(I)I

    move-result v1

    return v1

    .line 239
    :pswitch_20
    invoke-direct {p0, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetEnabledSetting(I)I

    move-result v1

    return v1

    .line 236
    :pswitch_21
    invoke-direct {p0, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetEnabledSetting(I)I

    move-result v1

    return v1

    .line 234
    :pswitch_22
    invoke-direct {p0, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetEnabledSetting(I)I

    move-result v1

    return v1

    .line 232
    :pswitch_23
    invoke-direct {p0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetEnabledSetting(I)I

    move-result v1

    return v1

    .line 230
    :pswitch_24
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runClear()I

    move-result v1

    return v1

    .line 228
    :pswitch_25
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runUninstall()I

    move-result v1

    return v1

    .line 226
    :pswitch_26
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSnapshotProfile()I

    move-result v1

    return v1

    .line 224
    :pswitch_27
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runDumpProfiles()I

    move-result v1

    return v1

    .line 222
    :pswitch_28
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runDexoptJob()I

    move-result v1

    return v1

    .line 220
    :pswitch_29
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runForceDexOpt()I

    move-result v1

    return v1

    .line 218
    :pswitch_2a
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runreconcileSecondaryDexFiles()I

    move-result v1

    return v1

    .line 216
    :pswitch_2b
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runCompile()I

    move-result v1

    return v1

    .line 214
    :pswitch_2c
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runMovePrimaryStorage()I

    move-result v1

    return v1

    .line 212
    :pswitch_2d
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runMovePackage()I

    move-result v1

    return v1

    .line 210
    :pswitch_2e
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallAddSession()I

    move-result v1

    return v1

    .line 208
    :pswitch_2f
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetInstallLocation()I

    move-result v1

    return v1

    .line 206
    :pswitch_30
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetInstallLocation()I

    move-result v1

    return v1

    .line 204
    :pswitch_31
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallExisting()I

    move-result v1

    return v1

    .line 202
    :pswitch_32
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallWrite()I

    move-result v1

    return v1

    .line 200
    :pswitch_33
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallRemove()I

    move-result v1

    return v1

    .line 198
    :pswitch_34
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallCreate()I

    move-result v1

    return v1

    .line 196
    :pswitch_35
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallCommit()I

    move-result v1

    return v1

    .line 194
    :pswitch_36
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallAbandon()I

    move-result v1

    return v1

    .line 191
    :pswitch_37
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runIncrementalInstall()I

    move-result v1

    return v1

    .line 189
    :pswitch_38
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runStreamingInstall()I

    move-result v1

    return v1

    .line 187
    :pswitch_39
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstall()I

    move-result v1

    return v1

    .line 185
    :pswitch_3a
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runQueryIntentReceivers()I

    move-result v1

    return v1

    .line 183
    :pswitch_3b
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runQueryIntentServices()I

    move-result v1

    return v1

    .line 181
    :pswitch_3c
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runQueryIntentActivities()I

    move-result v1

    return v1

    .line 179
    :pswitch_3d
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runResolveActivity()I

    move-result v1

    return v1

    .line 177
    :pswitch_3e
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runList()I

    move-result v1

    return v1

    .line 175
    :pswitch_3f
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runDump()I

    move-result v1

    return v1

    .line 173
    :pswitch_40
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runValidate()I

    move-result v1

    return v1

    .line 171
    :pswitch_41
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runPath()I

    move-result v1

    return v1

    .line 308
    .local v2, "nextArg":Ljava/lang/String;
    :goto_2
    if-nez v2, :cond_3

    .line 309
    const-string v3, "-l"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 310
    invoke-direct {p0, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPackages(Z)I

    move-result v1

    return v1

    .line 311
    :cond_2
    const-string v3, "-lf"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 312
    invoke-direct {p0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPackages(Z)I

    move-result v1

    return v1

    .line 314
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 315
    const-string v3, "-p"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 316
    invoke-direct {p0, v2, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->displayPackageFilePath(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 319
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 322
    .end local v2    # "nextArg":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 323
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d5639bf -> :sswitch_42
        -0x7540f3bd -> :sswitch_41
        -0x737996c2 -> :sswitch_40
        -0x6e635fc4 -> :sswitch_3f
        -0x6e1196e6 -> :sswitch_3e
        -0x67c8bc23 -> :sswitch_3d
        -0x54b6e6ea -> :sswitch_3c
        -0x504e493d -> :sswitch_3b
        -0x4d6ada7d -> :sswitch_3a
        -0x4b90d264 -> :sswitch_39
        -0x495fa230 -> :sswitch_38
        -0x41b47fcb -> :sswitch_37
        -0x410d7369 -> :sswitch_36
        -0x3fd1a8ae -> :sswitch_35
        -0x3d838470 -> :sswitch_34
        -0x37b0f17a -> :sswitch_33
        -0x36d5185d -> :sswitch_32
        -0x321a08a5 -> :sswitch_31
        -0x2c20e158 -> :sswitch_30
        -0x29ee859f -> :sswitch_2f
        -0x2549d71e -> :sswitch_2e
        -0x2525a743 -> :sswitch_2d
        -0x202b5604 -> :sswitch_2c
        -0x1b57243d -> :sswitch_2b
        -0x1a825bcc -> :sswitch_2a
        -0x1a490a61 -> :sswitch_29
        -0x18d650e6 -> :sswitch_28
        -0x143f388c -> :sswitch_27
        -0xd1dc6eb -> :sswitch_26
        -0x85b5c7d -> :sswitch_25
        -0x7e40657 -> :sswitch_24
        -0x7bd8e92 -> :sswitch_23
        -0x6dac5fb -> :sswitch_22
        -0x533744c -> :sswitch_21
        0x2f39f4 -> :sswitch_20
        0x30dd42 -> :sswitch_1f
        0x32b09e -> :sswitch_1e
        0x346425 -> :sswitch_1d
        0x120f24a -> :sswitch_1c
        0x5296aa8 -> :sswitch_1b
        0x5951ab0 -> :sswitch_1a
        0x5a5b64d -> :sswitch_19
        0x5e0c11c -> :sswitch_18
        0x664b17d -> :sswitch_17
        0x8569735 -> :sswitch_16
        0xe265438 -> :sswitch_15
        0x1127c8f6 -> :sswitch_14
        0x156ea506 -> :sswitch_13
        0x1678dbb8 -> :sswitch_12
        0x1bde3ea0 -> :sswitch_11
        0x2f90ddc8 -> :sswitch_10
        0x3142fb77 -> :sswitch_f
        0x372512d5 -> :sswitch_e
        0x372e1931 -> :sswitch_d
        0x38a75a33 -> :sswitch_c
        0x3ec9c212 -> :sswitch_b
        0x4308171b -> :sswitch_a
        0x4634ad3c -> :sswitch_9
        0x55326612 -> :sswitch_8
        0x5bb0b12d -> :sswitch_7
        0x639e22e8 -> :sswitch_6
        0x653560d1 -> :sswitch_5
        0x681c75b2 -> :sswitch_4
        0x6a555f29 -> :sswitch_3
        0x6cc4393b -> :sswitch_2
        0x6ecbfff1 -> :sswitch_1
        0x74ae259b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_36
        :pswitch_35
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
    .locals 9

    .line 3538
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 3539
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Package manager (package) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3540
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3541
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3542
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3543
    const-string v2, "  path [--user USER_ID] PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3544
    const-string v2, "    Print the path to the .apk of the given PACKAGE."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3545
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3546
    const-string v2, "  dump PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3547
    const-string v2, "    Print various system state associated with the given PACKAGE."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3548
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3549
    const-string v2, "  has-feature FEATURE_NAME [version]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3550
    const-string v2, "    Prints true and returns exit status 0 when system has a FEATURE_NAME,"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3551
    const-string v2, "    otherwise prints false and returns exit status 1"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3552
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3553
    const-string v2, "  list features"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3554
    const-string v2, "    Prints all features of the system."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3555
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3556
    const-string v2, "  list instrumentation [-f] [TARGET-PACKAGE]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3557
    const-string v2, "    Prints all test packages; optionally only those targeting TARGET-PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3558
    const-string v2, "    Options:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3559
    const-string v2, "      -f: dump the name of the .apk file containing the test package"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3560
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3561
    const-string v2, "  list libraries"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3562
    const-string v2, "    Prints all system libraries."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3563
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3564
    const-string v2, "  list packages [-f] [-d] [-e] [-s] [-3] [-i] [-l] [-u] [-U] "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3565
    const-string v2, "      [--show-versioncode] [--apex-only] [--uid UID] [--user USER_ID] [FILTER]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3566
    const-string v2, "    Prints all packages; optionally only those whose name contains"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3567
    const-string v2, "    the text in FILTER.  Options are:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3568
    const-string v2, "      -f: see their associated file"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3569
    const-string v2, "      -a: all known packages (but excluding APEXes)"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3570
    const-string v2, "      -d: filter to only show disabled packages"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3571
    const-string v2, "      -e: filter to only show enabled packages"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3572
    const-string v2, "      -s: filter to only show system packages"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3573
    const-string v2, "      -3: filter to only show third party packages"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3574
    const-string v2, "      -i: see the installer for the packages"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3575
    const-string v2, "      -l: ignored (used for compatibility with older releases)"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3576
    const-string v2, "      -U: also show the package UID"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3577
    const-string v2, "      -u: also include uninstalled packages"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3578
    const-string v2, "      --show-versioncode: also show the version code"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3579
    const-string v2, "      --apex-only: only show APEX packages"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3580
    const-string v2, "      --uid UID: filter to only show packages with the given UID"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3581
    const-string v2, "      --user USER_ID: only list packages belonging to the given user"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3582
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3583
    const-string v2, "  list permission-groups"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3584
    const-string v2, "    Prints all known permission groups."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3585
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3586
    const-string v2, "  list permissions [-g] [-f] [-d] [-u] [GROUP]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3587
    const-string v2, "    Prints all known permissions; optionally only those in GROUP.  Options are:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3588
    const-string v2, "      -g: organize by group"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3589
    const-string v2, "      -f: print all information"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3590
    const-string v2, "      -s: short summary"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3591
    const-string v2, "      -d: only list dangerous permissions"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3592
    const-string v2, "      -u: list only the permissions users will see"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3593
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3594
    const-string v2, "  list staged-sessions [--only-ready] [--only-sessionid] [--only-parent]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3595
    const-string v2, "    Prints all staged sessions."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3596
    const-string v2, "      --only-ready: show only staged sessions that are ready"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3597
    const-string v2, "      --only-sessionid: show only sessionId of each session"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3598
    const-string v2, "      --only-parent: hide all children sessions"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3599
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3600
    const-string v2, "  list users"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3601
    const-string v3, "    Prints all users."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3602
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3603
    const-string v3, "  resolve-activity [--brief] [--components] [--query-flags FLAGS]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3604
    const-string v3, "       [--user USER_ID] INTENT"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3605
    const-string v4, "    Prints the activity that resolves to the given INTENT."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3606
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3607
    const-string v4, "  query-activities [--brief] [--components] [--query-flags FLAGS]"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3608
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3609
    const-string v4, "    Prints all activities that can handle the given INTENT."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3610
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3611
    const-string v4, "  query-services [--brief] [--components] [--query-flags FLAGS]"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3612
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3613
    const-string v4, "    Prints all services that can handle the given INTENT."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3614
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3615
    const-string v4, "  query-receivers [--brief] [--components] [--query-flags FLAGS]"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3616
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3617
    const-string v3, "    Prints all broadcast receivers that can handle the given INTENT."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3618
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3619
    const-string v3, "  install [-rtfdgw] [-i PACKAGE] [--user USER_ID|all|current]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3620
    const-string v3, "       [-p INHERIT_PACKAGE] [--install-location 0/1/2]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3621
    const-string v4, "       [--install-reason 0/1/2/3/4] [--originating-uri URI]"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3622
    const-string v5, "       [--referrer URI] [--abi ABI_NAME] [--force-sdk]"

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3623
    const-string v6, "       [--preload] [--instant] [--full] [--dont-kill]"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3624
    const-string v7, "       [--enable-rollback]"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3625
    const-string v7, "       [--force-uuid internal|UUID] [--pkg PACKAGE] [-S BYTES]"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3626
    const-string v7, "       [--apex] [--wait TIMEOUT]"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3627
    const-string v7, "       [PATH [SPLIT...]|-]"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3628
    const-string v7, "    Install an application.  Must provide the apk data to install, either as"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3629
    const-string v7, "    file path(s) or \'-\' to read from stdin.  Options are:"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3630
    const-string v7, "      -R: disallow replacement of existing application"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3631
    const-string v7, "      -t: allow test packages"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3632
    const-string v7, "      -i: specify package name of installer owning the app"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3633
    const-string v7, "      -f: install application on internal flash"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3634
    const-string v7, "      -d: allow version code downgrade (debuggable packages only)"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3635
    const-string v7, "      -p: partial application install (new split on top of existing pkg)"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3636
    const-string v7, "      -g: grant all runtime permissions"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3637
    const-string v7, "      -S: size in bytes of package, required for stdin"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3638
    const-string v8, "      --user: install under the given user."

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3639
    const-string v8, "      --dont-kill: installing a new feature split, don\'t kill running app"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3640
    const-string v8, "      --restrict-permissions: don\'t whitelist restricted permissions at install"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3641
    const-string v8, "      --originating-uri: set URI where app was downloaded from"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3642
    const-string v8, "      --referrer: set URI that instigated the install of the app"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3643
    const-string v8, "      --pkg: specify expected package name of app being installed"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3644
    const-string v8, "      --abi: override the default ABI of the platform"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3645
    const-string v8, "      --instant: cause the app to be installed as an ephemeral install app"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3646
    const-string v8, "      --full: cause the app to be installed as a non-ephemeral full app"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3647
    const-string v8, "      --install-location: force the install location:"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3648
    const-string v8, "          0=auto, 1=internal only, 2=prefer external"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3649
    const-string v8, "      --install-reason: indicates why the app is being installed:"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3650
    const-string v8, "          0=unknown, 1=admin policy, 2=device restore,"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3651
    const-string v8, "          3=device setup, 4=user request"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3652
    const-string v8, "      --force-uuid: force install on to disk volume with given UUID"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3653
    const-string v8, "      --apex: install an .apex file, not an .apk"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3654
    const-string v8, "      --wait: when performing staged install, wait TIMEOUT milliseconds"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3655
    const-string v8, "          for pre-reboot verification to complete. If TIMEOUT is not"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3656
    const-string v8, "          specified it will wait for 60000 milliseconds."

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3657
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3658
    const-string v8, "  install-existing [--user USER_ID|all|current]"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3659
    const-string v8, "       [--instant] [--full] [--wait] [--restrict-permissions] PACKAGE"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3660
    const-string v8, "    Installs an existing application for a new user.  Options are:"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3661
    const-string v8, "      --user: install for the given user."

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3662
    const-string v8, "      --instant: install as an instant app"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3663
    const-string v8, "      --full: install as a full app"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3664
    const-string v8, "      --wait: wait until the package is installed"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3665
    const-string v8, "      --restrict-permissions: don\'t whitelist restricted permissions"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3666
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3667
    const-string v8, "  install-create [-lrtsfdg] [-i PACKAGE] [--user USER_ID|all|current]"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3668
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3669
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3670
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3671
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3672
    const-string v3, "       [--force-uuid internal|UUID] [--pkg PACKAGE] [--apex] [-S BYTES]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3673
    const-string v3, "       [--multi-package] [--staged]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3674
    const-string v3, "    Like \"install\", but starts an install session.  Use \"install-write\""

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3675
    const-string v3, "    to push data into the session, and \"install-commit\" to finish."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3676
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3677
    const-string v3, "  install-write [-S BYTES] SESSION_ID SPLIT_NAME [PATH|-]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3678
    const-string v3, "    Write an apk into the given install session.  If the path is \'-\', data"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3679
    const-string v3, "    will be read from stdin.  Options are:"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3680
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3681
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3682
    const-string v3, "  install-remove SESSION_ID SPLIT..."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3683
    const-string v3, "    Mark SPLIT(s) as removed in the given install session."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3684
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3685
    const-string v3, "  install-add-session MULTI_PACKAGE_SESSION_ID CHILD_SESSION_IDs"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3686
    const-string v3, "    Add one or more session IDs to a multi-package session."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3687
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3688
    const-string v3, "  install-commit SESSION_ID"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3689
    const-string v3, "    Commit the given active install session, installing the app."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3690
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3691
    const-string v3, "  install-abandon SESSION_ID"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3692
    const-string v3, "    Delete the given active install session."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3693
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3694
    const-string v3, "  set-install-location LOCATION"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3695
    const-string v3, "    Changes the default install location.  NOTE this is only intended for debugging;"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3696
    const-string v3, "    using this can cause applications to break and other undersireable behavior."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3697
    const-string v3, "    LOCATION is one of:"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3698
    const-string v3, "    0 [auto]: Let system decide the best location"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3699
    const-string v3, "    1 [internal]: Install on internal device storage"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3700
    const-string v3, "    2 [external]: Install on external media"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3701
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3702
    const-string v3, "  get-install-location"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3703
    const-string v3, "    Returns the current install location: 0, 1 or 2 as per set-install-location."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3704
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3705
    const-string v3, "  move-package PACKAGE [internal|UUID]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3706
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3707
    const-string v3, "  move-primary-storage [internal|UUID]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3708
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3709
    const-string v3, "  uninstall [-k] [--user USER_ID] [--versionCode VERSION_CODE]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3710
    const-string v3, "       PACKAGE [SPLIT...]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3711
    const-string v3, "    Remove the given package name from the system.  May remove an entire app"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3712
    const-string v3, "    if no SPLIT names specified, otherwise will remove only the splits of the"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3713
    const-string v3, "    given app.  Options are:"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3714
    const-string v3, "      -k: keep the data and cache directories around after package removal."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3715
    const-string v3, "      --user: remove the app from the given user."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3716
    const-string v3, "      --versionCode: only uninstall if the app has the given version code."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3717
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3718
    const-string v3, "  clear [--user USER_ID] PACKAGE"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3719
    const-string v3, "    Deletes all data associated with a package."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3720
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3721
    const-string v3, "  enable [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3722
    const-string v3, "  disable [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3723
    const-string v3, "  disable-user [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3724
    const-string v3, "  disable-until-used [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3725
    const-string v3, "  default-state [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3726
    const-string v3, "    These commands change the enabled state of a given package or"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3727
    const-string v3, "    component (written as \"package/class\")."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3728
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3729
    const-string v3, "  hide [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3730
    const-string v3, "  unhide [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3731
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3732
    const-string v3, "  suspend [--user USER_ID] TARGET-PACKAGE"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3733
    const-string v3, "    Suspends the specified package (as user)."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3734
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3735
    const-string v3, "  unsuspend [--user USER_ID] TARGET-PACKAGE"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3736
    const-string v3, "    Unsuspends the specified package (as user)."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3737
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3738
    const-string v3, "  grant [--user USER_ID] PACKAGE PERMISSION"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3739
    const-string v3, "  revoke [--user USER_ID] PACKAGE PERMISSION"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3740
    const-string v3, "    These commands either grant or revoke permissions to apps.  The permissions"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3741
    const-string v3, "    must be declared as used in the app\'s manifest, be runtime permissions"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3742
    const-string v3, "    (protection level dangerous), and the app targeting SDK greater than Lollipop MR1."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3743
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3744
    const-string v3, "  reset-permissions"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3745
    const-string v3, "    Revert all runtime permissions to their default state."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3746
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3747
    const-string v3, "  set-permission-enforced PERMISSION [true|false]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3748
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3749
    const-string v3, "  get-privapp-permissions TARGET-PACKAGE"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3750
    const-string v3, "    Prints all privileged permissions for a package."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3751
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3752
    const-string v3, "  get-privapp-deny-permissions TARGET-PACKAGE"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3753
    const-string v3, "    Prints all privileged permissions that are denied for a package."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3754
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3755
    const-string v3, "  get-oem-permissions TARGET-PACKAGE"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3756
    const-string v3, "    Prints all OEM permissions for a package."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3757
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3758
    const-string v3, "  set-app-link [--user USER_ID] PACKAGE {always|ask|never|undefined}"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3759
    const-string v3, "  get-app-link [--user USER_ID] PACKAGE"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3760
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3761
    const-string v3, "  trim-caches DESIRED_FREE_SPACE [internal|UUID]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3762
    const-string v3, "    Trim cache files to reach the given free space."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3763
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3764
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3765
    const-string v2, "    Lists the current users."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3766
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3767
    const-string v2, "  create-user [--profileOf USER_ID] [--managed] [--restricted] [--ephemeral]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3768
    const-string v2, "      [--guest] [--pre-create-only] [--user-type USER_TYPE] USER_NAME"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3769
    const-string v2, "    Create a new user with the given USER_NAME, printing the new user identifier"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3770
    const-string v2, "    of the user."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3772
    const-string v2, "    USER_TYPE is the name of a user type, e.g. android.os.usertype.profile.MANAGED."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3773
    const-string v2, "      If not specified, the default user type is android.os.usertype.full.SECONDARY."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3774
    const-string v2, "      --managed is shorthand for \'--user-type android.os.usertype.profile.MANAGED\'."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3775
    const-string v2, "      --restricted is shorthand for \'--user-type android.os.usertype.full.RESTRICTED\'."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3776
    const-string v2, "      --guest is shorthand for \'--user-type android.os.usertype.full.GUEST\'."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3777
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3778
    const-string v2, "  remove-user USER_ID"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3779
    const-string v2, "    Remove the user with the given USER_IDENTIFIER, deleting all data"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3780
    const-string v2, "    associated with that user"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3781
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3782
    const-string v2, "  set-user-restriction [--user USER_ID] RESTRICTION VALUE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3783
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3784
    const-string v2, "  get-max-users"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3785
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3786
    const-string v2, "  get-max-running-users"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3787
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3788
    const-string v2, "  compile [-m MODE | -r REASON] [-f] [-c] [--split SPLIT_NAME]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3789
    const-string v2, "          [--reset] [--check-prof (true | false)] (-a | TARGET-PACKAGE)"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3790
    const-string v2, "    Trigger compilation of TARGET-PACKAGE or all packages if \"-a\".  Options are:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3791
    const-string v2, "      -a: compile all packages"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3792
    const-string v2, "      -c: clear profile data before compiling"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3793
    const-string v2, "      -f: force compilation even if not needed"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3794
    const-string v2, "      -m: select compilation mode"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3795
    const-string v2, "          MODE is one of the dex2oat compiler filters:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3796
    const-string v2, "            assume-verified"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3797
    const-string v2, "            extract"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3798
    const-string v2, "            verify"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3799
    const-string v2, "            quicken"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3800
    const-string v2, "            space-profile"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3801
    const-string v2, "            space"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3802
    const-string v2, "            speed-profile"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3803
    const-string v2, "            speed"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3804
    const-string v2, "            everything"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3805
    const-string v2, "      -r: select compilation reason"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3806
    const-string v2, "          REASON is one of:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3807
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 3808
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

    .line 3807
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3810
    .end local v2    # "i":I
    :cond_0
    const-string v2, "      --reset: restore package to its post-install state"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3811
    const-string v2, "      --check-prof (true | false): look at profiles when doing dexopt?"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3812
    const-string v2, "      --secondary-dex: compile app secondary dex files"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3813
    const-string v2, "      --split SPLIT: compile only the given split name"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3814
    const-string v2, "      --compile-layouts: compile layout resources for faster inflation"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3815
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3816
    const-string v2, "  force-dex-opt PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3817
    const-string v2, "    Force immediate execution of dex opt for the given PACKAGE."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3818
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3819
    const-string v2, "  bg-dexopt-job"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3820
    const-string v2, "    Execute the background optimizations immediately."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3821
    const-string v2, "    Note that the command only runs the background optimizer logic. It may"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3822
    const-string v2, "    overlap with the actual job but the job scheduler will not be able to"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3823
    const-string v2, "    cancel it. It will also run even if the device is not in the idle"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3824
    const-string v2, "    maintenance mode."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3825
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3826
    const-string v2, "  reconcile-secondary-dex-files TARGET-PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3827
    const-string v2, "    Reconciles the package secondary dex files with the generated oat files."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3828
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3829
    const-string v2, "  dump-profiles TARGET-PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3830
    const-string v2, "    Dumps method/class profile files to"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3831
    const-string v2, "    /data/misc/profman/TARGET-PACKAGE.txt"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3832
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3833
    const-string v2, "  snapshot-profile TARGET-PACKAGE [--code-path path]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3834
    const-string v2, "    Take a snapshot of the package profiles to"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3835
    const-string v2, "    /data/misc/profman/TARGET-PACKAGE[-code-path].prof"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3837
    const-string v2, "    If TARGET-PACKAGE=android it will take a snapshot of the boot image"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3838
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3839
    const-string v2, "  set-home-activity [--user USER_ID] TARGET-COMPONENT"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3840
    const-string v2, "    Set the default home activity (aka launcher)."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3841
    const-string v2, "    TARGET-COMPONENT can be a package name (com.package.my) or a full"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3842
    const-string v2, "    component (com.package.my/component.name). However, only the package name"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3843
    const-string v2, "    matters: the actual component used will be determined automatically from"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3844
    const-string v2, "    the package."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3845
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3846
    const-string v2, "  set-installer PACKAGE INSTALLER"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3847
    const-string v2, "    Set installer package name"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3848
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3849
    const-string v2, "  get-instantapp-resolver"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3850
    const-string v2, "    Return the name of the component that is the current instant app installer."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3851
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3852
    const-string v2, "  set-harmful-app-warning [--user <USER_ID>] <PACKAGE> [<WARNING>]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3853
    const-string v2, "    Mark the app as harmful with the given warning message."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3854
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3855
    const-string v2, "  get-harmful-app-warning [--user <USER_ID>] <PACKAGE>"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3856
    const-string v2, "    Return the harmful app warning message for the given app, if present"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3857
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 3858
    const-string v2, "  uninstall-system-updates [<PACKAGE>]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3859
    const-string v2, "    Removes updates to the given system application and falls back to its"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3860
    const-string v2, "    /system version. Does nothing if the given package is not a system app."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3861
    const-string v2, "    If no package is specified, removes updates to all system applications."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3862
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3863
    const-string v2, "  get-moduleinfo [--all | --installed] [module-name]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3864
    const-string v2, "    Displays module info. If module-name is specified only that info is shown"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3865
    const-string v2, "    By default, without any argument only installed modules are shown."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3866
    const-string v2, "      --all: show all module info"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3867
    const-string v2, "      --installed: show only installed modules"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3868
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3869
    const-string v2, "  log-visibility [--enable|--disable] <PACKAGE>"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3870
    const-string v2, "    Turns on debug logging when visibility is blocked for the given package."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3871
    const-string v2, "      --enable: turn on debug logging (default)"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3872
    const-string v2, "      --disable: turn off debug logging"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3873
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3874
    invoke-static {v0, v1}, Landroid/content/Intent;->printIntentArgsHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3875
    return-void
.end method

.method public runCreateUser()I
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2614
    const/4 v0, -0x1

    .line 2615
    .local v0, "userId":I
    const/4 v1, 0x0

    .line 2616
    .local v1, "flags":I
    const/4 v2, 0x0

    .line 2618
    .local v2, "userType":Ljava/lang/String;
    const/4 v3, 0x0

    move/from16 v19, v1

    move v1, v0

    move-object v0, v2

    move/from16 v2, v19

    .line 2619
    .local v0, "userType":Ljava/lang/String;
    .local v1, "userId":I
    .local v2, "flags":I
    .local v3, "preCreateOnly":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    move-object v10, v4

    .local v10, "opt":Ljava/lang/String;
    const/4 v11, 0x1

    if-eqz v4, :cond_a

    .line 2620
    const/4 v4, 0x0

    .line 2621
    .local v4, "newUserType":Ljava/lang/String;
    const-string v5, "--profileOf"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2622
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    .line 2623
    :cond_0
    const-string v5, "--managed"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2624
    const-string v4, "android.os.usertype.profile.MANAGED"

    goto :goto_1

    .line 2625
    :cond_1
    const-string v5, "--restricted"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2626
    const-string v4, "android.os.usertype.full.RESTRICTED"

    goto :goto_1

    .line 2627
    :cond_2
    const-string v5, "--guest"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2628
    const-string v4, "android.os.usertype.full.GUEST"

    goto :goto_1

    .line 2629
    :cond_3
    const-string v5, "--demo"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2630
    const-string v4, "android.os.usertype.full.DEMO"

    goto :goto_1

    .line 2631
    :cond_4
    const-string v5, "--ephemeral"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2632
    or-int/lit16 v2, v2, 0x100

    goto :goto_1

    .line 2633
    :cond_5
    const-string v5, "--pre-create-only"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2634
    const/4 v3, 0x1

    goto :goto_1

    .line 2635
    :cond_6
    const-string v5, "--user-type"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2636
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 2642
    :goto_1
    if-eqz v4, :cond_8

    .line 2643
    if-eqz v0, :cond_7

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 2644
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: more than one user type was specified ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " and "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2646
    return v11

    .line 2648
    :cond_7
    move-object v0, v4

    .line 2650
    .end local v4    # "newUserType":Ljava/lang/String;
    :cond_8
    goto/16 :goto_0

    .line 2638
    .restart local v4    # "newUserType":Ljava/lang/String;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: unknown option "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2639
    return v11

    .line 2651
    .end local v4    # "newUserType":Ljava/lang/String;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v12

    .line 2652
    .local v12, "arg":Ljava/lang/String;
    if-nez v12, :cond_b

    if-nez v3, :cond_b

    .line 2653
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Error: no user name specified."

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2654
    return v11

    .line 2656
    :cond_b
    if-eqz v12, :cond_c

    if-eqz v3, :cond_c

    .line 2657
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Warning: name is ignored for pre-created users"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2660
    :cond_c
    move-object v13, v12

    .line 2661
    .local v13, "name":Ljava/lang/String;
    const/4 v14, 0x0

    .line 2662
    .local v14, "info":Landroid/content/pm/UserInfo;
    nop

    .line 2663
    const-string/jumbo v4, "user"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 2662
    invoke-static {v4}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v15

    .line 2664
    .local v15, "um":Landroid/os/IUserManager;
    nop

    .line 2665
    const-string v4, "account"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 2664
    invoke-static {v4}, Landroid/accounts/IAccountManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManager;

    move-result-object v9

    .line 2666
    .local v9, "accm":Landroid/accounts/IAccountManager;
    if-nez v0, :cond_d

    .line 2667
    invoke-static {v2}, Landroid/content/pm/UserInfo;->getDefaultUserType(I)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_2

    .line 2666
    :cond_d
    move-object v8, v0

    .line 2670
    .end local v0    # "userType":Ljava/lang/String;
    .local v8, "userType":Ljava/lang/String;
    :goto_2
    const/16 v16, 0x0

    :try_start_0
    invoke-static {v8}, Landroid/os/UserManager;->isUserTypeRestricted(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_10

    .line 2672
    if-ltz v1, :cond_e

    move v0, v1

    goto :goto_3

    :cond_e
    move/from16 v0, v16

    .line 2673
    .local v0, "parentUserId":I
    :goto_3
    :try_start_1
    invoke-interface {v15, v13, v0}, Landroid/os/IUserManager;->createRestrictedProfileWithThrow(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v4

    move-object v14, v4

    .line 2674
    nop

    .line 2675
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    if-nez v4, :cond_f

    const-string/jumbo v4, "root"

    goto :goto_4

    :cond_f
    const-string v4, "com.android.shell"

    .line 2674
    :goto_4
    invoke-interface {v9, v0, v1, v4}, Landroid/accounts/IAccountManager;->addSharedAccountsFromParentUser(IILjava/lang/String;)V

    .line 2676
    .end local v0    # "parentUserId":I
    move-object/from16 v17, v8

    move-object/from16 v18, v9

    goto :goto_6

    :cond_10
    if-gez v1, :cond_12

    .line 2677
    if-eqz v3, :cond_11

    .line 2678
    invoke-interface {v15, v8}, Landroid/os/IUserManager;->preCreateUserWithThrow(Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    goto :goto_5

    .line 2679
    :cond_11
    invoke-interface {v15, v13, v8, v2}, Landroid/os/IUserManager;->createUserWithThrow(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_5
    move-object v14, v0

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    goto :goto_6

    .line 2683
    :catch_0
    move-exception v0

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    goto :goto_7

    .line 2681
    :cond_12
    const/4 v0, 0x0

    move-object v4, v15

    move-object v5, v13

    move-object v6, v8

    move v7, v2

    move-object/from16 v17, v8

    .end local v8    # "userType":Ljava/lang/String;
    .local v17, "userType":Ljava/lang/String;
    move v8, v1

    move-object/from16 v18, v9

    .end local v9    # "accm":Landroid/accounts/IAccountManager;
    .local v18, "accm":Landroid/accounts/IAccountManager;
    move-object v9, v0

    :try_start_2
    invoke-interface/range {v4 .. v9}, Landroid/os/IUserManager;->createProfileForUserWithThrow(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v14, v0

    .line 2685
    :goto_6
    goto :goto_8

    .line 2683
    :catch_1
    move-exception v0

    goto :goto_7

    .end local v17    # "userType":Ljava/lang/String;
    .end local v18    # "accm":Landroid/accounts/IAccountManager;
    .restart local v8    # "userType":Ljava/lang/String;
    .restart local v9    # "accm":Landroid/accounts/IAccountManager;
    :catch_2
    move-exception v0

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    .line 2684
    .end local v8    # "userType":Ljava/lang/String;
    .end local v9    # "accm":Landroid/accounts/IAccountManager;
    .local v0, "e":Landroid/os/ServiceSpecificException;
    .restart local v17    # "userType":Ljava/lang/String;
    .restart local v18    # "accm":Landroid/accounts/IAccountManager;
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2687
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :goto_8
    if-eqz v14, :cond_13

    .line 2688
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Success: created user id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v14, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2689
    return v16

    .line 2691
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v4, "Error: couldn\'t create User."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2692
    return v11
.end method

.method public runForceDexOpt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1823
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->forceDexOpt(Ljava/lang/String;)V

    .line 1824
    const/4 v0, 0x0

    return v0
.end method

.method public runGetMaxRunningUsers()I
    .locals 4

    .line 2748
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 2749
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 2750
    .local v0, "activityManagerInternal":Landroid/app/ActivityManagerInternal;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Maximum supported running users: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2751
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getMaxRunningUsers()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2750
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2752
    const/4 v1, 0x0

    return v1
.end method

.method public runGetMaxUsers()I
    .locals 3

    .line 2742
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum supported users: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2743
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2742
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2744
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

    .line 1587
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 1588
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1589
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: package name not specified"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1590
    return v1

    .line 1592
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 1593
    .local v2, "volumeUuid":Ljava/lang/String;
    const-string/jumbo v3, "internal"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1594
    const/4 v2, 0x0

    .line 1597
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v0, v2}, Landroid/content/pm/IPackageManager;->movePackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1599
    .local v3, "moveId":I
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, v3}, Landroid/content/pm/IPackageManager;->getMoveStatus(I)I

    move-result v4

    .line 1600
    .local v4, "status":I
    :goto_0
    invoke-static {v4}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1601
    const-wide/16 v5, 0x3e8

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    .line 1602
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v5, v3}, Landroid/content/pm/IPackageManager;->getMoveStatus(I)I

    move-result v4

    goto :goto_0

    .line 1605
    :cond_2
    const/16 v5, -0x64

    if-ne v4, v5, :cond_3

    .line 1606
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v5, "Success"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1607
    const/4 v1, 0x0

    return v1

    .line 1609
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

    .line 1610
    return v1
.end method

.method public runMovePrimaryStorage()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1615
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 1616
    .local v0, "volumeUuid":Ljava/lang/String;
    const-string/jumbo v1, "internal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1617
    const/4 v0, 0x0

    .line 1620
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, v0}, Landroid/content/pm/IPackageManager;->movePrimaryStorage(Ljava/lang/String;)I

    move-result v1

    .line 1622
    .local v1, "moveId":I
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, v1}, Landroid/content/pm/IPackageManager;->getMoveStatus(I)I

    move-result v2

    .line 1623
    .local v2, "status":I
    :goto_0
    invoke-static {v2}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1624
    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 1625
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v1}, Landroid/content/pm/IPackageManager;->getMoveStatus(I)I

    move-result v2

    goto :goto_0

    .line 1628
    :cond_1
    const/16 v3, -0x64

    if-ne v2, v3, :cond_2

    .line 1629
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Success"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1630
    const/4 v3, 0x0

    return v3

    .line 1632
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

    .line 1633
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

    .line 2698
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2699
    .local v0, "arg":Ljava/lang/String;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2700
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: no user id specified."

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2701
    return v1

    .line 2703
    :cond_0
    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    .line 2704
    .local v2, "userId":I
    nop

    .line 2705
    const-string/jumbo v3, "user"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 2704
    invoke-static {v3}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v3

    .line 2706
    .local v3, "um":Landroid/os/IUserManager;
    invoke-interface {v3, v2}, Landroid/os/IUserManager;->removeUser(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2707
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v4, "Success: removed user"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2708
    const/4 v1, 0x0

    return v1

    .line 2710
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

    .line 2711
    return v1
.end method

.method public runSetUserRestriction()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2716
    const/4 v0, 0x0

    .line 2717
    .local v0, "userId":I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    .line 2718
    .local v1, "opt":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2719
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 2722
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 2723
    .local v2, "restriction":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 2725
    .local v3, "arg":Ljava/lang/String;
    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2726
    const/4 v4, 0x1

    .local v4, "value":Z
    goto :goto_0

    .line 2727
    .end local v4    # "value":Z
    :cond_1
    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2728
    const/4 v4, 0x0

    .line 2733
    .restart local v4    # "value":Z
    :goto_0
    const/16 v5, -0x2710

    .line 2734
    const-string/jumbo v6, "runSetUserRestriction"

    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v5

    .line 2735
    .local v5, "translatedUserId":I
    nop

    .line 2736
    const-string/jumbo v6, "user"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 2735
    invoke-static {v6}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v6

    .line 2737
    .local v6, "um":Landroid/os/IUserManager;
    invoke-interface {v6, v2, v4, v5}, Landroid/os/IUserManager;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 2738
    const/4 v7, 0x0

    return v7

    .line 2730
    .end local v4    # "value":Z
    .end local v5    # "translatedUserId":I
    .end local v6    # "um":Landroid/os/IUserManager;
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Error: valid value not specified"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2731
    const/4 v4, 0x1

    return v4
.end method
