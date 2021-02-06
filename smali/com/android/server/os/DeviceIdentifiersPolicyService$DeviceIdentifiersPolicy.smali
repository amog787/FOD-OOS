.class final Lcom/android/server/os/DeviceIdentifiersPolicyService$DeviceIdentifiersPolicy;
.super Landroid/os/IDeviceIdentifiersPolicyService$Stub;
.source "DeviceIdentifiersPolicyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/DeviceIdentifiersPolicyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeviceIdentifiersPolicy"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Landroid/os/IDeviceIdentifiersPolicyService$Stub;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/server/os/DeviceIdentifiersPolicyService$DeviceIdentifiersPolicy;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method


# virtual methods
.method public getSerial()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/android/server/os/DeviceIdentifiersPolicyService$DeviceIdentifiersPolicy;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getSerial"

    invoke-static {v0, v1, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadDeviceIdentifiers(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "unknown"

    if-nez v0, :cond_0

    .line 60
    return-object v1

    .line 62
    :cond_0
    const-string/jumbo v0, "ro.serialno"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSerialForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/android/server/os/DeviceIdentifiersPolicyService$DeviceIdentifiersPolicy;->mContext:Landroid/content/Context;

    const-string v1, "getSerial"

    invoke-static {v0, p1, p2, v1}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadDeviceIdentifiers(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "unknown"

    if-nez v0, :cond_0

    .line 70
    return-object v1

    .line 72
    :cond_0
    const-string/jumbo v0, "ro.serialno"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
