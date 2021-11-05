.class public Lcom/android/server/wifi/SupplicantManager;
.super Ljava/lang/Object;
.source "SupplicantManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field private static final WPA_SUPPLICANT_DAEMON_NAME:Ljava/lang/String; = "wpa_supplicant"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static start()V
    .locals 1

    .line 37
    const-string v0, "wpa_supplicant"

    invoke-static {v0}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static stop()V
    .locals 1

    .line 45
    const-string v0, "wpa_supplicant"

    invoke-static {v0}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 46
    return-void
.end method
