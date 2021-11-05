.class final Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;
.super Landroid/print/IPrintSpoolerClient$Stub;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintSpooler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PrintSpoolerClient"
.end annotation


# instance fields
.field private final mWeakSpooler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/print/RemotePrintSpooler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/print/RemotePrintSpooler;)V
    .locals 1
    .param p1, "spooler"    # Lcom/android/server/print/RemotePrintSpooler;

    .line 927
    invoke-direct {p0}, Landroid/print/IPrintSpoolerClient$Stub;-><init>()V

    .line 928
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;->mWeakSpooler:Ljava/lang/ref/WeakReference;

    .line 929
    return-void
.end method


# virtual methods
.method public onAllPrintJobsForServiceHandled(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "printService"    # Landroid/content/ComponentName;

    .line 946
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;->mWeakSpooler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintSpooler;

    .line 947
    .local v0, "spooler":Lcom/android/server/print/RemotePrintSpooler;
    if-eqz v0, :cond_0

    .line 948
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 950
    .local v1, "identity":J
    :try_start_0
    invoke-static {v0}, Lcom/android/server/print/RemotePrintSpooler;->access$1300(Lcom/android/server/print/RemotePrintSpooler;)Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;->onAllPrintJobsForServiceHandled(Landroid/content/ComponentName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 952
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 953
    goto :goto_0

    .line 952
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 953
    throw v3

    .line 955
    .end local v1    # "identity":J
    :cond_0
    :goto_0
    return-void
.end method

.method public onAllPrintJobsHandled()V
    .locals 4

    .line 959
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;->mWeakSpooler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintSpooler;

    .line 960
    .local v0, "spooler":Lcom/android/server/print/RemotePrintSpooler;
    if-eqz v0, :cond_0

    .line 961
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 963
    .local v1, "identity":J
    :try_start_0
    invoke-static {v0}, Lcom/android/server/print/RemotePrintSpooler;->access$1400(Lcom/android/server/print/RemotePrintSpooler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 965
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 966
    goto :goto_0

    .line 965
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 966
    throw v3

    .line 968
    .end local v1    # "identity":J
    :cond_0
    :goto_0
    return-void
.end method

.method public onPrintJobQueued(Landroid/print/PrintJobInfo;)V
    .locals 4
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    .line 933
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;->mWeakSpooler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintSpooler;

    .line 934
    .local v0, "spooler":Lcom/android/server/print/RemotePrintSpooler;
    if-eqz v0, :cond_0

    .line 935
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 937
    .local v1, "identity":J
    :try_start_0
    invoke-static {v0}, Lcom/android/server/print/RemotePrintSpooler;->access$1300(Lcom/android/server/print/RemotePrintSpooler;)Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;->onPrintJobQueued(Landroid/print/PrintJobInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 939
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 940
    goto :goto_0

    .line 939
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 940
    throw v3

    .line 942
    .end local v1    # "identity":J
    :cond_0
    :goto_0
    return-void
.end method

.method public onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V
    .locals 4
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    .line 972
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;->mWeakSpooler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintSpooler;

    .line 973
    .local v0, "spooler":Lcom/android/server/print/RemotePrintSpooler;
    if-eqz v0, :cond_0

    .line 974
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 976
    .local v1, "identity":J
    :try_start_0
    invoke-static {v0, p1}, Lcom/android/server/print/RemotePrintSpooler;->access$1500(Lcom/android/server/print/RemotePrintSpooler;Landroid/print/PrintJobInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 978
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 979
    goto :goto_0

    .line 978
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 979
    throw v3

    .line 981
    .end local v1    # "identity":J
    :cond_0
    :goto_0
    return-void
.end method
