.class Lcom/android/server/wm/ClientLifecycleManager;
.super Ljava/lang/Object;
.source "ClientLifecycleManager.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static transactionWithCallback(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)Landroid/app/servertransaction/ClientTransaction;
    .locals 1
    .param p0, "client"    # Landroid/app/IApplicationThread;
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "callback"    # Landroid/app/servertransaction/ClientTransactionItem;

    .line 124
    invoke-static {p0, p1}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v0

    .line 125
    .local v0, "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    invoke-virtual {v0, p2}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 126
    return-object v0
.end method

.method private static transactionWithState(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)Landroid/app/servertransaction/ClientTransaction;
    .locals 1
    .param p0, "client"    # Landroid/app/IApplicationThread;
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "stateRequest"    # Landroid/app/servertransaction/ActivityLifecycleItem;

    .line 111
    invoke-static {p0, p1}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v0

    .line 112
    .local v0, "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    invoke-virtual {v0, p2}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 113
    return-object v0
.end method


# virtual methods
.method scheduleTransaction(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)V
    .locals 1
    .param p1, "client"    # Landroid/app/IApplicationThread;
    .param p2, "callback"    # Landroid/app/servertransaction/ClientTransactionItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/android/server/wm/ClientLifecycleManager;->transactionWithCallback(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v0

    .line 100
    .local v0, "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 101
    return-void
.end method

.method scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)V
    .locals 1
    .param p1, "client"    # Landroid/app/IApplicationThread;
    .param p2, "activityToken"    # Landroid/os/IBinder;
    .param p3, "stateRequest"    # Landroid/app/servertransaction/ActivityLifecycleItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    invoke-static {p1, p2, p3}, Lcom/android/server/wm/ClientLifecycleManager;->transactionWithState(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v0

    .line 69
    .local v0, "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 70
    return-void
.end method

.method scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V
    .locals 1
    .param p1, "client"    # Landroid/app/IApplicationThread;
    .param p2, "activityToken"    # Landroid/os/IBinder;
    .param p3, "callback"    # Landroid/app/servertransaction/ClientTransactionItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    invoke-static {p1, p2, p3}, Lcom/android/server/wm/ClientLifecycleManager;->transactionWithCallback(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v0

    .line 85
    .local v0, "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 86
    return-void
.end method

.method scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    .locals 2
    .param p1, "transaction"    # Landroid/app/servertransaction/ClientTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    invoke-virtual {p1}, Landroid/app/servertransaction/ClientTransaction;->getClient()Landroid/app/IApplicationThread;

    move-result-object v0

    .line 47
    .local v0, "client":Landroid/app/IApplicationThread;
    invoke-virtual {p1}, Landroid/app/servertransaction/ClientTransaction;->schedule()V

    .line 48
    instance-of v1, v0, Landroid/os/Binder;

    if-nez v1, :cond_0

    .line 52
    invoke-virtual {p1}, Landroid/app/servertransaction/ClientTransaction;->recycle()V

    .line 54
    :cond_0
    return-void
.end method
