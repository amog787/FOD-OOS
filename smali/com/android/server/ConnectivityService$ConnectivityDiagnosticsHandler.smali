.class Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectivityDiagnosticsHandler"
.end annotation


# static fields
.field private static final EVENT_DATA_STALL_SUSPECTED:I = 0x4

.field private static final EVENT_NETWORK_CONNECTIVITY_REPORTED:I = 0x5

.field private static final EVENT_NETWORK_TESTED:I = 0x29

.field private static final EVENT_REGISTER_CONNECTIVITY_DIAGNOSTICS_CALLBACK:I = 0x1

.field private static final EVENT_UNREGISTER_CONNECTIVITY_DIAGNOSTICS_CALLBACK:I = 0x2


# instance fields
.field private final mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method private constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/ConnectivityService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 8343
    iput-object p1, p0, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsHandler;->this$0:Lcom/android/server/ConnectivityService;

    .line 8344
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8294
    const-class v0, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsHandler;->mTag:Ljava/lang/String;

    .line 8345
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;Lcom/android/server/ConnectivityService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/ConnectivityService;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Lcom/android/server/ConnectivityService$1;

    .line 8293
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsHandler;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 8349
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/16 v1, 0x29

    if-eq v0, v1, :cond_0

    .line 8389
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsHandler;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized event in ConnectivityDiagnostics: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8361
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/ConnectivityService$ConnectivityReportEvent;

    .line 8369
    .local v0, "reportEvent":Lcom/android/server/ConnectivityService$ConnectivityReportEvent;
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/PersistableBundle;-><init>(Landroid/os/Bundle;)V

    .line 8370
    .local v1, "extras":Landroid/os/PersistableBundle;
    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v2, v0, v1}, Lcom/android/server/ConnectivityService;->access$9200(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$ConnectivityReportEvent;Landroid/os/PersistableBundle;)V

    .line 8371
    goto :goto_0

    .line 8385
    .end local v0    # "reportEvent":Lcom/android/server/ConnectivityService$ConnectivityReportEvent;
    .end local v1    # "extras":Landroid/os/PersistableBundle;
    :cond_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$2200(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/server/ConnectivityService;->access$9400(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Z)V

    .line 8386
    goto :goto_0

    .line 8374
    :cond_2
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 8375
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v0, :cond_3

    goto :goto_0

    .line 8380
    :cond_3
    new-instance v7, Landroid/os/PersistableBundle;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v7, v1}, Landroid/os/PersistableBundle;-><init>(Landroid/os/Bundle;)V

    .line 8381
    .local v7, "extras":Landroid/os/PersistableBundle;
    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget v6, p1, Landroid/os/Message;->arg1:I

    move-object v3, v0

    invoke-static/range {v2 .. v7}, Lcom/android/server/ConnectivityService;->access$9300(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;JILandroid/os/PersistableBundle;)V

    .line 8382
    goto :goto_0

    .line 8356
    .end local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v7    # "extras":Landroid/os/PersistableBundle;
    :cond_4
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/IConnectivityDiagnosticsCallback;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Lcom/android/server/ConnectivityService;->access$9100(Lcom/android/server/ConnectivityService;Landroid/net/IConnectivityDiagnosticsCallback;I)V

    .line 8358
    goto :goto_0

    .line 8351
    :cond_5
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$9000(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;)V

    .line 8353
    nop

    .line 8392
    :goto_0
    return-void
.end method
