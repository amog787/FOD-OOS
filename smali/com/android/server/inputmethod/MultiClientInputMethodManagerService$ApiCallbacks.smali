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

    .line 1409
    invoke-direct {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;-><init>()V

    .line 1410
    iput-object p1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mContext:Landroid/content/Context;

    .line 1411
    iput-object p2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mUserDataMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;

    .line 1412
    iput-object p3, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mInputMethodInfoMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;

    .line 1413
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1414
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 1415
    return-void
.end method

.method private checkFocus(III)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "displayId"    # I

    .line 1419
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

    .line 1426
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1427
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1428
    .local v1, "callingPid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1429
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mUserDataMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;

    invoke-virtual {v3, v2}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->get(I)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    move-result-object v3

    .line 1430
    .local v3, "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    if-nez v3, :cond_0

    .line 1431
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

    .line 1433
    return-void

    .line 1435
    :cond_0
    iget-object v4, v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1436
    :try_start_0
    invoke-virtual {v3, v0, v1, p1, p3}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->addClientLocked(IILcom/android/internal/view/IInputMethodClient;I)V

    .line 1437
    monitor-exit v4

    .line 1438
    return-void

    .line 1437
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

    .line 1794
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mContext:Landroid/content/Context;

    const-string v1, "MultiClientInputMethodManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1795
    :cond_0
    const-string v0, "  "

    .line 1796
    .local v0, "prefixChild":Ljava/lang/String;
    const-string v1, "Current Multi Client Input Method Manager state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1797
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, " "

    invoke-direct {v1, p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1798
    .local v1, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string/jumbo v2, "mUserDataMap="

    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1799
    iget-object v2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mUserDataMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;

    if-eqz v2, :cond_1

    .line 1800
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1801
    iget-object v2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mUserDataMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;

    invoke-virtual {v2, p1, v1, p3}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->dump(Ljava/io/FileDescriptor;Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 1803
    :cond_1
    return-void
.end method

.method public getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 1

    .line 1754
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$200()V

    .line 1755
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

    .line 1452
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1453
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
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

    .line 1462
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$200()V

    .line 1463
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

    .line 1443
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1444
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mInputMethodInfoMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;->getAsList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInputMethodWindowVisibleHeight()I
    .locals 1

    .line 1767
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$200()V

    .line 1768
    const/4 v0, 0x0

    return v0
.end method

.method public getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 1

    .line 1469
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$200()V

    .line 1470
    const/4 v0, 0x0

    return-object v0
.end method

.method public hideSoftInput(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z
    .locals 10
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "windowToken"    # Landroid/os/IBinder;
    .param p3, "flags"    # I
    .param p4, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 1546
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1547
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1548
    .local v1, "callingPid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1549
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mUserDataMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;

    invoke-virtual {v3, v2}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->get(I)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    move-result-object v3

    .line 1550
    .local v3, "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 1551
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

    .line 1553
    return v4

    .line 1555
    :cond_0
    iget-object v5, v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1556
    :try_start_0
    invoke-virtual {v3, p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->getClientLocked(Lcom/android/internal/view/IInputMethodClient;)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;

    move-result-object v6

    .line 1557
    .local v6, "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    if-nez v6, :cond_1

    .line 1558
    monitor-exit v5

    return v4

    .line 1560
    :cond_1
    iget v7, v6, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mUid:I

    if-eq v7, v0, :cond_2

    .line 1561
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

    .line 1563
    monitor-exit v5

    return v4

    .line 1565
    :cond_2
    iget v4, v6, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x3

    if-eq v4, v7, :cond_3

    const/4 v7, 0x4

    if-eq v4, v7, :cond_3

    goto :goto_0

    .line 1569
    :cond_3
    :try_start_1
    iget-object v4, v6, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mMSInputMethodSession:Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;

    invoke-interface {v4, p3, p4}, Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;->hideSoftInput(ILandroid/os/ResultReceiver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1571
    goto :goto_0

    .line 1570
    :catch_0
    move-exception v4

    .line 1572
    nop

    .line 1580
    :goto_0
    const/4 v4, 0x1

    :try_start_2
    monitor-exit v5

    return v4

    .line 1581
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

    .line 1478
    const/4 v0, 0x0

    return v0
.end method

.method public isInputMethodPickerShownForTest()Z
    .locals 1

    .line 1747
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$200()V

    .line 1748
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

    .line 1789
    return-void
.end method

.method public removeImeSurface()V
    .locals 0

    .line 1485
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$200()V

    .line 1486
    return-void
.end method

.method public removeImeSurfaceFromWindow(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 1491
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$200()V

    .line 1492
    return-void
.end method

.method public reportActivityView(Lcom/android/internal/view/IInputMethodClient;I[F)V
    .locals 0
    .param p1, "parentClient"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "childDisplayId"    # I
    .param p3, "matrixValues"    # [F

    .line 1775
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$200()V

    .line 1776
    return-void
.end method

.method public reportPerceptible(Landroid/os/IBinder;Z)V
    .locals 0
    .param p1, "windowClient"    # Landroid/os/IBinder;
    .param p2, "perceptible"    # Z

    .line 1781
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$200()V

    .line 1782
    return-void
.end method

.method public setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 0
    .param p1, "imiId"    # Ljava/lang/String;
    .param p2, "subtypes"    # [Landroid/view/inputmethod/InputMethodSubtype;

    .line 1761
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$200()V

    .line 1762
    return-void
.end method

.method public showInputMethodAndSubtypeEnablerFromClient(Lcom/android/internal/view/IInputMethodClient;Ljava/lang/String;)V
    .locals 0
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "inputMethodId"    # Ljava/lang/String;

    .line 1741
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$200()V

    .line 1742
    return-void
.end method

.method public showInputMethodPickerFromClient(Lcom/android/internal/view/IInputMethodClient;I)V
    .locals 0
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "auxiliarySubtypeMode"    # I

    .line 1727
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$200()V

    .line 1728
    return-void
.end method

.method public showInputMethodPickerFromSystem(Lcom/android/internal/view/IInputMethodClient;II)V
    .locals 0
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "auxiliarySubtypeMode"    # I
    .param p3, "displayId"    # I

    .line 1734
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$200()V

    .line 1735
    return-void
.end method

.method public showSoftInput(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z
    .locals 10
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "flags"    # I
    .param p4, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 1499
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1500
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1501
    .local v1, "callingPid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1502
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mUserDataMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;

    invoke-virtual {v3, v2}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->get(I)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    move-result-object v3

    .line 1503
    .local v3, "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 1504
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

    .line 1506
    return v4

    .line 1508
    :cond_0
    iget-object v5, v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1509
    :try_start_0
    invoke-virtual {v3, p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->getClientLocked(Lcom/android/internal/view/IInputMethodClient;)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;

    move-result-object v6

    .line 1510
    .local v6, "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    if-nez v6, :cond_1

    .line 1511
    const-string v7, "MultiClientInputMethodManagerService"

    const-string/jumbo v8, "showSoftInput. client not found. ignoring."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    monitor-exit v5

    return v4

    .line 1514
    :cond_1
    iget v7, v6, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mUid:I

    if-eq v7, v0, :cond_2

    .line 1515
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

    .line 1517
    monitor-exit v5

    return v4

    .line 1519
    :cond_2
    iget v4, v6, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x3

    if-eq v4, v7, :cond_3

    const/4 v7, 0x4

    if-eq v4, v7, :cond_3

    goto :goto_0

    .line 1523
    :cond_3
    :try_start_1
    iget-object v4, v6, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mMSInputMethodSession:Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;

    invoke-interface {v4, p3, p4}, Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;->showSoftInput(ILandroid/os/ResultReceiver;)V

    .line 1526
    iget-object v4, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v4, p2}, Lcom/android/server/wm/WindowManagerInternal;->showImePostLayout(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1528
    goto :goto_0

    .line 1527
    :catch_0
    move-exception v4

    .line 1529
    nop

    .line 1537
    :goto_0
    const/4 v4, 0x1

    :try_start_2
    monitor-exit v5

    return v4

    .line 1538
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

    .line 1597
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v11, p7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 1598
    .local v12, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    .line 1599
    .local v13, "callingPid":I
    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    .line 1601
    .local v14, "userId":I
    if-nez v2, :cond_0

    .line 1602
    sget-object v0, Lcom/android/internal/view/InputBindResult;->INVALID_CLIENT:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 1605
    :cond_0
    const/4 v4, 0x1

    if-eqz v11, :cond_1

    iget-object v5, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v6, v11, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 1606
    invoke-static {v5, v12, v6}, Lcom/android/server/inputmethod/InputMethodUtils;->checkIfPackageBelongsToUid(Landroid/app/AppOpsManager;ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    move v15, v5

    .line 1608
    .local v15, "packageNameVerified":Z
    if-eqz v11, :cond_2

    if-nez v15, :cond_2

    .line 1609
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

    .line 1611
    sget-object v0, Lcom/android/internal/view/InputBindResult;->INVALID_PACKAGE_NAME:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 1614
    :cond_2
    iget-object v5, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mUserDataMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;

    invoke-virtual {v5, v14}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->get(I)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    move-result-object v9

    .line 1615
    .local v9, "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    if-nez v9, :cond_3

    .line 1616
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

    .line 1618
    sget-object v0, Lcom/android/internal/view/InputBindResult;->INVALID_USER:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 1621
    :cond_3
    iget-object v8, v9, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1622
    :try_start_0
    invoke-virtual {v9, v2}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->getClientLocked(Lcom/android/internal/view/IInputMethodClient;)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v7, v5

    .line 1623
    .local v7, "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    if-nez v7, :cond_4

    .line 1624
    :try_start_1
    sget-object v0, Lcom/android/internal/view/InputBindResult;->INVALID_CLIENT:Lcom/android/internal/view/InputBindResult;

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    .line 1719
    .end local v7    # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    :catchall_0
    move-exception v0

    move-object/from16 v16, v8

    move-object v3, v9

    goto/16 :goto_7

    .line 1626
    .restart local v7    # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    :cond_4
    :try_start_2
    iget v5, v7, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mUid:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eq v5, v12, :cond_5

    .line 1627
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

    .line 1629
    sget-object v0, Lcom/android/internal/view/InputBindResult;->INVALID_CLIENT:Lcom/android/internal/view/InputBindResult;

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v0

    .line 1632
    :cond_5
    :try_start_4
    iget v5, v9, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    packed-switch v5, :pswitch_data_0

    .line 1643
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

    .line 1641
    .end local v2    # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    .end local v3    # "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    .restart local v7    # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    .restart local v9    # "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    :pswitch_0
    nop

    .line 1647
    const/4 v5, 0x0

    .line 1648
    .local v5, "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    if-eqz v3, :cond_7

    .line 1649
    :try_start_6
    iget-object v6, v7, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mWindowMap:Ljava/util/WeakHashMap;

    invoke-virtual {v6, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;

    move-object v5, v6

    .line 1650
    if-nez v5, :cond_6

    .line 1651
    new-instance v6, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;

    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowHandleSource;->getNext()I

    move-result v10

    invoke-direct {v6, v3, v10}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;-><init>(Landroid/os/IBinder;I)V

    move-object v5, v6

    .line 1652
    iget-object v6, v7, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mWindowMap:Ljava/util/WeakHashMap;

    invoke-virtual {v6, v3, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v6, v5

    goto :goto_1

    .line 1650
    :cond_6
    move-object v6, v5

    goto :goto_1

    .line 1648
    :cond_7
    move-object v6, v5

    .line 1656
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

    .line 1658
    :try_start_8
    sget-object v0, Lcom/android/internal/view/InputBindResult;->NOT_IME_TARGET_WINDOW:Lcom/android/internal/view/InputBindResult;

    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    return-object v0

    .line 1661
    :cond_8
    const/4 v0, -0x1

    const/4 v5, 0x3

    const/4 v10, 0x4

    if-nez v11, :cond_b

    .line 1664
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

    .line 1667
    :cond_9
    if-eqz v6, :cond_a

    .line 1668
    :try_start_a
    iget v0, v6, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;->mWindowHandle:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move v10, v0

    goto :goto_2

    .line 1669
    :cond_a
    move v10, v0

    :goto_2
    nop

    .line 1671
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

    .line 1675
    goto :goto_3

    .line 1674
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

    .line 1678
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

    .line 1681
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

    .line 1719
    .end local v1    # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    .end local v2    # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    monitor-exit v16

    .line 1720
    const/4 v0, 0x0

    return-object v0

    .line 1716
    .restart local v1    # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    .restart local v2    # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    :cond_c
    const-string v0, "MultiClientInputMethodManagerService"

    const-string v4, "The client is already unregistered."

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    sget-object v0, Lcom/android/internal/view/InputBindResult;->INVALID_CLIENT:Lcom/android/internal/view/InputBindResult;

    monitor-exit v16

    return-object v0

    .line 1694
    :cond_d
    iget v5, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mBindingSequence:I

    add-int/2addr v5, v4

    iput v5, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mBindingSequence:I

    .line 1695
    iget v4, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mBindingSequence:I

    if-gez v4, :cond_e

    .line 1696
    const/4 v4, 0x0

    iput v4, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mBindingSequence:I

    .line 1699
    :cond_e
    if-eqz v1, :cond_f

    .line 1700
    iget v0, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;->mWindowHandle:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_4

    .line 1701
    :cond_f
    nop

    :goto_4
    move v9, v10

    move v10, v0

    .line 1703
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

    .line 1707
    goto :goto_5

    .line 1706
    :catch_2
    move-exception v0

    goto :goto_5

    .end local v17    # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    .restart local v1    # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    :catch_3
    move-exception v0

    move-object/from16 v17, v1

    move v1, v9

    .line 1708
    .end local v1    # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    .restart local v17    # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    :goto_5
    :try_start_10
    iput v1, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mState:I

    .line 1709
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    const/16 v19, 0x0

    iget-object v1, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mInputMethodSession:Lcom/android/internal/view/IInputMethodSession;

    iget-object v4, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mWriteChannel:Landroid/view/InputChannel;

    .line 1712
    invoke-virtual {v4}, Landroid/view/InputChannel;->dup()Landroid/view/InputChannel;

    move-result-object v21

    iget-object v4, v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mCurrentInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    .line 1713
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v22

    iget v4, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mBindingSequence:I

    const/16 v24, 0x0

    move-object/from16 v18, v0

    move-object/from16 v20, v1

    move/from16 v23, v4

    invoke-direct/range {v18 .. v24}, Lcom/android/internal/view/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;ILandroid/graphics/Matrix;)V

    monitor-exit v16

    .line 1709
    return-object v0

    .line 1681
    .end local v10    # "windowHandle":I
    .end local v17    # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    .restart local v1    # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    :cond_10
    move-object/from16 v17, v1

    .line 1684
    .end local v1    # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    .restart local v17    # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    iget v0, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mBindingSequence:I

    add-int/2addr v0, v4

    iput v0, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mBindingSequence:I

    .line 1685
    iget v0, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mBindingSequence:I

    if-gez v0, :cond_11

    .line 1686
    const/4 v0, 0x0

    iput v0, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mBindingSequence:I

    .line 1688
    :cond_11
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v1, v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mCurrentInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    .line 1690
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v8

    iget v9, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mBindingSequence:I

    const/4 v10, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/view/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;ILandroid/graphics/Matrix;)V

    monitor-exit v16

    .line 1688
    return-object v0

    .line 1638
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

    .line 1643
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

    .line 1644
    sget-object v0, Lcom/android/internal/view/InputBindResult;->IME_NOT_CONNECTED:Lcom/android/internal/view/InputBindResult;

    monitor-exit v16

    return-object v0

    .line 1719
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
