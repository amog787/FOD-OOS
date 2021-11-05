.class public Lcom/android/server/display/AmbientBrightnessStatsTracker;
.super Ljava/lang/Object;
.source "AmbientBrightnessStatsTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;,
        Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;,
        Lcom/android/server/display/AmbientBrightnessStatsTracker$Clock;,
        Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;
    }
.end annotation


# static fields
.field static final BUCKET_BOUNDARIES_FOR_NEW_STATS:[F

.field private static final DEBUG:Z = false

.field static final MAX_DAYS_TO_TRACK:I = 0x7

.field private static final TAG:Ljava/lang/String; = "AmbientBrightnessStatsTracker"


# instance fields
.field private final mAmbientBrightnessStats:Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;

.field private mCurrentAmbientBrightness:F

.field private mCurrentUserId:I

.field private final mInjector:Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

.field private final mTimer:Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->BUCKET_BOUNDARIES_FOR_NEW_STATS:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x3dcccccd    # 0.1f
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x41200000    # 10.0f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
        0x43960000    # 300.0f
        0x447a0000    # 1000.0f
        0x453b8000    # 3000.0f
        0x461c4000    # 10000.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/os/UserManager;Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;)V
    .locals 2
    .param p1, "userManager"    # Landroid/os/UserManager;
    .param p2, "injector"    # Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mUserManager:Landroid/os/UserManager;

    .line 70
    if-eqz p2, :cond_0

    .line 71
    iput-object p2, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    goto :goto_0

    .line 73
    :cond_0
    new-instance v0, Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    invoke-direct {v0}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    .line 75
    :goto_0
    new-instance v0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;

    invoke-direct {v0, p0}, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;-><init>(Lcom/android/server/display/AmbientBrightnessStatsTracker;)V

    iput-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mAmbientBrightnessStats:Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;

    .line 76
    new-instance v0, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;

    new-instance v1, Lcom/android/server/display/-$$Lambda$AmbientBrightnessStatsTracker$vQZYn_dAhbvzT-Un4vvpuyIATII;

    invoke-direct {v1, p0}, Lcom/android/server/display/-$$Lambda$AmbientBrightnessStatsTracker$vQZYn_dAhbvzT-Un4vvpuyIATII;-><init>(Lcom/android/server/display/AmbientBrightnessStatsTracker;)V

    invoke-direct {v0, v1}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;-><init>(Lcom/android/server/display/AmbientBrightnessStatsTracker$Clock;)V

    iput-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;

    .line 77
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mCurrentAmbientBrightness:F

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/AmbientBrightnessStatsTracker;)Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AmbientBrightnessStatsTracker;

    .line 50
    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/AmbientBrightnessStatsTracker;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AmbientBrightnessStatsTracker;

    .line 50
    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized add(IF)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "newAmbientBrightness"    # F

    monitor-enter p0

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;

    invoke-virtual {v0}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iget v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mCurrentUserId:I

    if-ne p1, v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mAmbientBrightnessStats:Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;

    iget v1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mCurrentUserId:I

    iget-object v2, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    invoke-virtual {v2}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;->getLocalDate()Ljava/time/LocalDate;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mCurrentAmbientBrightness:F

    iget-object v4, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;

    .line 98
    invoke-virtual {v4}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->totalDurationSec()F

    move-result v4

    .line 97
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->log(ILjava/time/LocalDate;FF)V

    goto :goto_0

    .line 103
    .end local p0    # "this":Lcom/android/server/display/AmbientBrightnessStatsTracker;
    :cond_0
    iput p1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mCurrentUserId:I

    .line 105
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;

    invoke-virtual {v0}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->reset()V

    .line 106
    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;

    invoke-virtual {v0}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->start()V

    .line 107
    iput p2, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mCurrentAmbientBrightness:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :cond_1
    monitor-exit p0

    return-void

    .line 94
    .end local p1    # "userId":I
    .end local p2    # "newAmbientBrightness":F
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    monitor-enter p0

    .line 128
    :try_start_0
    const-string v0, "AmbientBrightnessStats:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mAmbientBrightnessStats:Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    .line 127
    .end local p0    # "this":Lcom/android/server/display/AmbientBrightnessStatsTracker;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getUserStats(I)Ljava/util/ArrayList;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mAmbientBrightnessStats:Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;

    invoke-virtual {v0, p1}, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->getUserStats(I)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 124
    .end local p0    # "this":Lcom/android/server/display/AmbientBrightnessStatsTracker;
    .end local p1    # "userId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public synthetic lambda$new$0$AmbientBrightnessStatsTracker()J
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;->elapsedRealtimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized readStats(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mAmbientBrightnessStats:Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;

    invoke-virtual {v0, p1}, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->readFromXML(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    .line 119
    .end local p0    # "this":Lcom/android/server/display/AmbientBrightnessStatsTracker;
    .end local p1    # "stream":Ljava/io/InputStream;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized start()V
    .locals 1

    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;

    invoke-virtual {v0}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->reset()V

    .line 82
    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;

    invoke-virtual {v0}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    .line 80
    .end local p0    # "this":Lcom/android/server/display/AmbientBrightnessStatsTracker;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 5

    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;

    invoke-virtual {v0}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mAmbientBrightnessStats:Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;

    iget v1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mCurrentUserId:I

    iget-object v2, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    invoke-virtual {v2}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;->getLocalDate()Ljava/time/LocalDate;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mCurrentAmbientBrightness:F

    iget-object v4, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;

    .line 88
    invoke-virtual {v4}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->totalDurationSec()F

    move-result v4

    .line 87
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->log(ILjava/time/LocalDate;FF)V

    .line 90
    .end local p0    # "this":Lcom/android/server/display/AmbientBrightnessStatsTracker;
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;

    invoke-virtual {v0}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->reset()V

    .line 91
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mCurrentAmbientBrightness:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized writeStats(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mAmbientBrightnessStats:Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;

    invoke-virtual {v0, p1}, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->writeToXML(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    .line 115
    .end local p0    # "this":Lcom/android/server/display/AmbientBrightnessStatsTracker;
    .end local p1    # "stream":Ljava/io/OutputStream;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
