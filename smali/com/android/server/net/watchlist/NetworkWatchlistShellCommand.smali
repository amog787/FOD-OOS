.class Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;
.super Landroid/os/ShellCommand;
.source "NetworkWatchlistShellCommand.java"


# instance fields
.field final mContext:Landroid/content/Context;

.field final mService:Lcom/android/server/net/watchlist/NetworkWatchlistService;


# direct methods
.method constructor <init>(Lcom/android/server/net/watchlist/NetworkWatchlistService;Landroid/content/Context;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/net/watchlist/NetworkWatchlistService;
    .param p2, "context"    # Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 43
    iput-object p2, p0, Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;->mContext:Landroid/content/Context;

    .line 44
    iput-object p1, p0, Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;->mService:Lcom/android/server/net/watchlist/NetworkWatchlistService;

    .line 45
    return-void
.end method

.method private runForceGenerateReport()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 91
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 94
    .local v1, "ident":J
    const/4 v3, -0x1

    :try_start_0
    invoke-static {}, Lcom/android/server/net/watchlist/WatchlistConfig;->getInstance()Lcom/android/server/net/watchlist/WatchlistConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/net/watchlist/WatchlistConfig;->isConfigSecure()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 95
    const-string v4, "Error: Cannot force generate report under production config"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    nop

    .line 106
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 96
    return v3

    .line 98
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "network_watchlist_last_report_time"

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 100
    iget-object v4, p0, Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;->mService:Lcom/android/server/net/watchlist/NetworkWatchlistService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/android/server/net/watchlist/NetworkWatchlistService;->forceReportWatchlistForTest(J)Z

    .line 101
    const-string v4, "Success!"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 107
    nop

    .line 108
    const/4 v3, 0x0

    return v3

    .line 106
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 102
    :catch_0
    move-exception v4

    .line 103
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    nop

    .line 106
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 104
    return v3

    .line 106
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private runSetTestConfig()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 75
    .local v0, "pw":Ljava/io/PrintWriter;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "configXmlPath":Ljava/lang/String;
    const-string/jumbo v2, "r"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 77
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_0

    .line 78
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 79
    .local v3, "fileStream":Ljava/io/InputStream;
    invoke-static {}, Lcom/android/server/net/watchlist/WatchlistConfig;->getInstance()Lcom/android/server/net/watchlist/WatchlistConfig;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/net/watchlist/WatchlistConfig;->setTestMode(Ljava/io/InputStream;)V

    .line 81
    .end local v3    # "fileStream":Ljava/io/InputStream;
    :cond_0
    const-string v3, "Success!"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v1    # "configXmlPath":Ljava/lang/String;
    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    nop

    .line 86
    const/4 v1, 0x0

    return v1

    .line 82
    :catch_0
    move-exception v1

    .line 83
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    const/4 v2, -0x1

    return v2
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 5
    .param p1, "cmd"    # Ljava/lang/String;

    .line 49
    if-nez p1, :cond_0

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 55
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x68c30bf2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_3

    const v3, 0x6e84e1aa

    if-eq v2, v3, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const-string v2, "force-generate-report"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_3
    const-string/jumbo v2, "set-test-config"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :goto_0
    move v2, v1

    :goto_1
    if-eqz v2, :cond_5

    if-eq v2, v4, :cond_4

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 59
    :cond_4
    invoke-direct {p0}, Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;->runForceGenerateReport()I

    move-result v1

    return v1

    .line 57
    :cond_5
    invoke-direct {p0}, Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;->runSetTestConfig()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 63
    :catch_0
    move-exception v2

    .line 64
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 66
    .end local v2    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public onHelp()V
    .locals 2

    .line 113
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 114
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Network watchlist manager commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    const-string v1, "  set-test-config your_watchlist_config.xml"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    const-string v1, "    Set network watchlist test config file."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    const-string v1, "  force-generate-report"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    const-string v1, "    Force generate watchlist test report."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    return-void
.end method
