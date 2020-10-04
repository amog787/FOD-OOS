.class public Lcom/android/server/devicepolicy/DevicePolicyConstants;
.super Ljava/lang/Object;
.source "DevicePolicyConstants.java"


# static fields
.field private static final BATTERY_THRESHOLD_CHARGING_KEY:Ljava/lang/String; = "battery_threshold_charging"

.field private static final BATTERY_THRESHOLD_NOT_CHARGING_KEY:Ljava/lang/String; = "battery_threshold_not_charging"

.field private static final DAS_DIED_SERVICE_RECONNECT_BACKOFF_INCREASE_KEY:Ljava/lang/String; = "das_died_service_reconnect_backoff_increase"

.field private static final DAS_DIED_SERVICE_RECONNECT_BACKOFF_SEC_KEY:Ljava/lang/String; = "das_died_service_reconnect_backoff_sec"

.field private static final DAS_DIED_SERVICE_RECONNECT_MAX_BACKOFF_SEC_KEY:Ljava/lang/String; = "das_died_service_reconnect_max_backoff_sec"

.field private static final DAS_DIED_SERVICE_STABLE_CONNECTION_THRESHOLD_SEC_KEY:Ljava/lang/String; = "das_died_service_stable_connection_threshold_sec"

.field private static final TAG:Ljava/lang/String; = "DevicePolicyManager"


# instance fields
.field public final BATTERY_THRESHOLD_CHARGING:I

.field public final BATTERY_THRESHOLD_NOT_CHARGING:I

.field public final DAS_DIED_SERVICE_RECONNECT_BACKOFF_INCREASE:D

.field public final DAS_DIED_SERVICE_RECONNECT_BACKOFF_SEC:J

.field public final DAS_DIED_SERVICE_RECONNECT_MAX_BACKOFF_SEC:J

.field public final DAS_DIED_SERVICE_STABLE_CONNECTION_THRESHOLD_SEC:J


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 13
    .param p1, "settings"    # Ljava/lang/String;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 87
    .local v0, "parser":Landroid/util/KeyValueListParser;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    goto :goto_0

    .line 88
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad device policy settings: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DevicePolicyManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 95
    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    .line 94
    const-string v1, "das_died_service_reconnect_backoff_sec"

    invoke-virtual {v0, v1, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 97
    .local v4, "dasDiedServiceReconnectBackoffSec":J
    const/high16 v1, 0x40000000    # 2.0f

    const-string v6, "das_died_service_reconnect_backoff_increase"

    invoke-virtual {v0, v6, v1}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v1

    float-to-double v6, v1

    .line 100
    .local v6, "dasDiedServiceReconnectBackoffIncrease":D
    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 101
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v1

    .line 100
    const-string v3, "das_died_service_reconnect_max_backoff_sec"

    invoke-virtual {v0, v3, v1, v2}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 103
    .local v1, "dasDiedServiceReconnectMaxBackoffSec":J
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x2

    .line 105
    invoke-virtual {v3, v8, v9}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v8

    .line 103
    const-string v3, "das_died_service_stable_connection_threshold_sec"

    invoke-virtual {v0, v3, v8, v9}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 107
    .local v8, "dasDiedServiceStableConnectionThresholdSec":J
    const/16 v3, 0x28

    const-string v10, "battery_threshold_not_charging"

    invoke-virtual {v0, v10, v3}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 110
    .local v3, "batteryThresholdNotCharging":I
    const/16 v10, 0x14

    const-string v11, "battery_threshold_charging"

    invoke-virtual {v0, v11, v10}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 114
    .local v10, "batteryThresholdCharging":I
    const-wide/16 v11, 0x5

    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 117
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .line 118
    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 121
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 124
    iput-wide v4, p0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_RECONNECT_BACKOFF_SEC:J

    .line 125
    iput-wide v6, p0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_RECONNECT_BACKOFF_INCREASE:D

    .line 126
    iput-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_RECONNECT_MAX_BACKOFF_SEC:J

    .line 127
    iput-wide v8, p0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_STABLE_CONNECTION_THRESHOLD_SEC:J

    .line 129
    iput v3, p0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->BATTERY_THRESHOLD_NOT_CHARGING:I

    .line 130
    iput v10, p0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->BATTERY_THRESHOLD_CHARGING:I

    .line 131
    return-void
.end method

.method public static loadFromString(Ljava/lang/String;)Lcom/android/server/devicepolicy/DevicePolicyConstants;
    .locals 1
    .param p0, "settings"    # Ljava/lang/String;

    .line 134
    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyConstants;

    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/DevicePolicyConstants;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 138
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 139
    const-string v0, "Constants:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 142
    const-string v0, "  DAS_DIED_SERVICE_RECONNECT_BACKOFF_SEC: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 143
    iget-wide v0, p0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_RECONNECT_BACKOFF_SEC:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 145
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 146
    const-string v0, "  DAS_DIED_SERVICE_RECONNECT_BACKOFF_INCREASE: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 147
    iget-wide v0, p0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_RECONNECT_BACKOFF_INCREASE:D

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(D)V

    .line 149
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 150
    const-string v0, "  DAS_DIED_SERVICE_RECONNECT_MAX_BACKOFF_SEC: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 151
    iget-wide v0, p0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_RECONNECT_MAX_BACKOFF_SEC:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 153
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 154
    const-string v0, "  DAS_DIED_SERVICE_STABLE_CONNECTION_THRESHOLD_SEC: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 155
    iget-wide v0, p0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_STABLE_CONNECTION_THRESHOLD_SEC:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 156
    return-void
.end method
