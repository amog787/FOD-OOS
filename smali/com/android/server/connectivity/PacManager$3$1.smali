.class Lcom/android/server/connectivity/PacManager$3$1;
.super Lcom/android/net/IProxyPortListener$Stub;
.source "PacManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/PacManager$3;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/PacManager$3;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/PacManager$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/connectivity/PacManager$3;

    .line 355
    iput-object p1, p0, Lcom/android/server/connectivity/PacManager$3$1;->this$1:Lcom/android/server/connectivity/PacManager$3;

    invoke-direct {p0}, Lcom/android/net/IProxyPortListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public setProxyPort(I)V
    .locals 3
    .param p1, "port"    # I

    .line 358
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager$3$1;->this$1:Lcom/android/server/connectivity/PacManager$3;

    iget-object v0, v0, Lcom/android/server/connectivity/PacManager$3;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {v0}, Lcom/android/server/connectivity/PacManager;->access$1200(Lcom/android/server/connectivity/PacManager;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager$3$1;->this$1:Lcom/android/server/connectivity/PacManager$3;

    iget-object v0, v0, Lcom/android/server/connectivity/PacManager$3;->this$0:Lcom/android/server/connectivity/PacManager;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/connectivity/PacManager;->access$1302(Lcom/android/server/connectivity/PacManager;Z)Z

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager$3$1;->this$1:Lcom/android/server/connectivity/PacManager$3;

    iget-object v0, v0, Lcom/android/server/connectivity/PacManager$3;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {v0, p1}, Lcom/android/server/connectivity/PacManager;->access$1202(Lcom/android/server/connectivity/PacManager;I)I

    .line 363
    const-string v0, "PacManager"

    if-eq p1, v1, :cond_1

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Local proxy is bound on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager$3$1;->this$1:Lcom/android/server/connectivity/PacManager$3;

    iget-object v0, v0, Lcom/android/server/connectivity/PacManager$3;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {v0}, Lcom/android/server/connectivity/PacManager;->access$600(Lcom/android/server/connectivity/PacManager;)V

    goto :goto_0

    .line 367
    :cond_1
    const-string v1, "Received invalid port from Local Proxy, PAC will not be operational"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :goto_0
    return-void
.end method
