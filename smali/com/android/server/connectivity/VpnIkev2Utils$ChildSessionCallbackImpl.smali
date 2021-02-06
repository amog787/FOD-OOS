.class Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;
.super Ljava/lang/Object;
.source "VpnIkev2Utils.java"

# interfaces
.implements Landroid/net/ipsec/ike/ChildSessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/VpnIkev2Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChildSessionCallbackImpl"
.end annotation


# instance fields
.field private final mCallback:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;

.field private final mNetwork:Landroid/net/Network;

.field private final mTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;Landroid/net/Network;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;
    .param p3, "network"    # Landroid/net/Network;

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput-object p1, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mTag:Ljava/lang/String;

    .line 296
    iput-object p2, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mCallback:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;

    .line 297
    iput-object p3, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mNetwork:Landroid/net/Network;

    .line 298
    return-void
.end method


# virtual methods
.method public onClosed()V
    .locals 3

    .line 308
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChildClosed for network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mCallback:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;

    iget-object v1, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mNetwork:Landroid/net/Network;

    invoke-interface {v0, v1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;->onSessionLost(Landroid/net/Network;)V

    .line 310
    return-void
.end method

.method public onClosedExceptionally(Landroid/net/ipsec/ike/exceptions/IkeException;)V
    .locals 3
    .param p1, "exception"    # Landroid/net/ipsec/ike/exceptions/IkeException;

    .line 314
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChildClosedExceptionally for network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 315
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mCallback:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;

    iget-object v1, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mNetwork:Landroid/net/Network;

    invoke-interface {v0, v1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;->onSessionLost(Landroid/net/Network;)V

    .line 316
    return-void
.end method

.method public onIpSecTransformCreated(Landroid/net/IpSecTransform;I)V
    .locals 3
    .param p1, "transform"    # Landroid/net/IpSecTransform;
    .param p2, "direction"    # I

    .line 320
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChildTransformCreated; Direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mCallback:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;

    iget-object v1, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mNetwork:Landroid/net/Network;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;->onChildTransformCreated(Landroid/net/Network;Landroid/net/IpSecTransform;I)V

    .line 322
    return-void
.end method

.method public onIpSecTransformDeleted(Landroid/net/IpSecTransform;I)V
    .locals 3
    .param p1, "transform"    # Landroid/net/IpSecTransform;
    .param p2, "direction"    # I

    .line 329
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChildTransformDeleted; Direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; for network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return-void
.end method

.method public onOpened(Landroid/net/ipsec/ike/ChildSessionConfiguration;)V
    .locals 3
    .param p1, "childConfig"    # Landroid/net/ipsec/ike/ChildSessionConfiguration;

    .line 302
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChildOpened for network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mCallback:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;

    iget-object v1, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mNetwork:Landroid/net/Network;

    invoke-interface {v0, v1, p1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;->onChildOpened(Landroid/net/Network;Landroid/net/ipsec/ike/ChildSessionConfiguration;)V

    .line 304
    return-void
.end method
