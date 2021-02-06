.class public Lcom/android/server/pm/pkg/PackageStateUnserialized;
.super Ljava/lang/Object;
.source "PackageStateUnserialized.java"


# instance fields
.field private hiddenUntilInstalled:Z

.field private volatile lastPackageUsageTimeInMills:[J

.field private overrideSeInfo:Ljava/lang/String;

.field private updatedSystemApp:Z

.field private usesLibraryFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private usesLibraryInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    nop

    .line 48
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    .line 50
    nop

    .line 51
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryFiles:Ljava/util/List;

    .line 50
    return-void
.end method

.method private __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 215
    return-void
.end method

.method private lazyInitLastPackageUsageTimeInMills()[J
    .locals 1

    .line 62
    const/16 v0, 0x8

    new-array v0, v0, [J

    return-object v0
.end method


# virtual methods
.method public getLastPackageUsageTimeInMills()[J
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->lastPackageUsageTimeInMills:[J

    .line 151
    .local v0, "_lastPackageUsageTimeInMills":[J
    if-nez v0, :cond_1

    .line 152
    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->lastPackageUsageTimeInMills:[J

    move-object v0, v1

    .line 154
    if-nez v0, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->lazyInitLastPackageUsageTimeInMills()[J

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->lastPackageUsageTimeInMills:[J

    move-object v0, v1

    .line 157
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 159
    :cond_1
    :goto_0
    return-object v0
.end method

.method public getLatestForegroundPackageUseTimeInMills()J
    .locals 8

    .line 85
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 90
    .local v0, "foregroundReasons":[I
    const-wide/16 v1, 0x0

    .line 91
    .local v1, "latestUse":J
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, v0, v4

    .line 92
    .local v5, "reason":I
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLastPackageUsageTimeInMills()[J

    move-result-object v6

    aget-wide v6, v6, v5

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 91
    .end local v5    # "reason":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 94
    :cond_0
    return-wide v1

    :array_0
    .array-data 4
        0x0
        0x2
    .end array-data
.end method

.method public getLatestPackageUseTimeInMills()J
    .locals 7

    .line 77
    const-wide/16 v0, 0x0

    .line 78
    .local v0, "latestUse":J
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLastPackageUsageTimeInMills()[J

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-wide v5, v2, v4

    .line 79
    .local v5, "use":J
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 78
    .end local v5    # "use":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 81
    :cond_0
    return-wide v0
.end method

.method public getOverrideSeInfo()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->overrideSeInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getUsesLibraryFiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryFiles:Ljava/util/List;

    return-object v0
.end method

.method public getUsesLibraryInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    return-object v0
.end method

.method public isHiddenUntilInstalled()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->hiddenUntilInstalled:Z

    return v0
.end method

.method public isUpdatedSystemApp()Z
    .locals 1

    .line 145
    iget-boolean v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    return v0
.end method

.method public setHiddenUntilInstalled(Z)Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .locals 0
    .param p1, "value"    # Z

    .line 169
    iput-boolean p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->hiddenUntilInstalled:Z

    .line 170
    return-object p0
.end method

.method public setLastPackageUsageTimeInMills(IJ)Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .locals 1
    .param p1, "reason"    # I
    .param p2, "time"    # J

    .line 66
    if-gez p1, :cond_0

    .line 67
    return-object p0

    .line 69
    :cond_0
    const/16 v0, 0x8

    if-lt p1, v0, :cond_1

    .line 70
    return-object p0

    .line 72
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLastPackageUsageTimeInMills()[J

    move-result-object v0

    aput-wide p2, v0, p1

    .line 73
    return-object p0
.end method

.method public varargs setLastPackageUsageTimeInMills([J)Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .locals 3
    .param p1, "value"    # [J

    .line 197
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->lastPackageUsageTimeInMills:[J

    .line 198
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->lastPackageUsageTimeInMills:[J

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 200
    return-object p0
.end method

.method public setOverrideSeInfo(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 205
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->overrideSeInfo:Ljava/lang/String;

    .line 206
    return-object p0
.end method

.method public setUpdatedSystemApp(Z)Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .locals 0
    .param p1, "value"    # Z

    .line 191
    iput-boolean p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    .line 192
    return-object p0
.end method

.method public setUsesLibraryFiles(Ljava/util/List;)Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/pm/pkg/PackageStateUnserialized;"
        }
    .end annotation

    .line 183
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryFiles:Ljava/util/List;

    .line 184
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 186
    return-object p0
.end method

.method public setUsesLibraryInfos(Ljava/util/List;)Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;)",
            "Lcom/android/server/pm/pkg/PackageStateUnserialized;"
        }
    .end annotation

    .line 175
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    .line 176
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 178
    return-object p0
.end method

.method public updateFrom(Lcom/android/server/pm/pkg/PackageStateUnserialized;)V
    .locals 2
    .param p1, "other"    # Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 98
    iget-boolean v0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->hiddenUntilInstalled:Z

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->hiddenUntilInstalled:Z

    .line 100
    iget-object v0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    .line 104
    :cond_0
    iget-object v0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryFiles:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryFiles:Ljava/util/List;

    .line 108
    :cond_1
    iget-boolean v0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    .line 109
    iget-object v0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->lastPackageUsageTimeInMills:[J

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->lastPackageUsageTimeInMills:[J

    .line 110
    iget-object v0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->overrideSeInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->overrideSeInfo:Ljava/lang/String;

    .line 111
    return-void
.end method
