.class public Lcom/android/server/location/LocationRequestStatistics;
.super Ljava/lang/Object;
.source "LocationRequestStatistics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;,
        Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationStats"


# instance fields
.field public final statistics:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;",
            "Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/LocationRequestStatistics;->statistics:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public startRequesting(Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "intervalMs"    # J
    .param p5, "isForeground"    # Z

    .line 31
    new-instance v0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .local v0, "key":Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;
    iget-object v1, p0, Lcom/android/server/location/LocationRequestStatistics;->statistics:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;

    .line 33
    .local v1, "stats":Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;
    if-nez v1, :cond_0

    .line 34
    new-instance v2, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;-><init>(Lcom/android/server/location/LocationRequestStatistics$1;)V

    move-object v1, v2

    .line 35
    iget-object v2, p0, Lcom/android/server/location/LocationRequestStatistics;->statistics:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_0
    invoke-static {v1, p3, p4}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->access$100(Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;J)V

    .line 38
    invoke-static {v1, p5}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->access$200(Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;Z)V

    .line 42
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/am/OpAppRecordInjector;->noteStartGps(Ljava/lang/String;Ljava/lang/String;J)V

    .line 43
    if-nez p5, :cond_1

    .line 44
    const/4 v2, 0x1

    invoke-static {p1, p2, v2}, Lcom/android/server/am/OpAppRecordInjector;->notePauseGps(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 47
    :cond_1
    return-void
.end method

.method public stopRequesting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "providerName"    # Ljava/lang/String;

    .line 56
    new-instance v0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .local v0, "key":Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;
    iget-object v1, p0, Lcom/android/server/location/LocationRequestStatistics;->statistics:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;

    .line 58
    .local v1, "stats":Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;
    if-eqz v1, :cond_0

    .line 59
    invoke-static {v1}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->access$300(Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;)V

    .line 64
    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/am/OpAppRecordInjector;->noteStopGps(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public updateForeground(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "isForeground"    # Z

    .line 75
    new-instance v0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .local v0, "key":Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;
    iget-object v1, p0, Lcom/android/server/location/LocationRequestStatistics;->statistics:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;

    .line 77
    .local v1, "stats":Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;
    if-eqz v1, :cond_0

    .line 78
    invoke-static {v1, p3}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->access$200(Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;Z)V

    .line 83
    :cond_0
    xor-int/lit8 v2, p3, 0x1

    invoke-static {p1, p2, v2}, Lcom/android/server/am/OpAppRecordInjector;->notePauseGps(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 85
    return-void
.end method
