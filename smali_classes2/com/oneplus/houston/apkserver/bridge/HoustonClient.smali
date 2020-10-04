.class public Lcom/oneplus/houston/apkserver/bridge/HoustonClient;
.super Ljava/lang/Object;
.source "HoustonClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;
    }
.end annotation


# static fields
.field private static final ARG_TYPE_DATA:I = 0x1

.field private static final ARG_TYPE_INTENT:I = 0x2

.field private static final ARG_TYPE_INTERGER:I = 0x0

.field private static final MAX_DELAY_ACCOUNT:I = 0x80

.field private static final MSG_BIND_SERVICE:I = 0x1

.field private static final MSG_SEND_EVENT:I = 0x2

.field private static final MSG_SEND_INIT:I = 0x3

.field private static final MSG_TEST:I = 0x0

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.orm"

.field private static final SERVICE_NAME:Ljava/lang/String; = "com.oneplus.orm.OPManagerService"

.field private static final TAG:Ljava/lang/String; = "HoustonClient"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDelayedEventAccount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mDispatcherHandler:Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;

.field private mEventListener:Lcom/oneplus/houston/common/client/IEvent;

.field private mPid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mPid:I

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mDelayedEventAccount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 61
    iput-object p1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mContext:Landroid/content/Context;

    .line 62
    new-instance v0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;

    invoke-direct {v0, p0, p2}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;-><init>(Lcom/oneplus/houston/apkserver/bridge/HoustonClient;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mDispatcherHandler:Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/houston/apkserver/bridge/HoustonClient;)Lcom/oneplus/houston/common/client/IEvent;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/houston/apkserver/bridge/HoustonClient;

    .line 38
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mEventListener:Lcom/oneplus/houston/common/client/IEvent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/houston/apkserver/bridge/HoustonClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/houston/apkserver/bridge/HoustonClient;

    .line 38
    invoke-direct {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->bindServiceIfNeeded()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/houston/apkserver/bridge/HoustonClient;IILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/houston/apkserver/bridge/HoustonClient;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/Object;

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->handleEvent(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/houston/apkserver/bridge/HoustonClient;IILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/houston/apkserver/bridge/HoustonClient;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/Object;

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->handleInitArgs(IILjava/lang/Object;)V

    return-void
.end method

.method private bindServiceIfNeeded()V
    .locals 5

    .line 72
    invoke-direct {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->isBinded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.orm.bind"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.oneplus.orm"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string v1, "HoustonClient"

    const-string v2, "begin bind houston event server component!"

    invoke-static {v1, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v2, v0, p0, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_0

    .line 84
    :catch_0
    move-exception v2

    .line 85
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oneplus/houston/common/client/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private handleEvent(IILjava/lang/Object;)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "event"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 173
    if-eqz p3, :cond_6

    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mEventListener:Lcom/oneplus/houston/common/client/IEvent;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 177
    :cond_0
    const-string v1, " ,current:"

    const-string v2, "houston_server maybe hung, killed pid:"

    const/16 v3, 0x80

    const/4 v4, -0x1

    const-string v5, "HoustonClient"

    if-nez p1, :cond_1

    .line 178
    :try_start_0
    invoke-interface {v0, p2}, Lcom/oneplus/houston/common/client/IEvent;->onReceive(I)V

    goto :goto_2

    .line 187
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 184
    :catch_0
    move-exception v0

    goto :goto_0

    .line 179
    :cond_1
    const/4 v6, 0x1

    if-ne p1, v6, :cond_2

    .line 180
    move-object v6, p3

    check-cast v6, Lcom/oneplus/houston/common/client/Event;

    invoke-interface {v0, v6}, Lcom/oneplus/houston/common/client/IEvent;->onEvent(Lcom/oneplus/houston/common/client/Event;)V

    goto :goto_2

    .line 181
    :cond_2
    const/4 v6, 0x2

    if-ne p1, v6, :cond_4

    .line 182
    move-object v6, p3

    check-cast v6, Landroid/content/Intent;

    invoke-interface {v0, v6}, Lcom/oneplus/houston/common/client/IEvent;->onReceive(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 185
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    :try_start_1
    const-string v6, "Transforms event failed!"

    invoke-static {v5, v6}, Lcom/oneplus/houston/common/client/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    .end local v0    # "e":Landroid/os/RemoteException;
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mDelayedEventAccount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    .line 188
    .local v0, "current":I
    if-le v0, v3, :cond_5

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    .line 187
    .end local v0    # "current":I
    :goto_1
    iget-object v6, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mDelayedEventAccount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    .line 188
    .local v4, "current":I
    if-le v4, v3, :cond_3

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mPid:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/oneplus/houston/common/client/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mPid:I

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 192
    .end local v4    # "current":I
    :cond_3
    throw v0

    .line 187
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mDelayedEventAccount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    .line 188
    .restart local v0    # "current":I
    if-le v0, v3, :cond_5

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mPid:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/oneplus/houston/common/client/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mPid:I

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 192
    .end local v0    # "current":I
    :cond_5
    nop

    .line 194
    return-void

    .line 174
    :cond_6
    :goto_4
    return-void
.end method

.method private handleInitArgs(IILjava/lang/Object;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "event"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 198
    const-string v0, "HoustonClient"

    :try_start_0
    const-string v1, "handleInitArgs"

    invoke-static {v0, v1}, Lcom/oneplus/houston/common/client/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    new-instance v1, Lcom/oneplus/houston/common/client/parcel/InitArg;

    invoke-direct {v1}, Lcom/oneplus/houston/common/client/parcel/InitArg;-><init>()V

    .line 200
    .local v1, "arg":Lcom/oneplus/houston/common/client/parcel/InitArg;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mExtra:Landroid/os/Bundle;

    .line 201
    iget-object v2, v1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mExtra:Landroid/os/Bundle;

    const-string v3, "pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 202
    move-object v2, p3

    check-cast v2, Lcom/oneplus/houston/common/client/IEvent;

    .line 203
    .local v2, "l":Lcom/oneplus/houston/common/client/IEvent;
    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->fillProcesses(Lcom/oneplus/houston/common/client/parcel/InitArg;)V

    .line 204
    invoke-interface {v2, v1}, Lcom/oneplus/houston/common/client/IEvent;->onInit(Lcom/oneplus/houston/common/client/parcel/InitArg;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v1    # "arg":Lcom/oneplus/houston/common/client/parcel/InitArg;
    .end local v2    # "l":Lcom/oneplus/houston/common/client/IEvent;
    goto :goto_0

    .line 205
    :catch_0
    move-exception v1

    .line 206
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Transforms event failed!"

    invoke-static {v0, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private isBinded()Z
    .locals 1

    .line 91
    monitor-enter p0

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mEventListener:Lcom/oneplus/houston/common/client/IEvent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mEventListener:Lcom/oneplus/houston/common/client/IEvent;

    invoke-interface {v0}, Lcom/oneplus/houston/common/client/IEvent;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .line 163
    invoke-virtual {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mEventListener:Lcom/oneplus/houston/common/client/IEvent;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/houston/common/client/IEvent;->dumpData(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HoustonClient"

    const-string v2, "Dump data failed!"

    invoke-static {v1, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public isConnected()Z
    .locals 1

    .line 97
    monitor-enter p0

    .line 98
    :try_start_0
    iget v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mPid:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "listener"    # Landroid/os/IBinder;

    .line 104
    monitor-enter p0

    .line 106
    :try_start_0
    invoke-static {p2}, Lcom/oneplus/houston/common/client/EventDispatcherNative;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/houston/common/client/IEvent;

    move-result-object v0

    .line 107
    .local v0, "l":Lcom/oneplus/houston/common/client/IEvent;
    iput-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mEventListener:Lcom/oneplus/houston/common/client/IEvent;

    .line 108
    invoke-interface {v0}, Lcom/oneplus/houston/common/client/IEvent;->myPid()I

    move-result v1

    iput v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mPid:I

    .line 109
    const-string v1, "HoustonClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected pid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mDispatcherHandler:Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;->removeMessages(I)V

    .line 111
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mDispatcherHandler:Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;->removeMessages(I)V

    .line 112
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mDispatcherHandler:Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;->removeMessages(I)V

    .line 115
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mDispatcherHandler:Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3, v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    .end local v0    # "l":Lcom/oneplus/houston/common/client/IEvent;
    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "HoustonClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    .line 120
    return-void

    .line 119
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 124
    monitor-enter p0

    .line 125
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const-string v0, "HoustonClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/houston/common/client/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mPid:I

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mEventListener:Lcom/oneplus/houston/common/client/IEvent;

    .line 129
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mDispatcherHandler:Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;->removeMessages(I)V

    .line 130
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mDispatcherHandler:Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;->removeMessages(I)V

    .line 131
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mDispatcherHandler:Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;->removeMessages(I)V

    .line 132
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mDelayedEventAccount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    .line 133
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mDispatcherHandler:Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 135
    const-string v0, "HoustonClient"

    const-string v1, "Houston server force died as Houston app has exited!"

    invoke-static {v0, v1}, Lcom/oneplus/houston/common/client/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_0
    monitor-exit p0

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public scheduleProcessEvent(I)V
    .locals 4
    .param p1, "arg"    # I

    .line 142
    invoke-virtual {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mDelayedEventAccount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 144
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mDispatcherHandler:Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, ""

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 146
    :cond_0
    return-void
.end method

.method public scheduleProcessEvent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 156
    invoke-virtual {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mDelayedEventAccount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 158
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mDispatcherHandler:Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v2, v1, p1}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 160
    :cond_0
    return-void
.end method

.method public scheduleProcessEvent(Lcom/oneplus/houston/common/client/Event;)V
    .locals 4
    .param p1, "data"    # Lcom/oneplus/houston/common/client/Event;

    .line 149
    invoke-virtual {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mDelayedEventAccount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 151
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mDispatcherHandler:Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, p1}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 153
    :cond_0
    return-void
.end method

.method public systemReady()V
    .locals 4

    .line 66
    const-string v0, "HoustonClient"

    const-string v1, "houston systemReady"

    invoke-static {v0, v1}, Lcom/oneplus/houston/common/client/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mDispatcherHandler:Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 69
    return-void
.end method
