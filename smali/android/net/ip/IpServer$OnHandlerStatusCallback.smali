.class abstract Landroid/net/ip/IpServer$OnHandlerStatusCallback;
.super Landroid/net/INetworkStackStatusCallback$Stub;
.source "IpServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "OnHandlerStatusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ip/IpServer;


# direct methods
.method private constructor <init>(Landroid/net/ip/IpServer;)V
    .locals 0

    .line 289
    iput-object p1, p0, Landroid/net/ip/IpServer$OnHandlerStatusCallback;->this$0:Landroid/net/ip/IpServer;

    invoke-direct {p0}, Landroid/net/INetworkStackStatusCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/ip/IpServer;Landroid/net/ip/IpServer$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/ip/IpServer;
    .param p2, "x1"    # Landroid/net/ip/IpServer$1;

    .line 289
    invoke-direct {p0, p1}, Landroid/net/ip/IpServer$OnHandlerStatusCallback;-><init>(Landroid/net/ip/IpServer;)V

    return-void
.end method


# virtual methods
.method public abstract callback(I)V
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 299
    const/4 v0, 0x3

    return v0
.end method

.method public synthetic lambda$onStatusAvailable$0$IpServer$OnHandlerStatusCallback(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .line 292
    invoke-virtual {p0, p1}, Landroid/net/ip/IpServer$OnHandlerStatusCallback;->callback(I)V

    return-void
.end method

.method public onStatusAvailable(I)V
    .locals 2
    .param p1, "statusCode"    # I

    .line 292
    iget-object v0, p0, Landroid/net/ip/IpServer$OnHandlerStatusCallback;->this$0:Landroid/net/ip/IpServer;

    invoke-virtual {v0}, Landroid/net/ip/IpServer;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/net/ip/-$$Lambda$IpServer$OnHandlerStatusCallback$czoKoFz-ZQJY8J5O14qT9czTIoo;

    invoke-direct {v1, p0, p1}, Landroid/net/ip/-$$Lambda$IpServer$OnHandlerStatusCallback$czoKoFz-ZQJY8J5O14qT9czTIoo;-><init>(Landroid/net/ip/IpServer$OnHandlerStatusCallback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 293
    return-void
.end method
