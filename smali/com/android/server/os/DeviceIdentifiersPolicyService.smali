.class public final Lcom/android/server/os/DeviceIdentifiersPolicyService;
.super Lcom/android/server/SystemService;
.source "DeviceIdentifiersPolicyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/os/DeviceIdentifiersPolicyService$DeviceIdentifiersPolicy;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 40
    new-instance v0, Lcom/android/server/os/DeviceIdentifiersPolicyService$DeviceIdentifiersPolicy;

    .line 41
    invoke-virtual {p0}, Lcom/android/server/os/DeviceIdentifiersPolicyService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/os/DeviceIdentifiersPolicyService$DeviceIdentifiersPolicy;-><init>(Landroid/content/Context;)V

    .line 40
    const-string v1, "device_identifiers"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/os/DeviceIdentifiersPolicyService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 42
    return-void
.end method
