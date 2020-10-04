.class public Landroid/net/ip/IpServer$Callback;
.super Ljava/lang/Object;
.source "IpServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateInterfaceState(Landroid/net/ip/IpServer;II)V
    .locals 0
    .param p1, "who"    # Landroid/net/ip/IpServer;
    .param p2, "state"    # I
    .param p3, "lastError"    # I

    .line 126
    return-void
.end method

.method public updateLinkProperties(Landroid/net/ip/IpServer;Landroid/net/LinkProperties;)V
    .locals 0
    .param p1, "who"    # Landroid/net/ip/IpServer;
    .param p2, "newLp"    # Landroid/net/LinkProperties;

    .line 134
    return-void
.end method
