.class interface abstract Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;
.super Ljava/lang/Object;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "IkeV2VpnRunnerCallback"
.end annotation


# virtual methods
.method public abstract onChildOpened(Landroid/net/Network;Landroid/net/ipsec/ike/ChildSessionConfiguration;)V
.end method

.method public abstract onChildTransformCreated(Landroid/net/Network;Landroid/net/IpSecTransform;I)V
.end method

.method public abstract onDefaultNetworkChanged(Landroid/net/Network;)V
.end method

.method public abstract onSessionLost(Landroid/net/Network;)V
.end method
