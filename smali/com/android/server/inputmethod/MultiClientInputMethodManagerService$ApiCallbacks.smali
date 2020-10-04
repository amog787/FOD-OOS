.class final Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;
.super Lcom/android/internal/view/IInputMethodManager$Stub;
.source "MultiClientInputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ApiCallbacks"
.end annotation


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mContext:Landroid/content/Context;

.field private final mInputMethodInfoMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;

.field private final mUserDataMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;

.field private final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userDataMap"    # Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;
    .param p3, "inputMethodInfoMap"    # Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;

    .line 1374
    invoke-direct {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;-><init>()V

    .line 1375
    iput-object p1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mContext:Landroid/content/Context;

    .line 1376
    iput-object p2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mUserDataMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;

    .line 1377
    iput-object p3, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mInputMethodInfoMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;

    .line 1378
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1379
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 1380
    return-void
.end method

.method private checkFocus(III)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "displayId"    # I

    .line 1384
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerInternal;->isInputMethodClientFocus(III)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addClient(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;I)V
    .locals 6
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p3, "selfReportedDisplayId"    # I

    .line 1391
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1392
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1393
    .local v1, "callingPid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1394
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mUserDataMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;

    invoke-virtual {v3, v2}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->get(I)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    move-result-object v3

    .line 1395
    .local v3, "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    if-nez v3, :cond_0

    .line 1396
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addClient() from unknown userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MultiClientInputMethodManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    return-void

    .line 1400
    :cond_0
    iget-object v4, v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1401
    :try_start_0
    invoke-virtual {v3, v0, v1, p1, p3}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->addClientLocked(IILcom/android/internal/view/IInputMethodClient;I)V

    .line 1402
    monitor-exit v4

    .line 1403
    return-void

    .line 1402
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1740
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mContext:Landroid/content/Context;

    const-string v1, "MultiClientInputMethodManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1741
    :cond_0
    const-string v0, "  "

    .line 1742
    .local v0, "prefixChild":Ljava/lang/String;
    const-string v1, "Current Multi Client Input Method Manager state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1743
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, " "

    invoke-direct {v1, p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1744
    .local v1, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string/jumbo v2, "mUserDataMap="

    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1745
    iget-object v2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mUserDataMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;

    if-eqz v2, :cond_1

    .line 1746
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1747
    iget-object v2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mUserDataMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;

    invoke-virtual {v2, p1, v1, p3}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->dump(Ljava/io/FileDescriptor;Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 1749
    :cond_1
    return-void
.end method

.method public getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 1

    .line 1706
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$200()V

    .line 1707
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnabledInputMethodList(I)Ljava/util/List;
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1417
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1418
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mInputMethodInfoMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;->getAsList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledInputMethodSubtypeList(Ljava/lang/String;Z)Ljava/util/List;
    .locals 1
    .param p1, "imiId"    # Ljava/lang/String;
    .param p2, "allowsImplicitlySelectedSubtypes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .line 1427
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$200()V

    .line 1428
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInputMethodList(I)Ljava/util/List;
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1408
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1409
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mInputMethodInfoMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;->getAsList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInputMethodWindowVisibleHeight()I
    .locals 1

    .line 1719
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$200()V

    .line 1720
    const/4 v0, 0x0

    return v0
.end method

.method public getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 1

    .line 1434
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$200()V

    .line 1435
    const/4 v0, 0x0

    return-object v0
.end method

.method public hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    .locals 10
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 1498
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1499
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1500
    .local v1, "callingPid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1501
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mUserDataMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;

    invoke-virtual {v3, v2}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->get(I)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    move-result-object v3

    .line 1502
    .local v3, "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 1503
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hideSoftInput() from unknown userId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MultiClientInputMethodManagerService"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    return v4

    .line 1507
    :cond_0
    iget-object v5, v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1508
    :try_start_0
    invoke-virtual {v3, p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->getClientLocked(Lcom/android/internal/view/IInputMethodClient;)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;

    move-result-object v6

    .line 1509
    .local v6, "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    if-nez v6, :cond_1

    .line 1510
    monitor-exit v5

    return v4

    .line 1512
    :cond_1
    iget v7, v6, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mUid:I

    if-eq v7, v0, :cond_2

    .line 1513
    const-string v7, "MultiClientInputMethodManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected calling UID="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mUid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " actual="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    monitor-exit v5

    return v4

    .line 1517
    :cond_2
    iget v4, v6, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x3

    if-eq v4, v7, :cond_3

    const/4 v7, 0x4

    if-eq v4, v7, :cond_3

    goto :goto_0

    .line 1521
    :cond_3
    :try_start_1
    iget-object v4, v6, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mMSInputMethodSession:Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;

    invoke-interface {v4, p2, p3}, Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;->hideSoftInput(ILandroid/os/ResultReceiver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1523
    goto :goto_0

    .line 1522
    :catch_0
    move-exception v4

    .line 1524
    nop

    .line 1532
    :goto_0
    const/4 v4, 0x1

    :try_start_2
    monitor-exit v5

    return v4

    .line 1533
    .end local v6    # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public hideSoftInputForLongshot(ILandroid/os/ResultReceiver;)Z
    .locals 1
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 1443
    const/4 v0, 0x0

    return v0
.end method

.method public isInputMethodPickerShownForTest()Z
    .locals 1

    .line 1699
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$200()V

    .line 1700
    const/4 v0, 0x0

    return v0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 1735
    return-void
.end method

.method public reportActivityView(Lcom/android/internal/view/IInputMethodClient;I[F)V
    .locals 0
    .param p1, "parentClient"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "childDisplayId"    # I
    .param p3, "matrixValues"    # [F

    .line 1727
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$200()V

    .line 1728
    return-void
.end method

.method public setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 0
    .param p1, "imiId"    # Ljava/lang/String;
    .param p2, "subtypes"    # [Landroid/view/inputmethod/InputMethodSubtype;

    .line 1713
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$200()V

    .line 1714
    return-void
.end method

.method public showInputMethodAndSubtypeEnablerFromClient(Lcom/android/internal/view/IInputMethodClient;Ljava/lang/String;)V
    .locals 0
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "inputMethodId"    # Ljava/lang/String;

    .line 1693
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$200()V

    .line 1694
    return-void
.end method

.method public showInputMethodPickerFromClient(Lcom/android/internal/view/IInputMethodClient;I)V
    .locals 0
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "auxiliarySubtypeMode"    # I

    .line 1679
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$200()V

    .line 1680
    return-void
.end method

.method public showInputMethodPickerFromSystem(Lcom/android/internal/view/IInputMethodClient;II)V
    .locals 0
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "auxiliarySubtypeMode"    # I
    .param p3, "displayId"    # I

    .line 1686
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$200()V

    .line 1687
    return-void
.end method

.method public showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;Ljava/lang/String;)Z
    .locals 10
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p4, "packageName"    # Ljava/lang/String;

    .line 1455
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1456
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1457
    .local v1, "callingPid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1458
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mUserDataMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;

    invoke-virtual {v3, v2}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->get(I)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    move-result-object v3

    .line 1459
    .local v3, "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 1460
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showSoftInput() from unknown userId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MultiClientInputMethodManagerService"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    return v4

    .line 1464
    :cond_0
    iget-object v5, v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1465
    :try_start_0
    invoke-virtual {v3, p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->getClientLocked(Lcom/android/internal/view/IInputMethodClient;)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;

    move-result-object v6

    .line 1466
    .local v6, "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    if-nez v6, :cond_1

    .line 1467
    const-string v7, "MultiClientInputMethodManagerService"

    const-string/jumbo v8, "showSoftInput. client not found. ignoring."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    monitor-exit v5

    return v4

    .line 1470
    :cond_1
    iget v7, v6, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mUid:I

    if-eq v7, v0, :cond_2

    .line 1471
    const-string v7, "MultiClientInputMethodManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected calling UID="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mUid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " actual="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    monitor-exit v5

    return v4

    .line 1475
    :cond_2
    iget v4, v6, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x3

    if-eq v4, v7, :cond_3

    const/4 v7, 0x4

    if-eq v4, v7, :cond_3

    goto :goto_0

    .line 1479
    :cond_3
    :try_start_1
    iget-object v4, v6, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mMSInputMethodSession:Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;

    invoke-interface {v4, p2, p3}, Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;->showSoftInput(ILandroid/os/ResultReceiver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1481
    goto :goto_0

    .line 1480
    :catch_0
    move-exception v4

    .line 1482
    nop

    .line 1490
    :goto_0
    const/4 v4, 0x1

    :try_start_2
    monitor-exit v5

    return v4

    .line 1491
    .end local v6    # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public startInputOrWindowGainedFocus(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;II)Lcom/android/internal/view/InputBindResult;
    .locals 25
    .param p1, "startInputReason"    # I
    .param p2, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p3, "windowToken"    # Landroid/os/IBinder;
    .param p4, "startInputFlags"    # I
    .param p5, "softInputMode"    # I
    .param p6, "windowFlags"    # I
    .param p7, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p8, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p9, "missingMethods"    # I
    .param p10, "unverifiedTargetSdkVersion"    # I

    .line 1549
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v11, p7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 1550
    .local v12, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    .line 1551
    .local v13, "callingPid":I
    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    .line 1553
    .local v14, "userId":I
    if-nez v2, :cond_0

    .line 1554
    sget-object v0, Lcom/android/internal/view/InputBindResult;->INVALID_CLIENT:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 1557
    :cond_0
    const/4 v4, 0x1

    if-eqz v11, :cond_1

    iget-object v5, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v6, v11, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 1558
    invoke-static {v5, v12, v6}, Lcom/android/server/inputmethod/InputMethodUtils;->checkIfPackageBelongsToUid(Landroid/app/AppOpsManager;ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    move v15, v5

    .line 1560
    .local v15, "packageNameVerified":Z
    if-eqz v11, :cond_2

    if-nez v15, :cond_2

    .line 1561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rejecting this client as it reported an invalid package name. uid="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " package="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v11, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "MultiClientInputMethodManagerService"

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    sget-object v0, Lcom/android/internal/view/InputBindResult;->INVALID_PACKAGE_NAME:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 1566
    :cond_2
    iget-object v5, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mUserDataMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;

    invoke-virtual {v5, v14}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->get(I)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    move-result-object v9

    .line 1567
    .local v9, "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    if-nez v9, :cond_3

    .line 1568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startInputOrWindowGainedFocus() from unknown userId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " uid="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pid="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "MultiClientInputMethodManagerService"

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    sget-object v0, Lcom/android/internal/view/InputBindResult;->INVALID_USER:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 1573
    :cond_3
    iget-object v8, v9, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1574
    :try_start_0
    invoke-virtual {v9, v2}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->getClientLocked(Lcom/android/internal/view/IInputMethodClient;)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v7, v5

    .line 1575
    .local v7, "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    if-nez v7, :cond_4

    .line 1576
    :try_start_1
    sget-object v0, Lcom/android/internal/view/InputBindResult;->INVALID_CLIENT:Lcom/android/internal/view/InputBindResult;

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    .line 1671
    .end local v7    # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    :catchall_0
    move-exception v0

    move-object/from16 v16, v8

    move-object v3, v9

    goto/16 :goto_7

    .line 1578
    .restart local v7    # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    :cond_4
    :try_start_2
    iget v5, v7, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mUid:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eq v5, v12, :cond_5

    .line 1579
    :try_start_3
    const-string v0, "MultiClientInputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected calling UID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v7, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " actual="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    sget-object v0, Lcom/android/internal/view/InputBindResult;->INVALID_CLIENT:Lcom/android/internal/view/InputBindResult;

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v0

    .line 1584
    :cond_5
    :try_start_4
    iget v5, v9, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    packed-switch v5, :pswitch_data_0

    .line 1595
    move-object v2, v7

    move-object/from16 v16, v8

    move-object v3, v9

    .end local v7    # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    .end local v9    # "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    .local v2, "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    .local v3, "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    :try_start_5
    const-string v0, "MultiClientInputMethodManagerService"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/16 :goto_6

    .line 1593
    .end local v2    # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    .end local v3    # "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    .restart local v7    # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    .restart local v9    # "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    :pswitch_0
    nop

    .line 1599
    const/4 v5, 0x0

    .line 1600
    .local v5, "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    if-eqz v3, :cond_7

    .line 1601
    :try_start_6
    iget-object v6, v7, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mWindowMap:Ljava/util/WeakHashMap;

    invoke-virtual {v6, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;

    move-object v5, v6

    .line 1602
    if-nez v5, :cond_6

    .line 1603
    new-instance v6, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;

    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowHandleSource;->getNext()I

    move-result v10

    invoke-direct {v6, v3, v10}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;-><init>(Landroid/os/IBinder;I)V

    move-object v5, v6

    .line 1604
    iget-object v6, v7, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mWindowMap:Ljava/util/WeakHashMap;

    invoke-virtual {v6, v3, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v6, v5

    goto :goto_1

    .line 1602
    :cond_6
    move-object v6, v5

    goto :goto_1

    .line 1600
    :cond_7
    move-object v6, v5

    .line 1608
    .end local v5    # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    .local v6, "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    :goto_1
    :try_start_7
    iget v5, v7, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mUid:I

    iget v10, v7, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mPid:I

    iget v0, v7, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mSelfReportedDisplayId:I

    invoke-direct {v1, v5, v10, v0}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->checkFocus(III)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-nez v0, :cond_8

    .line 1610
    :try_start_8
    sget-object v0, Lcom/android/internal/view/InputBindResult;->NOT_IME_TARGET_WINDOW:Lcom/android/internal/view/InputBindResult;

    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    return-object v0

    .line 1613
    :cond_8
    const/4 v0, -0x1

    const/4 v5, 0x3

    const/4 v10, 0x4

    if-nez v11, :cond_b

    .line 1616
    :try_start_9
    iget v4, v7, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mState:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eq v4, v5, :cond_9

    if-eq v4, v10, :cond_9

    move-object v1, v6

    move-object v2, v7

    move-object/from16 v16, v8

    move-object v3, v9

    goto :goto_3

    .line 1619
    :cond_9
    if-eqz v6, :cond_a

    .line 1620
    :try_start_a
    iget v0, v6, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;->mWindowHandle:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move v10, v0

    goto :goto_2

    .line 1621
    :cond_a
    move v10, v0

    :goto_2
    nop

    .line 1623
    .local v10, "windowHandle":I
    :try_start_b
    iget-object v4, v7, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mMSInputMethodSession:Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-object/from16 v5, p8

    move-object v1, v6

    .end local v6    # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    .local v1, "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    move/from16 v6, p9

    move-object v2, v7

    .end local v7    # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    .restart local v2    # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    move-object/from16 v7, p7

    move-object/from16 v16, v8

    move/from16 v8, p4

    move-object v3, v9

    .end local v9    # "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    .restart local v3    # "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    move/from16 v9, p5

    :try_start_c
    invoke-interface/range {v4 .. v10}, Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;->startInputOrWindowGainedFocus(Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;III)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1627
    goto :goto_3

    .line 1626
    :catch_0
    move-exception v0

    goto :goto_3

    .end local v1    # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    .end local v2    # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    .end local v3    # "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    .restart local v6    # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    .restart local v7    # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    .restart local v9    # "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    :catch_1
    move-exception v0

    move-object v1, v6

    move-object v2, v7

    move-object/from16 v16, v8

    move-object v3, v9

    .line 1630
    .end local v6    # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    .end local v7    # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    .end local v9    # "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    .end local v10    # "windowHandle":I
    .restart local v1    # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    .restart local v2    # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    .restart local v3    # "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    :goto_3
    :try_start_d
    sget-object v0, Lcom/android/internal/view/InputBindResult;->NULL_EDITOR_INFO:Lcom/android/internal/view/InputBindResult;

    monitor-exit v16

    return-object v0

    .line 1633
    .end local v1    # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    .end local v2    # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    .end local v3    # "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    .restart local v6    # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    .restart local v7    # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    .restart local v9    # "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    :cond_b
    move-object v1, v6

    move-object v2, v7

    move-object/from16 v16, v8

    move-object v3, v9

    .end local v6    # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    .end local v7    # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    .end local v9    # "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    .restart local v1    # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    .restart local v2    # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    .restart local v3    # "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    iget v6, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mState:I

    if-eq v6, v4, :cond_10

    const/4 v7, 0x2

    if-eq v6, v7, :cond_10

    if-eq v6, v5, :cond_d

    if-eq v6, v10, :cond_d

    const/4 v0, 0x5

    if-eq v6, v0, :cond_c

    .line 1671
    .end local v1    # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    .end local v2    # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    monitor-exit v16

    .line 1672
    const/4 v0, 0x0

    return-object v0

    .line 1668
    .restart local v1    # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    .restart local v2    # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    :cond_c
    const-string v0, "MultiClientInputMethodManagerService"

    const-string v4, "The client is already unregistered."

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    sget-object v0, Lcom/android/internal/view/InputBindResult;->INVALID_CLIENT:Lcom/android/internal/view/InputBindResult;

    monitor-exit v16

    return-object v0

    .line 1646
    :cond_d
    iget v5, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mBindingSequence:I

    add-int/2addr v5, v4

    iput v5, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mBindingSequence:I

    .line 1647
    iget v4, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mBindingSequence:I

    if-gez v4, :cond_e

    .line 1648
    const/4 v4, 0x0

    iput v4, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mBindingSequence:I

    .line 1651
    :cond_e
    if-eqz v1, :cond_f

    .line 1652
    iget v0, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;->mWindowHandle:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_4

    .line 1653
    :cond_f
    nop

    :goto_4
    move v9, v10

    move v10, v0

    .line 1655
    .restart local v10    # "windowHandle":I
    :try_start_e
    iget-object v4, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mMSInputMethodSession:Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    move-object/from16 v5, p8

    move/from16 v6, p9

    move-object/from16 v7, p7

    move/from16 v8, p4

    move-object/from16 v17, v1

    move v1, v9

    .end local v1    # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    .local v17, "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    move/from16 v9, p5

    :try_start_f
    invoke-interface/range {v4 .. v10}, Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;->startInputOrWindowGainedFocus(Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;III)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 1659
    goto :goto_5

    .line 1658
    :catch_2
    move-exception v0

    goto :goto_5

    .end local v17    # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    .restart local v1    # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    :catch_3
    move-exception v0

    move-object/from16 v17, v1

    move v1, v9

    .line 1660
    .end local v1    # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    .restart local v17    # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    :goto_5
    :try_start_10
    iput v1, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mState:I

    .line 1661
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    const/16 v19, 0x0

    iget-object v1, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mInputMethodSession:Lcom/android/internal/view/IInputMethodSession;

    iget-object v4, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mWriteChannel:Landroid/view/InputChannel;

    .line 1664
    invoke-virtual {v4}, Landroid/view/InputChannel;->dup()Landroid/view/InputChannel;

    move-result-object v21

    iget-object v4, v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mCurrentInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    .line 1665
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v22

    iget v4, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mBindingSequence:I

    const/16 v24, 0x0

    move-object/from16 v18, v0

    move-object/from16 v20, v1

    move/from16 v23, v4

    invoke-direct/range {v18 .. v24}, Lcom/android/internal/view/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;ILandroid/graphics/Matrix;)V

    monitor-exit v16

    .line 1661
    return-object v0

    .line 1633
    .end local v10    # "windowHandle":I
    .end local v17    # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    .restart local v1    # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    :cond_10
    move-object/from16 v17, v1

    .line 1636
    .end local v1    # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    .restart local v17    # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    iget v0, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mBindingSequence:I

    add-int/2addr v0, v4

    iput v0, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mBindingSequence:I

    .line 1637
    iget v0, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mBindingSequence:I

    if-gez v0, :cond_11

    .line 1638
    const/4 v0, 0x0

    iput v0, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mBindingSequence:I

    .line 1640
    :cond_11
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v1, v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mCurrentInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    .line 1642
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v8

    iget v9, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mBindingSequence:I

    const/4 v10, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/view/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;ILandroid/graphics/Matrix;)V

    monitor-exit v16

    .line 1640
    return-object v0

    .line 1590
    .end local v2    # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    .end local v3    # "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    .end local v17    # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    .restart local v7    # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    .restart local v9    # "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    :pswitch_1
    move-object v2, v7

    move-object/from16 v16, v8

    move-object v3, v9

    .end local v7    # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    .end local v9    # "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    .restart local v2    # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    .restart local v3    # "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    sget-object v0, Lcom/android/internal/view/InputBindResult;->IME_NOT_CONNECTED:Lcom/android/internal/view/InputBindResult;

    monitor-exit v16

    return-object v0

    .line 1595
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected state="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    sget-object v0, Lcom/android/internal/view/InputBindResult;->IME_NOT_CONNECTED:Lcom/android/internal/view/InputBindResult;

    monitor-exit v16

    return-object v0

    .line 1671
    .end local v2    # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    .end local v3    # "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    .restart local v9    # "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    :catchall_1
    move-exception v0

    move-object/from16 v16, v8

    move-object v3, v9

    .end local v9    # "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    .restart local v3    # "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    :goto_7
    monitor-exit v16
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_7

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
