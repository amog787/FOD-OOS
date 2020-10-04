.class Landroid/net/ip/IpServer$UnavailableState;
.super Lcom/android/internal/util/State;
.source "IpServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnavailableState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ip/IpServer;


# direct methods
.method constructor <init>(Landroid/net/ip/IpServer;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/ip/IpServer;

    .line 1043
    iput-object p1, p0, Landroid/net/ip/IpServer$UnavailableState;->this$0:Landroid/net/ip/IpServer;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 1046
    iget-object v0, p0, Landroid/net/ip/IpServer$UnavailableState;->this$0:Landroid/net/ip/IpServer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/net/ip/IpServer;->access$002(Landroid/net/ip/IpServer;I)I

    .line 1047
    iget-object v0, p0, Landroid/net/ip/IpServer$UnavailableState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0, v1}, Landroid/net/ip/IpServer;->access$800(Landroid/net/ip/IpServer;I)V

    .line 1048
    return-void
.end method
