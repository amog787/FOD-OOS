.class public Landroid/net/ip/IpClientUtil;
.super Ljava/lang/Object;
.source "IpClientUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;,
        Landroid/net/ip/IpClientUtil$WaitForProvisioningCallbacks;
    }
.end annotation


# static fields
.field public static final DUMP_ARG:Ljava/lang/String; = "ipclient"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpIpClient(Landroid/net/ip/IIpClient;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p0, "connector"    # Landroid/net/ip/IIpClient;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 191
    const-string v0, "IpClient logs have moved to dumpsys network_stack"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public static makeIpClient(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpClientCallbacks;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/net/ip/IpClientCallbacks;

    .line 80
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    move-result-object v0

    new-instance v1, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;

    invoke-direct {v1, p2}, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;-><init>(Landroid/net/ip/IpClientCallbacks;)V

    invoke-virtual {v0, p1, v1}, Landroid/net/NetworkStackClient;->makeIpClient(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;)V

    .line 81
    return-void
.end method
