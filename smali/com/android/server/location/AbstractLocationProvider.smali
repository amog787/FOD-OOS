.class public abstract Lcom/android/server/location/AbstractLocationProvider;
.super Ljava/lang/Object;
.source "AbstractLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;
    }
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private final mLocationProviderManager:Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locationProviderManager"    # Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/android/server/location/AbstractLocationProvider;->mContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/android/server/location/AbstractLocationProvider;->mLocationProviderManager:Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;

    .line 77
    return-void
.end method


# virtual methods
.method public abstract dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public getProviderPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/android/server/location/AbstractLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 132
    const/4 v0, 0x2

    return v0
.end method

.method public getStatusUpdateTime()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 142
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected reportLocation(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .line 83
    iget-object v0, p0, Lcom/android/server/location/AbstractLocationProvider;->mLocationProviderManager:Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;

    invoke-interface {v0, p1}, Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;->onReportLocation(Landroid/location/Location;)V

    .line 84
    return-void
.end method

.method protected reportLocation(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .line 90
    .local p1, "locations":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    iget-object v0, p0, Lcom/android/server/location/AbstractLocationProvider;->mLocationProviderManager:Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;

    invoke-interface {v0, p1}, Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;->onReportLocation(Ljava/util/List;)V

    .line 91
    return-void
.end method

.method public abstract sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method protected setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 98
    iget-object v0, p0, Lcom/android/server/location/AbstractLocationProvider;->mLocationProviderManager:Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;

    invoke-interface {v0, p1}, Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;->onSetEnabled(Z)V

    .line 99
    return-void
.end method

.method protected setProperties(Lcom/android/internal/location/ProviderProperties;)V
    .locals 1
    .param p1, "properties"    # Lcom/android/internal/location/ProviderProperties;

    .line 106
    iget-object v0, p0, Lcom/android/server/location/AbstractLocationProvider;->mLocationProviderManager:Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;

    invoke-interface {v0, p1}, Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;->onSetProperties(Lcom/android/internal/location/ProviderProperties;)V

    .line 107
    return-void
.end method

.method public abstract setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
.end method
