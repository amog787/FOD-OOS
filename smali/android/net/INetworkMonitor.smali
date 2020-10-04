.class public interface abstract Landroid/net/INetworkMonitor;
.super Ljava/lang/Object;
.source "INetworkMonitor.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkMonitor$Stub;,
        Landroid/net/INetworkMonitor$Default;
    }
.end annotation


# static fields
.field public static final NETWORK_TEST_RESULT_INVALID:I = 0x1

.field public static final NETWORK_TEST_RESULT_PARTIAL_CONNECTIVITY:I = 0x2

.field public static final NETWORK_TEST_RESULT_VALID:I = 0x0

.field public static final NETWORK_VALIDATION_PROBE_DNS:I = 0x4

.field public static final NETWORK_VALIDATION_PROBE_FALLBACK:I = 0x20

.field public static final NETWORK_VALIDATION_PROBE_HTTP:I = 0x8

.field public static final NETWORK_VALIDATION_PROBE_HTTPS:I = 0x10

.field public static final NETWORK_VALIDATION_PROBE_PRIVDNS:I = 0x40

.field public static final NETWORK_VALIDATION_RESULT_PARTIAL:I = 0x2

.field public static final NETWORK_VALIDATION_RESULT_VALID:I = 0x1

.field public static final VERSION:I = 0x3


# virtual methods
.method public abstract forceReevaluation(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getInterfaceVersion()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract launchCaptivePortalApp()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyCaptivePortalAppFinished(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyDnsResponse(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyLinkPropertiesChanged(Landroid/net/LinkProperties;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyNetworkCapabilitiesChanged(Landroid/net/NetworkCapabilities;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyNetworkConnected(Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyNetworkDisconnected()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyPrivateDnsChanged(Landroid/net/PrivateDnsConfigParcel;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setAcceptPartialConnectivity()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
