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

    .line 924
    invoke-direct {p0}, Landroid/print/IPrintSpoolerClient$Stub;-><init>()V

    .line 925
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;->mWeakSpooler:Ljava/lang/ref/WeakReference;

    .line 926
    return-void
.end method


# virtual methods
.method public onAllPrintJobsForServiceHandled(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "printService"    # Landroid/content/ComponentName;

    .line 943
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;->mWeakSpooler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintSpooler;

    .line 944
    .local v0, "spooler":Lcom/android/server/print/RemotePrintSpooler;
    if-eqz v0, :cond_0

    .line 945
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 947
    .local v1, "identity":J
    :try_start_0
    invoke-static {v0}, Lcom/android/server/print/RemotePrintSpooler;->access$1300(Lcom/android/server/print/RemotePrintSpooler;)Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;->onAllPrintJobsForServiceHandled(Landroid/content/ComponentName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 949
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 950
    goto :goto_0

    .line 949
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 952
    .end local v1    # "identity":J
    :cond_0
    :goto_0
    return-void
.end method

.method public onAllPrintJobsHandled()V
    .locals 4

    .line 956
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;->mWeakSpooler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintSpooler;

    .line 957
    .local v0, "spooler":Lcom/android/server/print/RemotePrintSpooler;
    if-eqz v0, :cond_0

    .line 958
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 960
    .local v1, "identity":J
    :try_start_0
    invoke-static {v0}, Lcom/android/server/print/RemotePrintSpooler;->access$1400(Lcom/android/server/print/RemotePrintSpooler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 962
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 963
    goto :goto_0

    .line 962
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 965
    .end local v1    # "identity":J
    :cond_0
    :goto_0
    return-void
.end method

.method public onPrintJobQueued(Landroid/print/PrintJobInfo;)V
    .locals 4
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    .line 930
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;->mWeakSpooler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintSpooler;

    .line 931
    .local v0, "spooler":Lcom/android/server/print/RemotePrintSpooler;
    if-eqz v0, :cond_0

    .line 932
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 934
    .local v1, "identity":J
    :try_start_0
    invoke-static {v0}, Lcom/android/server/print/RemotePrintSpooler;->access$1300(Lcom/android/server/print/RemotePrintSpooler;)Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;->onPrintJobQueued(Landroid/print/PrintJobInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 936
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 937
    goto :goto_0

    .line 936
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 939
    .end local v1    # "identity":J
    :cond_0
    :goto_0
    return-void
.end method

.method public onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V
    .locals 4
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    .line 969
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;->mWeakSpooler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintSpooler;

    .line 970
    .local v0, "spooler":Lcom/android/server/print/RemotePrintSpooler;
    if-eqz v0, :cond_0

    .line 971
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 973
    .local v1, "identity":J
    :try_start_0
    invoke-static {v0, p1}, Lcom/android/server/print/RemotePrintSpooler;->access$1500(Lcom/android/server/print/RemotePrintSpooler;Landroid/print/PrintJobInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 975
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 976
    goto :goto_0

    .line 975
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 978
    .end local v1    # "identity":J
    :cond_0
    :goto_0
    return-void
.end method
