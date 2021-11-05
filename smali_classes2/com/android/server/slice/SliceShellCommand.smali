.class public Lcom/android/server/slice/SliceShellCommand;
.super Landroid/os/ShellCommand;
.source "SliceShellCommand.java"


# instance fields
.field private final mService:Lcom/android/server/slice/SliceManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/slice/SliceManagerService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/slice/SliceManagerService;

    .line 36
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/server/slice/SliceShellCommand;->mService:Lcom/android/server/slice/SliceManagerService;

    .line 38
    return-void
.end method

.method private runGetPermissions(Ljava/lang/String;)I
    .locals 14
    .param p1, "authority"    # Ljava/lang/String;

    .line 66
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, -0x1

    const/16 v2, 0x7d0

    if-eq v0, v2, :cond_0

    .line 67
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/android/server/slice/SliceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "Only shell can get permissions"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 69
    return v1

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/server/slice/SliceShellCommand;->mService:Lcom/android/server/slice/SliceManagerService;

    invoke-virtual {v0}, Lcom/android/server/slice/SliceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 72
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 74
    .local v2, "ident":J
    :try_start_0
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    const-string v5, "content"

    .line 75
    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    .line 76
    invoke-virtual {v4, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    .line 77
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 78
    .local v4, "uri":Landroid/net/Uri;
    const-string v5, "vnd.android.slice"

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/android/server/slice/SliceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is not a slice provider"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    nop

    .line 106
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    return v1

    .line 82
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "get_permissions"

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v6, v7, v7}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 84
    .local v5, "b":Landroid/os/Bundle;
    if-nez v5, :cond_2

    .line 85
    invoke-virtual {p0}, Lcom/android/server/slice/SliceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    const-string v7, "An error occurred getting permissions"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    nop

    .line 106
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 86
    return v1

    .line 88
    :cond_2
    :try_start_2
    const-string v1, "result"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "permissions":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/slice/SliceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    .line 90
    .local v6, "pw":Ljava/io/PrintWriter;
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 91
    .local v7, "listedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v8, 0x0

    if-eqz v1, :cond_3

    array-length v9, v1

    if-eqz v9, :cond_3

    .line 92
    nop

    .line 93
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v1, v8}, Landroid/content/pm/PackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v9

    .line 94
    .local v9, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageInfo;

    .line 95
    .local v11, "app":Landroid/content/pm/PackageInfo;
    iget-object v12, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    iget-object v12, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v7, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    nop

    .end local v11    # "app":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 99
    .end local v9    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_3
    iget-object v9, p0, Lcom/android/server/slice/SliceShellCommand;->mService:Lcom/android/server/slice/SliceManagerService;

    invoke-virtual {v9, p1}, Lcom/android/server/slice/SliceManagerService;->getAllPackagesGranted(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    move v11, v8

    :goto_1
    if-ge v11, v10, :cond_5

    aget-object v12, v9, v11

    .line 100
    .local v12, "pkg":Ljava/lang/String;
    invoke-interface {v7, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 101
    invoke-virtual {v6, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    invoke-interface {v7, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    .end local v12    # "pkg":Ljava/lang/String;
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 106
    .end local v1    # "permissions":[Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v5    # "b":Landroid/os/Bundle;
    .end local v6    # "pw":Ljava/io/PrintWriter;
    .end local v7    # "listedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 107
    nop

    .line 108
    return v8

    .line 106
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 107
    throw v1
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;

    .line 42
    if-nez p1, :cond_0

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/server/slice/SliceShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 45
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0xb0bbb73

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const-string v1, "get-permissions"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v3

    :goto_0
    if-eqz v0, :cond_3

    .line 49
    return v3

    .line 47
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/slice/SliceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/slice/SliceShellCommand;->runGetPermissions(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onHelp()V
    .locals 3

    .line 54
    invoke-virtual {p0}, Lcom/android/server/slice/SliceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 55
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Status bar commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 56
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 57
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 58
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    const-string v2, "  get-permissions <authority>"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 60
    const-string v2, "    List the pkgs that have permission to an authority."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 63
    return-void
.end method
