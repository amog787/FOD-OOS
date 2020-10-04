.class public Lcom/android/server/location/PassiveProvider;
.super Lcom/android/server/location/AbstractLocationProvider;
.source "PassiveProvider.java"


# static fields
.field private static final PROPERTIES:Lcom/android/internal/location/ProviderProperties;


# instance fields
.field private mReportLocation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 40
    new-instance v10, Lcom/android/internal/location/ProviderProperties;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x2

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    sput-object v10, Lcom/android/server/location/PassiveProvider;->PROPERTIES:Lcom/android/internal/location/ProviderProperties;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locationProviderManager"    # Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/AbstractLocationProvider;-><init>(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/PassiveProvider;->mReportLocation:Z

    .line 51
    sget-object v0, Lcom/android/server/location/PassiveProvider;->PROPERTIES:Lcom/android/internal/location/ProviderProperties;

    invoke-virtual {p0, v0}, Lcom/android/server/location/PassiveProvider;->setProperties(Lcom/android/internal/location/ProviderProperties;)V

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/location/PassiveProvider;->setEnabled(Z)V

    .line 53
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " report location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/location/PassiveProvider;->mReportLocation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 67
    return-void
.end method

.method public setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 1
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    .line 57
    iget-boolean v0, p1, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    iput-boolean v0, p0, Lcom/android/server/location/PassiveProvider;->mReportLocation:Z

    .line 58
    return-void
.end method

.method public updateLocation(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .line 61
    iget-boolean v0, p0, Lcom/android/server/location/PassiveProvider;->mReportLocation:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/server/location/PassiveProvider;->reportLocation(Landroid/location/Location;)V

    .line 64
    :cond_0
    return-void
.end method
