.class public Lcom/android/server/updates/EmergencyNumberDbInstallReceiver;
.super Lcom/android/server/updates/ConfigUpdateInstallReceiver;
.source "EmergencyNumberDbInstallReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EmergencyNumberDbInstallReceiver"


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 32
    const-string v0, "/data/misc/emergencynumberdb"

    const-string v1, "emergency_number_db"

    const-string v2, "metadata/"

    const-string v3, "version"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected postInstall(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 37
    const-string v0, "EmergencyNumberDbInstallReceiver"

    const-string v1, "Emergency number database is updated in file partition"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 42
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->notifyOtaEmergencyNumberDbInstalled()V

    .line 43
    return-void
.end method
