.class Lcom/android/server/NetworkTimeUpdateService$NetworkTimeUpdateCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkTimeUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkTimeUpdateCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkTimeUpdateService;


# direct methods
.method private constructor <init>(Lcom/android/server/NetworkTimeUpdateService;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/android/server/NetworkTimeUpdateService$NetworkTimeUpdateCallback;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/NetworkTimeUpdateService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/NetworkTimeUpdateService;
    .param p2, "x1"    # Lcom/android/server/NetworkTimeUpdateService$1;

    .line 232
    invoke-direct {p0, p1}, Lcom/android/server/NetworkTimeUpdateService$NetworkTimeUpdateCallback;-><init>(Lcom/android/server/NetworkTimeUpdateService;)V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 235
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "New default network %s; checking time."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkTimeUpdateService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService$NetworkTimeUpdateCallback;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-static {v0, p1}, Lcom/android/server/NetworkTimeUpdateService;->access$302(Lcom/android/server/NetworkTimeUpdateService;Landroid/net/Network;)Landroid/net/Network;

    .line 238
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService$NetworkTimeUpdateCallback;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/server/NetworkTimeUpdateService;->access$200(Lcom/android/server/NetworkTimeUpdateService;I)V

    .line 239
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 243
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService$NetworkTimeUpdateCallback;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-static {v0}, Lcom/android/server/NetworkTimeUpdateService;->access$300(Lcom/android/server/NetworkTimeUpdateService;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService$NetworkTimeUpdateCallback;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/NetworkTimeUpdateService;->access$302(Lcom/android/server/NetworkTimeUpdateService;Landroid/net/Network;)Landroid/net/Network;

    .line 244
    :cond_0
    return-void
.end method
