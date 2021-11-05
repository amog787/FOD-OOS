.class abstract Lcom/android/server/connectivity/Vpn$VpnRunner;
.super Ljava/lang/Thread;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "VpnRunner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method protected constructor <init>(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;

    .line 2147
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 2148
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 2149
    return-void
.end method


# virtual methods
.method protected final exit()V
    .locals 2

    .line 2167
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter v0

    .line 2168
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$VpnRunner;->exitVpnRunner()V

    .line 2169
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$500(Lcom/android/server/connectivity/Vpn;)V

    .line 2170
    monitor-exit v0

    .line 2171
    return-void

    .line 2170
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected abstract exitVpnRunner()V
.end method

.method public abstract run()V
.end method
