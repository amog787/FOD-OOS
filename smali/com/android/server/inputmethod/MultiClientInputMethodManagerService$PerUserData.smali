.class final Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
.super Ljava/lang/Object;
.source "MultiClientInputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PerUserData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData$ClientDeathRecipient;,
        Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData$OnWorkerThreadServiceConnection;
    }
.end annotation


# instance fields
.field private mClientIdToClientMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mClientMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field mCurrentInputMethod:Lcom/android/internal/inputmethod/IMultiClientInputMethod;

.field mCurrentInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

.field final mDisplayIdToImeWindowTokenMap:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field private final mOnWorkerThreadServiceConnection:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData$OnWorkerThreadServiceConnection;

.field mState:I

.field private final mUserId:I


# direct methods
.method constructor <init>(ILandroid/view/inputmethod/InputMethodInfo;ILcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "inputMethodInfo"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "initialState"    # I
    .param p4, "callback"    # Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;

    .line 892
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 805
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    .line 841
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mDisplayIdToImeWindowTokenMap:Landroid/util/ArraySet;

    .line 844
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mClientMap:Landroid/util/ArrayMap;

    .line 847
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mClientIdToClientMap:Landroid/util/SparseArray;

    .line 893
    iput p1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mUserId:I

    .line 894
    iput-object p2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mCurrentInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    .line 895
    iput p3, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I

    .line 896
    new-instance v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData$OnWorkerThreadServiceConnection;

    invoke-direct {v0, p0, p4}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData$OnWorkerThreadServiceConnection;-><init>(Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;)V

    iput-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mOnWorkerThreadServiceConnection:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData$OnWorkerThreadServiceConnection;

    .line 898
    return-void
.end method

.method static synthetic access$500(Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    .line 804
    iget v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mUserId:I

    return v0
.end method


# virtual methods
.method addClientLocked(IILcom/android/internal/view/IInputMethodClient;I)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p4, "selfReportedDisplayId"    # I

    .line 949
    invoke-virtual {p0, p3}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->getClientLocked(Lcom/android/internal/view/IInputMethodClient;)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 950
    const-string v0, "MultiClientInputMethodManagerService"

    const-string v1, "The same client is added multiple times"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    return-void

    .line 953
    :cond_0
    new-instance v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData$ClientDeathRecipient;

    invoke-direct {v0, p0, p3}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData$ClientDeathRecipient;-><init>(Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;Lcom/android/internal/view/IInputMethodClient;)V

    .line 955
    .local v0, "deathRecipient":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData$ClientDeathRecipient;
    :try_start_0
    invoke-interface {p3}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 958
    nop

    .line 959
    new-instance v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;

    invoke-direct {v1, p3, p1, p2, p4}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;-><init>(Lcom/android/internal/view/IInputMethodClient;III)V

    .line 961
    .local v1, "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    const/4 v2, 0x1

    iput v2, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mState:I

    .line 962
    iget-object v2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mClientMap:Landroid/util/ArrayMap;

    invoke-interface {p3}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    iget-object v2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mClientIdToClientMap:Landroid/util/SparseArray;

    iget v3, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mClientId:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 964
    iget v2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 967
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mCurrentInputMethod:Lcom/android/internal/inputmethod/IMultiClientInputMethod;

    iget v3, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mClientId:I

    iget v4, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mPid:I

    iget v5, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mUid:I

    iget v6, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mSelfReportedDisplayId:I

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/internal/inputmethod/IMultiClientInputMethod;->addClient(IIII)V

    .line 970
    const/4 v2, 0x2

    iput v2, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mState:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 973
    goto :goto_0

    .line 971
    :catch_0
    move-exception v2

    .line 976
    :goto_0
    return-void

    .line 956
    .end local v1    # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    :catch_1
    move-exception v1

    .line 957
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method bindServiceLocked(Landroid/content/Context;I)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 902
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.inputmethodservice.MultiClientInputMethodService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mCurrentInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    .line 904
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 905
    const-string v1, "android.intent.extra.client_label"

    const v2, 0x10403d7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 907
    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v2, "android.intent.extra.client_intent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 914
    .local v0, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mOnWorkerThreadServiceConnection:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData$OnWorkerThreadServiceConnection;

    .line 916
    invoke-virtual {v5}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData$OnWorkerThreadServiceConnection;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    .line 914
    const v6, 0x44000005    # 512.0003f

    move-object v3, p1

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    move-result v1

    return v1
.end method

.method dump(Ljava/io/FileDescriptor;Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "ipw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1043
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1044
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mCurrentInputMethod="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mCurrentInputMethod:Lcom/android/internal/inputmethod/IMultiClientInputMethod;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mCurrentInputMethodInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mCurrentInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1048
    iget-object v1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mCurrentInputMethod:Lcom/android/internal/inputmethod/IMultiClientInputMethod;

    if-eqz v1, :cond_0

    .line 1050
    const-string v1, ">>Dump CurrentInputMethod>>"

    invoke-virtual {p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1051
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1053
    :try_start_1
    iget-object v1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mCurrentInputMethod:Lcom/android/internal/inputmethod/IMultiClientInputMethod;

    invoke-interface {v1}, Lcom/android/internal/inputmethod/IMultiClientInputMethod;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1, p1, p3}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1056
    goto :goto_0

    .line 1054
    :catch_0
    move-exception v1

    .line 1055
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to dump input method service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1057
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v1, "<<Dump CurrentInputMethod<<"

    invoke-virtual {p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1060
    :cond_0
    const-string/jumbo v1, "mDisplayIdToImeWindowTokenMap="

    invoke-virtual {p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1061
    iget-object v1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mDisplayIdToImeWindowTokenMap:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;

    .line 1062
    .local v2, "info":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " display="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;->mDisplayId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;->mToken:Landroid/os/Binder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1064
    .end local v2    # "info":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;
    goto :goto_1

    .line 1065
    :cond_1
    const-string/jumbo v1, "mClientMap="

    invoke-virtual {p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1066
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1067
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mClientMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1069
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "binder="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mClientMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1070
    const-string v2, " InputMethodClientInfo="

    invoke-virtual {p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1071
    iget-object v2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mClientMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;

    .line 1072
    .local v2, "info":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    if-eqz v2, :cond_2

    .line 1073
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1074
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->dumpLocked(Ljava/io/FileDescriptor;Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 1075
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1067
    .end local v2    # "info":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1078
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1079
    const-string/jumbo v1, "mClientIdToClientMap="

    invoke-virtual {p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1080
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1081
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mClientIdToClientMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 1082
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clientId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mClientIdToClientMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1083
    const-string v2, " InputMethodClientInfo="

    invoke-virtual {p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1084
    iget-object v2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mClientIdToClientMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;

    .line 1085
    .restart local v2    # "info":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    if-eqz v2, :cond_4

    .line 1086
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1087
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->dumpLocked(Ljava/io/FileDescriptor;Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 1088
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1090
    :cond_4
    iget-object v3, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mClient:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v3, :cond_5

    .line 1092
    const-string v3, ">>DumpClientStart>>"

    invoke-virtual {p2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1093
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1095
    :try_start_3
    iget-object v3, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mClient:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v3}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3, p1, p3}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1098
    goto :goto_4

    .line 1096
    :catch_1
    move-exception v3

    .line 1097
    .local v3, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Failed to dump client:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1099
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_4
    const-string v3, "<<DumpClientEnd<<"

    invoke-virtual {p2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1081
    .end local v2    # "info":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1102
    .end local v1    # "i":I
    :cond_6
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1103
    monitor-exit v0

    .line 1104
    return-void

    .line 1103
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method getClientFromIdLocked(I)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    .locals 1
    .param p1, "clientId"    # I

    .line 933
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mClientIdToClientMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;

    return-object v0
.end method

.method getClientLocked(Lcom/android/internal/view/IInputMethodClient;)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    .locals 2
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;

    .line 927
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mClientMap:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;

    return-object v0
.end method

.method onInputMethodConnectedLocked()V
    .locals 8

    .line 980
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mClientMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 981
    .local v0, "numClients":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 982
    iget-object v2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mClientMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;

    .line 983
    .local v2, "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    iget v3, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mState:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 988
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MultiClientInputMethodManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    return-void

    .line 986
    :cond_0
    nop

    .line 992
    :try_start_0
    iget-object v3, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mCurrentInputMethod:Lcom/android/internal/inputmethod/IMultiClientInputMethod;

    iget v4, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mClientId:I

    iget v5, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mUid:I

    iget v6, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mPid:I

    iget v7, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mSelfReportedDisplayId:I

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/android/internal/inputmethod/IMultiClientInputMethod;->addClient(IIII)V

    .line 995
    const/4 v3, 0x2

    iput v3, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 997
    goto :goto_1

    .line 996
    :catch_0
    move-exception v3

    .line 981
    .end local v2    # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 999
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method onInputMethodDisconnectedLocked()V
    .locals 8

    .line 1003
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mClientMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1004
    .local v0, "numClients":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 1005
    iget-object v2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mClientMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;

    .line 1006
    .local v2, "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    iget v3, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mState:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    const/4 v6, 0x0

    if-eq v3, v4, :cond_1

    const/4 v7, 0x4

    if-eq v3, v7, :cond_0

    goto :goto_2

    .line 1025
    :cond_0
    :try_start_0
    iget-object v3, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mClient:Lcom/android/internal/view/IInputMethodClient;

    iget v7, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mBindingSequence:I

    invoke-interface {v3, v7, v4}, Lcom/android/internal/view/IInputMethodClient;->onUnbindMethod(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1028
    goto :goto_1

    .line 1027
    :catch_0
    move-exception v3

    .line 1029
    :goto_1
    iput v5, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mState:I

    .line 1030
    iput-object v6, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mInputMethodSession:Lcom/android/internal/view/IInputMethodSession;

    .line 1031
    iput-object v6, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mMSInputMethodSession:Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;

    .line 1032
    iget-object v3, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mWriteChannel:Landroid/view/InputChannel;

    if-eqz v3, :cond_3

    .line 1033
    iget-object v3, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mWriteChannel:Landroid/view/InputChannel;

    invoke-virtual {v3}, Landroid/view/InputChannel;->dispose()V

    .line 1034
    iput-object v6, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mWriteChannel:Landroid/view/InputChannel;

    goto :goto_2

    .line 1015
    :cond_1
    iput v5, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mState:I

    .line 1016
    iput-object v6, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mInputMethodSession:Lcom/android/internal/view/IInputMethodSession;

    .line 1017
    iput-object v6, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mMSInputMethodSession:Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;

    .line 1018
    iget-object v3, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mWriteChannel:Landroid/view/InputChannel;

    if-eqz v3, :cond_3

    .line 1019
    iget-object v3, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mWriteChannel:Landroid/view/InputChannel;

    invoke-virtual {v3}, Landroid/view/InputChannel;->dispose()V

    .line 1020
    iput-object v6, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mWriteChannel:Landroid/view/InputChannel;

    goto :goto_2

    .line 1012
    :cond_2
    iput v5, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mState:I

    .line 1013
    nop

    .line 1004
    .end local v2    # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1039
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method removeClientLocked(Lcom/android/internal/view/IInputMethodClient;)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    .locals 3
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;

    .line 939
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mClientMap:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;

    .line 940
    .local v0, "info":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    if-eqz v0, :cond_0

    .line 941
    iget-object v1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mClientIdToClientMap:Landroid/util/SparseArray;

    iget v2, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mClientId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 943
    :cond_0
    return-object v0
.end method

.method unbindServiceLocked(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 921
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mOnWorkerThreadServiceConnection:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData$OnWorkerThreadServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 922
    return-void
.end method
