.class public Lcom/android/server/am/BroadcastConstants;
.super Ljava/lang/Object;
.source "BroadcastConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BroadcastConstants$SettingsObserver;
    }
.end annotation


# static fields
.field private static final DEFAULT_ALLOW_BG_ACTIVITY_START_TIMEOUT:J = 0x2710L

.field private static final DEFAULT_DEFERRAL:J = 0x1388L

.field private static final DEFAULT_DEFERRAL_DECAY_FACTOR:F = 0.75f

.field private static final DEFAULT_DEFERRAL_FLOOR:J = 0x0L

.field private static final DEFAULT_SLOW_TIME:J = 0x1388L

.field private static final DEFAULT_TIMEOUT:J = 0x2710L

.field static final KEY_ALLOW_BG_ACTIVITY_START_TIMEOUT:Ljava/lang/String; = "bcast_allow_bg_activity_start_timeout"

.field static final KEY_DEFERRAL:Ljava/lang/String; = "bcast_deferral"

.field static final KEY_DEFERRAL_DECAY_FACTOR:Ljava/lang/String; = "bcast_deferral_decay_factor"

.field static final KEY_DEFERRAL_FLOOR:Ljava/lang/String; = "bcast_deferral_floor"

.field static final KEY_SLOW_TIME:Ljava/lang/String; = "bcast_slow_time"

.field static final KEY_TIMEOUT:Ljava/lang/String; = "bcast_timeout"

.field private static final TAG:Ljava/lang/String; = "BroadcastConstants"


# instance fields
.field public ALLOW_BG_ACTIVITY_START_TIMEOUT:J

.field public DEFERRAL:J

.field public DEFERRAL_DECAY_FACTOR:F

.field public DEFERRAL_FLOOR:J

.field public SLOW_TIME:J

.field public TIMEOUT:J

.field private final mParser:Landroid/util/KeyValueListParser;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSettingsKey:Ljava/lang/String;

.field private mSettingsObserver:Lcom/android/server/am/BroadcastConstants$SettingsObserver;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "settingsKey"    # Ljava/lang/String;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    .line 58
    const-wide/16 v2, 0x1388

    iput-wide v2, p0, Lcom/android/server/am/BroadcastConstants;->SLOW_TIME:J

    .line 60
    iput-wide v2, p0, Lcom/android/server/am/BroadcastConstants;->DEFERRAL:J

    .line 62
    const/high16 v2, 0x3f400000    # 0.75f

    iput v2, p0, Lcom/android/server/am/BroadcastConstants;->DEFERRAL_DECAY_FACTOR:F

    .line 64
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/am/BroadcastConstants;->DEFERRAL_FLOOR:J

    .line 66
    iput-wide v0, p0, Lcom/android/server/am/BroadcastConstants;->ALLOW_BG_ACTIVITY_START_TIMEOUT:J

    .line 72
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 88
    iput-object p1, p0, Lcom/android/server/am/BroadcastConstants;->mSettingsKey:Ljava/lang/String;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/BroadcastConstants;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/BroadcastConstants;

    .line 32
    invoke-direct {p0}, Lcom/android/server/am/BroadcastConstants;->updateConstants()V

    return-void
.end method

.method private updateConstants()V
    .locals 5

    .line 106
    iget-object v0, p0, Lcom/android/server/am/BroadcastConstants;->mParser:Landroid/util/KeyValueListParser;

    monitor-enter v0

    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastConstants;->mParser:Landroid/util/KeyValueListParser;

    iget-object v2, p0, Lcom/android/server/am/BroadcastConstants;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/server/am/BroadcastConstants;->mSettingsKey:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    nop

    .line 115
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/BroadcastConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "bcast_timeout"

    iget-wide v3, p0, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    .line 116
    iget-object v1, p0, Lcom/android/server/am/BroadcastConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "bcast_slow_time"

    iget-wide v3, p0, Lcom/android/server/am/BroadcastConstants;->SLOW_TIME:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->SLOW_TIME:J

    .line 117
    iget-object v1, p0, Lcom/android/server/am/BroadcastConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "bcast_deferral"

    iget-wide v3, p0, Lcom/android/server/am/BroadcastConstants;->DEFERRAL:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->DEFERRAL:J

    .line 118
    iget-object v1, p0, Lcom/android/server/am/BroadcastConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "bcast_deferral_decay_factor"

    iget v3, p0, Lcom/android/server/am/BroadcastConstants;->DEFERRAL_DECAY_FACTOR:F

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/android/server/am/BroadcastConstants;->DEFERRAL_DECAY_FACTOR:F

    .line 120
    iget-object v1, p0, Lcom/android/server/am/BroadcastConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "bcast_deferral_floor"

    iget-wide v3, p0, Lcom/android/server/am/BroadcastConstants;->DEFERRAL_FLOOR:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->DEFERRAL_FLOOR:J

    .line 121
    iget-object v1, p0, Lcom/android/server/am/BroadcastConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "bcast_allow_bg_activity_start_timeout"

    iget-wide v3, p0, Lcom/android/server/am/BroadcastConstants;->ALLOW_BG_ACTIVITY_START_TIMEOUT:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->ALLOW_BG_ACTIVITY_START_TIMEOUT:J

    .line 123
    monitor-exit v0

    .line 124
    return-void

    .line 123
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 109
    :catch_0
    move-exception v1

    .line 110
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "BroadcastConstants"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad broadcast settings in key \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/BroadcastConstants;->mSettingsKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    monitor-exit v0

    return-void

    .line 123
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 130
    iget-object v0, p0, Lcom/android/server/am/BroadcastConstants;->mParser:Landroid/util/KeyValueListParser;

    monitor-enter v0

    .line 131
    :try_start_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 132
    const-string v1, "  Broadcast parameters (key="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/android/server/am/BroadcastConstants;->mSettingsKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 134
    const-string v1, ", observing="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/android/server/am/BroadcastConstants;->mSettingsObserver:Lcom/android/server/am/BroadcastConstants$SettingsObserver;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 136
    const-string v1, "):"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    const-string v1, "    "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "bcast_timeout"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " = "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 139
    iget-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 140
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 142
    const-string v1, "    "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "bcast_slow_time"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " = "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 143
    iget-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->SLOW_TIME:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 144
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 146
    const-string v1, "    "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "bcast_deferral"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " = "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 147
    iget-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->DEFERRAL:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 148
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 150
    const-string v1, "    "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "bcast_deferral_decay_factor"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " = "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 151
    iget v1, p0, Lcom/android/server/am/BroadcastConstants;->DEFERRAL_DECAY_FACTOR:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(F)V

    .line 153
    const-string v1, "    "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "bcast_deferral_floor"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " = "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 154
    iget-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->DEFERRAL_FLOOR:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 156
    const-string v1, "    "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "bcast_allow_bg_activity_start_timeout"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " = "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 157
    iget-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->ALLOW_BG_ACTIVITY_START_TIMEOUT:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 158
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 159
    monitor-exit v0

    .line 160
    return-void

    .line 159
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startObserving(Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 4
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .line 96
    iput-object p2, p0, Lcom/android/server/am/BroadcastConstants;->mResolver:Landroid/content/ContentResolver;

    .line 98
    new-instance v0, Lcom/android/server/am/BroadcastConstants$SettingsObserver;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/BroadcastConstants$SettingsObserver;-><init>(Lcom/android/server/am/BroadcastConstants;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastConstants;->mSettingsObserver:Lcom/android/server/am/BroadcastConstants$SettingsObserver;

    .line 99
    iget-object v0, p0, Lcom/android/server/am/BroadcastConstants;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/am/BroadcastConstants;->mSettingsKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/BroadcastConstants;->mSettingsObserver:Lcom/android/server/am/BroadcastConstants$SettingsObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 102
    invoke-direct {p0}, Lcom/android/server/am/BroadcastConstants;->updateConstants()V

    .line 103
    return-void
.end method
