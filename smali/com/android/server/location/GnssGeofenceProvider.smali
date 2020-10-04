.class Lcom/android/server/location/GnssGeofenceProvider;
.super Landroid/location/IGpsGeofenceHardware$Stub;
.source "GnssGeofenceProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;,
        Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "GnssGeofenceProvider"


# instance fields
.field private final mGeofenceEntries:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mNative:Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    const-string v0, "GnssGeofenceProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GnssGeofenceProvider;->DEBUG:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;

    invoke-direct {v0}, Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssGeofenceProvider;-><init>(Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;)V

    .line 39
    return-void
.end method

.method constructor <init>(Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;)V
    .locals 1
    .param p1, "gnssGeofenceProviderNative"    # Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 42
    invoke-direct {p0}, Landroid/location/IGpsGeofenceHardware$Stub;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GnssGeofenceProvider;->mLock:Ljava/lang/Object;

    .line 34
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GnssGeofenceProvider;->mGeofenceEntries:Landroid/util/SparseArray;

    .line 43
    iput-object p1, p0, Lcom/android/server/location/GnssGeofenceProvider;->mNative:Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;

    .line 44
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 13
    invoke-static {}, Lcom/android/server/location/GnssGeofenceProvider;->native_is_geofence_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(IDDDIIII)Z
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # D
    .param p3, "x2"    # D
    .param p5, "x3"    # D
    .param p7, "x4"    # I
    .param p8, "x5"    # I
    .param p9, "x6"    # I
    .param p10, "x7"    # I

    .line 13
    invoke-static/range {p0 .. p10}, Lcom/android/server/location/GnssGeofenceProvider;->native_add_geofence(IDDDIIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(I)Z
    .locals 1
    .param p0, "x0"    # I

    .line 13
    invoke-static {p0}, Lcom/android/server/location/GnssGeofenceProvider;->native_remove_geofence(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(II)Z
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 13
    invoke-static {p0, p1}, Lcom/android/server/location/GnssGeofenceProvider;->native_resume_geofence(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(I)Z
    .locals 1
    .param p0, "x0"    # I

    .line 13
    invoke-static {p0}, Lcom/android/server/location/GnssGeofenceProvider;->native_pause_geofence(I)Z

    move-result v0

    return v0
.end method

.method private static native native_add_geofence(IDDDIIII)Z
.end method

.method private static native native_is_geofence_supported()Z
.end method

.method private static native native_pause_geofence(I)Z
.end method

.method private static native native_remove_geofence(I)Z
.end method

.method private static native native_resume_geofence(II)Z
.end method


# virtual methods
.method public addCircularHardwareGeofence(IDDDIIII)Z
    .locals 16
    .param p1, "geofenceId"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "radius"    # D
    .param p8, "lastTransition"    # I
    .param p9, "monitorTransitions"    # I
    .param p10, "notificationResponsiveness"    # I
    .param p11, "unknownTimer"    # I

    .line 76
    move-object/from16 v1, p0

    move/from16 v14, p1

    iget-object v15, v1, Lcom/android/server/location/GnssGeofenceProvider;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 77
    :try_start_0
    iget-object v2, v1, Lcom/android/server/location/GnssGeofenceProvider;->mNative:Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;

    move/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-virtual/range {v2 .. v13}, Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;->addGeofence(IDDDIIII)Z

    move-result v0

    .line 80
    .local v0, "added":Z
    if-eqz v0, :cond_0

    .line 81
    new-instance v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;-><init>(Lcom/android/server/location/GnssGeofenceProvider$1;)V

    .line 82
    .local v2, "entry":Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;
    iput v14, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->geofenceId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 83
    move-wide/from16 v3, p2

    :try_start_1
    iput-wide v3, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->latitude:D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 84
    move-wide/from16 v5, p4

    :try_start_2
    iput-wide v5, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->longitude:D
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 85
    move-wide/from16 v7, p6

    :try_start_3
    iput-wide v7, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->radius:D
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 86
    move/from16 v9, p8

    :try_start_4
    iput v9, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->lastTransition:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 87
    move/from16 v10, p9

    :try_start_5
    iput v10, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->monitorTransitions:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 88
    move/from16 v11, p10

    :try_start_6
    iput v11, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->notificationResponsiveness:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 89
    move/from16 v12, p11

    :try_start_7
    iput v12, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->unknownTimer:I

    .line 90
    iget-object v13, v1, Lcom/android/server/location/GnssGeofenceProvider;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v13, v14, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 93
    .end local v0    # "added":Z
    .end local v2    # "entry":Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;
    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_3

    :catchall_4
    move-exception v0

    goto :goto_2

    :catchall_5
    move-exception v0

    goto :goto_1

    .line 80
    .restart local v0    # "added":Z
    :cond_0
    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    .line 92
    :goto_0
    monitor-exit v15

    return v0

    .line 93
    .end local v0    # "added":Z
    :catchall_6
    move-exception v0

    move-wide/from16 v3, p2

    :goto_1
    move-wide/from16 v5, p4

    :goto_2
    move-wide/from16 v7, p6

    :goto_3
    move/from16 v9, p8

    :goto_4
    move/from16 v10, p9

    :goto_5
    move/from16 v11, p10

    :goto_6
    move/from16 v12, p11

    :goto_7
    monitor-exit v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw v0

    :catchall_7
    move-exception v0

    goto :goto_7
.end method

.method public isHardwareGeofenceSupported()Z
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/android/server/location/GnssGeofenceProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GnssGeofenceProvider;->mNative:Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;

    invoke-virtual {v1}, Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;->isGeofenceSupported()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 69
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pauseHardwareGeofence(I)Z
    .locals 4
    .param p1, "geofenceId"    # I

    .line 109
    iget-object v0, p0, Lcom/android/server/location/GnssGeofenceProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GnssGeofenceProvider;->mNative:Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;

    invoke-virtual {v1, p1}, Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;->pauseGeofence(I)Z

    move-result v1

    .line 111
    .local v1, "paused":Z
    if-eqz v1, :cond_0

    .line 112
    iget-object v2, p0, Lcom/android/server/location/GnssGeofenceProvider;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;

    .line 113
    .local v2, "entry":Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;
    if-eqz v2, :cond_0

    .line 114
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->paused:Z

    .line 117
    .end local v2    # "entry":Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;
    :cond_0
    monitor-exit v0

    return v1

    .line 118
    .end local v1    # "paused":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeHardwareGeofence(I)Z
    .locals 3
    .param p1, "geofenceId"    # I

    .line 98
    iget-object v0, p0, Lcom/android/server/location/GnssGeofenceProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GnssGeofenceProvider;->mNative:Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;

    invoke-virtual {v1, p1}, Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;->removeGeofence(I)Z

    move-result v1

    .line 100
    .local v1, "removed":Z
    if-eqz v1, :cond_0

    .line 101
    iget-object v2, p0, Lcom/android/server/location/GnssGeofenceProvider;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 103
    :cond_0
    monitor-exit v0

    return v1

    .line 104
    .end local v1    # "removed":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resumeHardwareGeofence(II)Z
    .locals 4
    .param p1, "geofenceId"    # I
    .param p2, "monitorTransitions"    # I

    .line 123
    iget-object v0, p0, Lcom/android/server/location/GnssGeofenceProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GnssGeofenceProvider;->mNative:Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;->resumeGeofence(II)Z

    move-result v1

    .line 125
    .local v1, "resumed":Z
    if-eqz v1, :cond_0

    .line 126
    iget-object v2, p0, Lcom/android/server/location/GnssGeofenceProvider;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;

    .line 127
    .local v2, "entry":Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;
    if-eqz v2, :cond_0

    .line 128
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->paused:Z

    .line 129
    iput p2, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->monitorTransitions:I

    .line 132
    .end local v2    # "entry":Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;
    :cond_0
    monitor-exit v0

    return v1

    .line 133
    .end local v1    # "resumed":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method resumeIfStarted()V
    .locals 15

    .line 47
    sget-boolean v0, Lcom/android/server/location/GnssGeofenceProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 48
    const-string v0, "GnssGeofenceProvider"

    const-string/jumbo v1, "resumeIfStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GnssGeofenceProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 51
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/GnssGeofenceProvider;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 52
    iget-object v2, p0, Lcom/android/server/location/GnssGeofenceProvider;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;

    .line 53
    .local v2, "entry":Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;
    iget-object v3, p0, Lcom/android/server/location/GnssGeofenceProvider;->mNative:Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;

    iget v4, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->geofenceId:I

    iget-wide v5, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->latitude:D

    iget-wide v7, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->longitude:D

    iget-wide v9, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->radius:D

    iget v11, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->lastTransition:I

    iget v12, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->monitorTransitions:I

    iget v13, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->notificationResponsiveness:I

    iget v14, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->unknownTimer:I

    invoke-virtual/range {v3 .. v14}, Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;->addGeofence(IDDDIIII)Z

    move-result v3

    .line 58
    .local v3, "added":Z
    if-eqz v3, :cond_1

    iget-boolean v4, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->paused:Z

    if-eqz v4, :cond_1

    .line 59
    iget-object v4, p0, Lcom/android/server/location/GnssGeofenceProvider;->mNative:Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;

    iget v5, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->geofenceId:I

    invoke-virtual {v4, v5}, Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;->pauseGeofence(I)Z

    .line 51
    .end local v2    # "entry":Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;
    .end local v3    # "added":Z
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    .end local v1    # "i":I
    :cond_2
    monitor-exit v0

    .line 63
    return-void

    .line 62
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
