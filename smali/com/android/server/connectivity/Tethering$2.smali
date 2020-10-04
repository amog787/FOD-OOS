.class Lcom/android/server/connectivity/Tethering$2;
.super Landroid/net/ip/IpServer$Callback;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/Tethering;->makeControlCallback()Landroid/net/ip/IpServer$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/Tethering;

    .line 2121
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$2;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {p0}, Landroid/net/ip/IpServer$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public updateInterfaceState(Landroid/net/ip/IpServer;II)V
    .locals 1
    .param p1, "who"    # Landroid/net/ip/IpServer;
    .param p2, "state"    # I
    .param p3, "lastError"    # I

    .line 2124
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$2;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/connectivity/Tethering;->access$3400(Lcom/android/server/connectivity/Tethering;Landroid/net/ip/IpServer;II)V

    .line 2125
    return-void
.end method

.method public updateLinkProperties(Landroid/net/ip/IpServer;Landroid/net/LinkProperties;)V
    .locals 1
    .param p1, "who"    # Landroid/net/ip/IpServer;
    .param p2, "newLp"    # Landroid/net/LinkProperties;

    .line 2129
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$2;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0, p1, p2}, Lcom/android/server/connectivity/Tethering;->access$3500(Lcom/android/server/connectivity/Tethering;Landroid/net/ip/IpServer;Landroid/net/LinkProperties;)V

    .line 2130
    return-void
.end method
