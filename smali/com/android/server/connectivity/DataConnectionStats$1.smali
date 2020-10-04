.class Lcom/android/server/connectivity/DataConnectionStats$1;
.super Lcom/android/server/connectivity/FiveGStatusListener;
.source "DataConnectionStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/DataConnectionStats;->startMonitoring()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/DataConnectionStats;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/DataConnectionStats;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/DataConnectionStats;
    .param p2, "context"    # Landroid/content/Context;

    .line 76
    iput-object p1, p0, Lcom/android/server/connectivity/DataConnectionStats$1;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-direct {p0, p2}, Lcom/android/server/connectivity/FiveGStatusListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public on5GStatusChanged(ZZ)V
    .locals 1
    .param p1, "showFiveGService"    # Z
    .param p2, "campOnFiveGService"    # Z

    .line 79
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats$1;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-static {v0, p1}, Lcom/android/server/connectivity/DataConnectionStats;->access$002(Lcom/android/server/connectivity/DataConnectionStats;Z)Z

    .line 80
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats$1;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-static {v0, p2}, Lcom/android/server/connectivity/DataConnectionStats;->access$102(Lcom/android/server/connectivity/DataConnectionStats;Z)Z

    .line 81
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats$1;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-static {v0}, Lcom/android/server/connectivity/DataConnectionStats;->access$200(Lcom/android/server/connectivity/DataConnectionStats;)V

    .line 82
    return-void
.end method
