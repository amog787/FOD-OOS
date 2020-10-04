.class Lcom/android/server/OldNetworkTimeUpdateService$NetworkTimeUpdateCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "OldNetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OldNetworkTimeUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkTimeUpdateCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OldNetworkTimeUpdateService;


# direct methods
.method private constructor <init>(Lcom/android/server/OldNetworkTimeUpdateService;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/android/server/OldNetworkTimeUpdateService$NetworkTimeUpdateCallback;->this$0:Lcom/android/server/OldNetworkTimeUpdateService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/OldNetworkTimeUpdateService;Lcom/android/server/OldNetworkTimeUpdateService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/OldNetworkTimeUpdateService;
    .param p2, "x1"    # Lcom/android/server/OldNetworkTimeUpdateService$1;

    .line 275
    invoke-direct {p0, p1}, Lcom/android/server/OldNetworkTimeUpdateService$NetworkTimeUpdateCallback;-><init>(Lcom/android/server/OldNetworkTimeUpdateService;)V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 278
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "New default network %s; checking time."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkTimeUpdateService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lcom/android/server/OldNetworkTimeUpdateService$NetworkTimeUpdateCallback;->this$0:Lcom/android/server/OldNetworkTimeUpdateService;

    invoke-static {v0, p1}, Lcom/android/server/OldNetworkTimeUpdateService;->access$402(Lcom/android/server/OldNetworkTimeUpdateService;Landroid/net/Network;)Landroid/net/Network;

    .line 281
    iget-object v0, p0, Lcom/android/server/OldNetworkTimeUpdateService$NetworkTimeUpdateCallback;->this$0:Lcom/android/server/OldNetworkTimeUpdateService;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/server/OldNetworkTimeUpdateService;->access$300(Lcom/android/server/OldNetworkTimeUpdateService;I)V

    .line 282
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 286
    iget-object v0, p0, Lcom/android/server/OldNetworkTimeUpdateService$NetworkTimeUpdateCallback;->this$0:Lcom/android/server/OldNetworkTimeUpdateService;

    invoke-static {v0}, Lcom/android/server/OldNetworkTimeUpdateService;->access$400(Lcom/android/server/OldNetworkTimeUpdateService;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/OldNetworkTimeUpdateService$NetworkTimeUpdateCallback;->this$0:Lcom/android/server/OldNetworkTimeUpdateService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/OldNetworkTimeUpdateService;->access$402(Lcom/android/server/OldNetworkTimeUpdateService;Landroid/net/Network;)Landroid/net/Network;

    .line 287
    :cond_0
    return-void
.end method
