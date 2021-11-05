.class Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;
.super Landroid/app/IAppTraceRetriever$Stub;
.source "AppExitInfoTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppExitInfoTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppTraceRetriever"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppExitInfoTracker;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppExitInfoTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/AppExitInfoTracker;

    .line 1718
    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-direct {p0}, Landroid/app/IAppTraceRetriever$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getTraceFileDescriptor(Ljava/lang/String;II)Landroid/os/ParcelFileDescriptor;
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "pid"    # I

    .line 1722
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-static {v0}, Lcom/android/server/am/AppExitInfoTracker;->access$300(Lcom/android/server/am/AppExitInfoTracker;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    const-string v1, "getTraceFileDescriptor"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1724
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1727
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1728
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 1729
    .local v9, "callingUid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    .line 1730
    .local v10, "callingUserId":I
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 1732
    .local v11, "userId":I
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-static {v1}, Lcom/android/server/am/AppExitInfoTracker;->access$300(Lcom/android/server/am/AppExitInfoTracker;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-string v7, "getTraceFileDescriptor"

    move v2, v0

    move v3, v9

    move v4, v11

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    .line 1734
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-static {v1}, Lcom/android/server/am/AppExitInfoTracker;->access$300(Lcom/android/server/am/AppExitInfoTracker;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    const-string v2, "getTraceFileDescriptor"

    invoke-virtual {v1, p1, v11, v9, v2}, Lcom/android/server/am/ActivityManagerService;->enforceDumpPermissionForPackage(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    .line 1736
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-static {v1}, Lcom/android/server/am/AppExitInfoTracker;->access$200(Lcom/android/server/am/AppExitInfoTracker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1737
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-static {v2, p1, p2, p3}, Lcom/android/server/am/AppExitInfoTracker;->access$600(Lcom/android/server/am/AppExitInfoTracker;Ljava/lang/String;II)Landroid/app/ApplicationExitInfo;

    move-result-object v2

    .line 1738
    .local v2, "info":Landroid/app/ApplicationExitInfo;
    if-nez v2, :cond_0

    .line 1739
    monitor-exit v1

    return-object v3

    .line 1741
    :cond_0
    invoke-virtual {v2}, Landroid/app/ApplicationExitInfo;->getTraceFile()Ljava/io/File;

    move-result-object v4

    .line 1742
    .local v4, "traceFile":Ljava/io/File;
    if-nez v4, :cond_1

    .line 1743
    monitor-exit v1

    return-object v3

    .line 1745
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1748
    .local v5, "identity":J
    const/high16 v7, 0x10000000

    :try_start_1
    invoke-static {v4, v7}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1753
    :try_start_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v1

    .line 1748
    return-object v3

    .line 1753
    :catchall_0
    move-exception v3

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1754
    nop

    .end local v0    # "callingPid":I
    .end local v9    # "callingUid":I
    .end local v10    # "callingUserId":I
    .end local v11    # "userId":I
    .end local p0    # "this":Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "pid":I
    throw v3

    .line 1750
    .restart local v0    # "callingPid":I
    .restart local v9    # "callingUid":I
    .restart local v10    # "callingUserId":I
    .restart local v11    # "userId":I
    .restart local p0    # "this":Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "uid":I
    .restart local p3    # "pid":I
    :catch_0
    move-exception v7

    .line 1751
    .local v7, "e":Ljava/io/FileNotFoundException;
    nop

    .line 1753
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v1

    .line 1751
    return-object v3

    .line 1755
    .end local v2    # "info":Landroid/app/ApplicationExitInfo;
    .end local v4    # "traceFile":Ljava/io/File;
    .end local v5    # "identity":J
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 1757
    :cond_2
    return-object v3

    .line 1725
    .end local v0    # "callingPid":I
    .end local v9    # "callingUid":I
    .end local v10    # "callingUserId":I
    .end local v11    # "userId":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid package name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
