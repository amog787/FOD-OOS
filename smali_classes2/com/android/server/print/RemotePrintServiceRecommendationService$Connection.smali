.class Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;
.super Ljava/lang/Object;
.source "RemotePrintServiceRecommendationService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintServiceRecommendationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connection"
.end annotation


# instance fields
.field private final mCallbacks:Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;

.field final synthetic this$0:Lcom/android/server/print/RemotePrintServiceRecommendationService;


# direct methods
.method public constructor <init>(Lcom/android/server/print/RemotePrintServiceRecommendationService;Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;)V
    .locals 0
    .param p2, "callbacks"    # Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;

    .line 193
    iput-object p1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;->this$0:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p2, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;->mCallbacks:Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;

    .line 195
    return-void
.end method

.method static synthetic access$300(Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;)Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;

    .line 190
    iget-object v0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;->mCallbacks:Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;

    return-object v0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 199
    iget-object v0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;->this$0:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    invoke-static {v0}, Lcom/android/server/print/RemotePrintServiceRecommendationService;->access$000(Lcom/android/server/print/RemotePrintServiceRecommendationService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;->this$0:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    invoke-static {p2}, Landroid/printservice/recommendation/IRecommendationService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/printservice/recommendation/IRecommendationService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/print/RemotePrintServiceRecommendationService;->access$102(Lcom/android/server/print/RemotePrintServiceRecommendationService;Landroid/printservice/recommendation/IRecommendationService;)Landroid/printservice/recommendation/IRecommendationService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :try_start_1
    iget-object v1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;->this$0:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    invoke-static {v1}, Lcom/android/server/print/RemotePrintServiceRecommendationService;->access$100(Lcom/android/server/print/RemotePrintServiceRecommendationService;)Landroid/printservice/recommendation/IRecommendationService;

    move-result-object v1

    new-instance v2, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection$1;

    invoke-direct {v2, p0}, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection$1;-><init>(Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;)V

    invoke-interface {v1, v2}, Landroid/printservice/recommendation/IRecommendationService;->registerCallbacks(Landroid/printservice/recommendation/IRecommendationServiceCallbacks;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    goto :goto_0

    .line 220
    :catch_0
    move-exception v1

    .line 221
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "RemotePrintServiceRecS"

    const-string v3, "Could not register callbacks"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 224
    return-void

    .line 223
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 228
    const-string v0, "RemotePrintServiceRecS"

    const-string v1, "Unexpected termination of connection"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;->this$0:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    invoke-static {v0}, Lcom/android/server/print/RemotePrintServiceRecommendationService;->access$000(Lcom/android/server/print/RemotePrintServiceRecommendationService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;->this$0:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/print/RemotePrintServiceRecommendationService;->access$102(Lcom/android/server/print/RemotePrintServiceRecommendationService;Landroid/printservice/recommendation/IRecommendationService;)Landroid/printservice/recommendation/IRecommendationService;

    .line 232
    monitor-exit v0

    .line 233
    return-void

    .line 232
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
