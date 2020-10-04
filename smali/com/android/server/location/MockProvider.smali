.class public Lcom/android/server/location/MockProvider;
.super Lcom/android/server/location/AbstractLocationProvider;
.source "MockProvider.java"


# instance fields
.field private mEnabled:Z

.field private mExtras:Landroid/os/Bundle;

.field private mLocation:Landroid/location/Location;

.field private mStatus:I

.field private mStatusUpdateTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;Lcom/android/internal/location/ProviderProperties;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locationProviderManager"    # Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;
    .param p3, "properties"    # Lcom/android/internal/location/ProviderProperties;

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/AbstractLocationProvider;-><init>(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;)V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/MockProvider;->mEnabled:Z

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/MockProvider;->mLocation:Landroid/location/Location;

    .line 51
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/location/MockProvider;->mStatus:I

    .line 52
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/location/MockProvider;->mStatusUpdateTime:J

    .line 53
    iput-object v0, p0, Lcom/android/server/location/MockProvider;->mExtras:Landroid/os/Bundle;

    .line 55
    invoke-virtual {p0, p3}, Lcom/android/server/location/MockProvider;->setProperties(Lcom/android/internal/location/ProviderProperties;)V

    .line 56
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " last location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/MockProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 92
    iget-object v0, p0, Lcom/android/server/location/MockProvider;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    .line 94
    iget-object v0, p0, Lcom/android/server/location/MockProvider;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 97
    :cond_0
    iget v0, p0, Lcom/android/server/location/MockProvider;->mStatus:I

    return v0
.end method

.method public getStatusUpdateTime()J
    .locals 2

    .line 102
    iget-wide v0, p0, Lcom/android/server/location/MockProvider;->mStatusUpdateTime:J

    return-wide v0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 106
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 60
    iput-boolean p1, p0, Lcom/android/server/location/MockProvider;->mEnabled:Z

    .line 61
    invoke-super {p0, p1}, Lcom/android/server/location/AbstractLocationProvider;->setEnabled(Z)V

    .line 62
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 2
    .param p1, "l"    # Landroid/location/Location;

    .line 66
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/android/server/location/MockProvider;->mLocation:Landroid/location/Location;

    .line 67
    iget-object v0, p0, Lcom/android/server/location/MockProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->isFromMockProvider()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/server/location/MockProvider;->mLocation:Landroid/location/Location;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/location/Location;->setIsFromMockProvider(Z)V

    .line 70
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/MockProvider;->mEnabled:Z

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/android/server/location/MockProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {p0, v0}, Lcom/android/server/location/MockProvider;->reportLocation(Landroid/location/Location;)V

    .line 73
    :cond_1
    return-void
.end method

.method public setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 0
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    .line 88
    return-void
.end method

.method public setStatus(ILandroid/os/Bundle;J)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "updateTime"    # J

    .line 77
    iput p1, p0, Lcom/android/server/location/MockProvider;->mStatus:I

    .line 78
    iput-wide p3, p0, Lcom/android/server/location/MockProvider;->mStatusUpdateTime:J

    .line 79
    iput-object p2, p0, Lcom/android/server/location/MockProvider;->mExtras:Landroid/os/Bundle;

    .line 80
    return-void
.end method
