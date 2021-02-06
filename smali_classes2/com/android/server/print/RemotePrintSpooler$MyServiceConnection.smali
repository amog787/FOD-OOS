.class final Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;
.super Ljava/lang/Object;
.source "RemotePrintSpooler.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintSpooler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/print/RemotePrintSpooler;


# direct methods
.method private constructor <init>(Lcom/android/server/print/RemotePrintSpooler;)V
    .locals 0

    .line 710
    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;->this$0:Lcom/android/server/print/RemotePrintSpooler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/print/RemotePrintSpooler;Lcom/android/server/print/RemotePrintSpooler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/print/RemotePrintSpooler;
    .param p2, "x1"    # Lcom/android/server/print/RemotePrintSpooler$1;

    .line 710
    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;-><init>(Lcom/android/server/print/RemotePrintSpooler;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 713
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;->this$0:Lcom/android/server/print/RemotePrintSpooler;

    invoke-static {v0}, Lcom/android/server/print/RemotePrintSpooler;->access$100(Lcom/android/server/print/RemotePrintSpooler;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 714
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;->this$0:Lcom/android/server/print/RemotePrintSpooler;

    invoke-static {p2}, Landroid/print/IPrintSpooler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpooler;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/print/RemotePrintSpooler;->access$202(Lcom/android/server/print/RemotePrintSpooler;Landroid/print/IPrintSpooler;)Landroid/print/IPrintSpooler;

    .line 715
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;->this$0:Lcom/android/server/print/RemotePrintSpooler;

    invoke-static {v1}, Lcom/android/server/print/RemotePrintSpooler;->access$300(Lcom/android/server/print/RemotePrintSpooler;)V

    .line 716
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;->this$0:Lcom/android/server/print/RemotePrintSpooler;

    invoke-static {v1}, Lcom/android/server/print/RemotePrintSpooler;->access$100(Lcom/android/server/print/RemotePrintSpooler;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 717
    monitor-exit v0

    .line 718
    return-void

    .line 717
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 722
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;->this$0:Lcom/android/server/print/RemotePrintSpooler;

    invoke-static {v0}, Lcom/android/server/print/RemotePrintSpooler;->access$100(Lcom/android/server/print/RemotePrintSpooler;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 723
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;->this$0:Lcom/android/server/print/RemotePrintSpooler;

    invoke-static {v1}, Lcom/android/server/print/RemotePrintSpooler;->access$200(Lcom/android/server/print/RemotePrintSpooler;)Landroid/print/IPrintSpooler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 724
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;->this$0:Lcom/android/server/print/RemotePrintSpooler;

    invoke-static {v1}, Lcom/android/server/print/RemotePrintSpooler;->access$400(Lcom/android/server/print/RemotePrintSpooler;)V

    .line 725
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;->this$0:Lcom/android/server/print/RemotePrintSpooler;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/print/RemotePrintSpooler;->access$202(Lcom/android/server/print/RemotePrintSpooler;Landroid/print/IPrintSpooler;)Landroid/print/IPrintSpooler;

    .line 727
    :cond_0
    monitor-exit v0

    .line 728
    return-void

    .line 727
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
