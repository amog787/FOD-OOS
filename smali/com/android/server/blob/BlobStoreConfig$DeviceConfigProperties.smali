.class public Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;
.super Ljava/lang/Object;
.source "BlobStoreConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/blob/BlobStoreConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceConfigProperties"
.end annotation


# static fields
.field public static COMMIT_COOL_OFF_DURATION_MS:J = 0x0L

.field public static final DEFAULT_COMMIT_COOL_OFF_DURATION_MS:J

.field public static final DEFAULT_DELETE_ON_LAST_LEASE_DELAY_MS:J

.field public static final DEFAULT_IDLE_JOB_PERIOD_MS:J

.field public static final DEFAULT_LEASE_ACQUISITION_WAIT_DURATION_MS:J

.field public static DEFAULT_LEASE_DESC_CHAR_LIMIT:I = 0x0

.field public static DEFAULT_MAX_ACTIVE_SESSIONS:I = 0x0

.field public static DEFAULT_MAX_BLOB_ACCESS_PERMITTED_PACKAGES:I = 0x0

.field public static DEFAULT_MAX_COMMITTED_BLOBS:I = 0x0

.field public static DEFAULT_MAX_LEASED_BLOBS:I = 0x0

.field public static final DEFAULT_SESSION_EXPIRY_TIMEOUT_MS:J

.field public static final DEFAULT_TOTAL_BYTES_PER_APP_LIMIT_FLOOR:J

.field public static final DEFAULT_TOTAL_BYTES_PER_APP_LIMIT_FRACTION:F = 0.01f

.field public static final DEFAULT_USE_REVOCABLE_FD_FOR_READS:Z = true

.field public static DELETE_ON_LAST_LEASE_DELAY_MS:J = 0x0L

.field public static IDLE_JOB_PERIOD_MS:J = 0x0L

.field public static final KEY_COMMIT_COOL_OFF_DURATION_MS:Ljava/lang/String; = "commit_cool_off_duration_ms"

.field public static final KEY_DELETE_ON_LAST_LEASE_DELAY_MS:Ljava/lang/String; = "delete_on_last_lease_delay_ms"

.field public static final KEY_IDLE_JOB_PERIOD_MS:Ljava/lang/String; = "idle_job_period_ms"

.field public static final KEY_LEASE_ACQUISITION_WAIT_DURATION_MS:Ljava/lang/String; = "lease_acquisition_wait_time_ms"

.field public static final KEY_LEASE_DESC_CHAR_LIMIT:Ljava/lang/String; = "lease_desc_char_limit"

.field public static final KEY_MAX_ACTIVE_SESSIONS:Ljava/lang/String; = "max_active_sessions"

.field public static final KEY_MAX_BLOB_ACCESS_PERMITTED_PACKAGES:Ljava/lang/String; = "max_permitted_pks"

.field public static final KEY_MAX_COMMITTED_BLOBS:Ljava/lang/String; = "max_committed_blobs"

.field public static final KEY_MAX_LEASED_BLOBS:Ljava/lang/String; = "max_leased_blobs"

.field public static final KEY_SESSION_EXPIRY_TIMEOUT_MS:Ljava/lang/String; = "session_expiry_timeout_ms"

.field public static final KEY_TOTAL_BYTES_PER_APP_LIMIT_FLOOR:Ljava/lang/String; = "total_bytes_per_app_limit_floor"

.field public static final KEY_TOTAL_BYTES_PER_APP_LIMIT_FRACTION:Ljava/lang/String; = "total_bytes_per_app_limit_fraction"

.field public static final KEY_USE_REVOCABLE_FD_FOR_READS:Ljava/lang/String; = "use_revocable_fd_for_reads"

.field public static LEASE_ACQUISITION_WAIT_DURATION_MS:J

.field public static LEASE_DESC_CHAR_LIMIT:I

.field public static MAX_ACTIVE_SESSIONS:I

.field public static MAX_BLOB_ACCESS_PERMITTED_PACKAGES:I

.field public static MAX_COMMITTED_BLOBS:I

.field public static MAX_LEASED_BLOBS:I

.field public static SESSION_EXPIRY_TIMEOUT_MS:J

.field public static TOTAL_BYTES_PER_APP_LIMIT_FLOOR:J

.field public static TOTAL_BYTES_PER_APP_LIMIT_FRACTION:F

.field public static USE_REVOCABLE_FD_FOR_READS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 71
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_IDLE_JOB_PERIOD_MS:J

    .line 72
    sput-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->IDLE_JOB_PERIOD_MS:J

    .line 79
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_SESSION_EXPIRY_TIMEOUT_MS:J

    .line 80
    sput-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->SESSION_EXPIRY_TIMEOUT_MS:J

    .line 88
    sget-object v0, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    .line 89
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_TOTAL_BYTES_PER_APP_LIMIT_FLOOR:J

    .line 90
    sput-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->TOTAL_BYTES_PER_APP_LIMIT_FLOOR:J

    .line 100
    const v0, 0x3c23d70a    # 0.01f

    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->TOTAL_BYTES_PER_APP_LIMIT_FRACTION:F

    .line 109
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 110
    const-wide/16 v1, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_LEASE_ACQUISITION_WAIT_DURATION_MS:J

    .line 111
    sput-wide v3, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->LEASE_ACQUISITION_WAIT_DURATION_MS:J

    .line 121
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 122
    const-wide/16 v3, 0x30

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_COMMIT_COOL_OFF_DURATION_MS:J

    .line 123
    sput-wide v3, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->COMMIT_COOL_OFF_DURATION_MS:J

    .line 132
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->USE_REVOCABLE_FD_FOR_READS:Z

    .line 140
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 141
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_DELETE_ON_LAST_LEASE_DELAY_MS:J

    .line 142
    sput-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DELETE_ON_LAST_LEASE_DELAY_MS:J

    .line 149
    const/16 v0, 0xfa

    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_ACTIVE_SESSIONS:I

    .line 150
    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_ACTIVE_SESSIONS:I

    .line 156
    const/16 v0, 0x3e8

    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_COMMITTED_BLOBS:I

    .line 157
    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_COMMITTED_BLOBS:I

    .line 163
    const/16 v0, 0x1f4

    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_LEASED_BLOBS:I

    .line 164
    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_LEASED_BLOBS:I

    .line 171
    const/16 v0, 0x12c

    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_BLOB_ACCESS_PERMITTED_PACKAGES:I

    .line 172
    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_BLOB_ACCESS_PERMITTED_PACKAGES:I

    .line 179
    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_LEASE_DESC_CHAR_LIMIT:I

    .line 180
    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->LEASE_DESC_CHAR_LIMIT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static dump(Lcom/android/internal/util/IndentingPrintWriter;Landroid/content/Context;)V
    .locals 10
    .param p0, "fout"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p1, "context"    # Landroid/content/Context;

    .line 243
    const-string v0, "%s: [cur: %s, def: %s]"

    .line 244
    .local v0, "dumpFormat":Ljava/lang/String;
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "idle_job_period_ms"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-wide v5, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->IDLE_JOB_PERIOD_MS:J

    .line 245
    invoke-static {v5, v6}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-wide v6, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_IDLE_JOB_PERIOD_MS:J

    .line 246
    invoke-static {v6, v7}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 244
    const-string v3, "%s: [cur: %s, def: %s]"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 247
    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v7, "session_expiry_timeout_ms"

    aput-object v7, v2, v4

    sget-wide v7, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->SESSION_EXPIRY_TIMEOUT_MS:J

    .line 248
    invoke-static {v7, v8}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v5

    sget-wide v7, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_SESSION_EXPIRY_TIMEOUT_MS:J

    .line 249
    invoke-static {v7, v8}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    .line 247
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 250
    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v7, "total_bytes_per_app_limit_floor"

    aput-object v7, v2, v4

    sget-wide v7, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->TOTAL_BYTES_PER_APP_LIMIT_FLOOR:J

    .line 251
    const/16 v9, 0x8

    invoke-static {p1, v7, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v5

    sget-wide v7, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_TOTAL_BYTES_PER_APP_LIMIT_FLOOR:J

    .line 252
    invoke-static {p1, v7, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    .line 250
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 254
    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v7, "total_bytes_per_app_limit_fraction"

    aput-object v7, v2, v4

    sget v7, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->TOTAL_BYTES_PER_APP_LIMIT_FRACTION:F

    .line 255
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v2, v5

    .line 256
    const v7, 0x3c23d70a    # 0.01f

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v2, v6

    .line 254
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 257
    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v7, "lease_acquisition_wait_time_ms"

    aput-object v7, v2, v4

    sget-wide v7, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->LEASE_ACQUISITION_WAIT_DURATION_MS:J

    .line 258
    invoke-static {v7, v8}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v5

    sget-wide v7, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_LEASE_ACQUISITION_WAIT_DURATION_MS:J

    .line 259
    invoke-static {v7, v8}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    .line 257
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 260
    new-array v2, v1, [Ljava/lang/Object;

    const-string v7, "commit_cool_off_duration_ms"

    aput-object v7, v2, v4

    sget-wide v7, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->COMMIT_COOL_OFF_DURATION_MS:J

    .line 261
    invoke-static {v7, v8}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v5

    sget-wide v7, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_COMMIT_COOL_OFF_DURATION_MS:J

    .line 262
    invoke-static {v7, v8}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    .line 260
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 263
    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v7, "use_revocable_fd_for_reads"

    aput-object v7, v2, v4

    sget-boolean v7, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->USE_REVOCABLE_FD_FOR_READS:Z

    .line 264
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v2, v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v2, v6

    .line 263
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 265
    new-array v2, v1, [Ljava/lang/Object;

    const-string v7, "delete_on_last_lease_delay_ms"

    aput-object v7, v2, v4

    sget-wide v7, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DELETE_ON_LAST_LEASE_DELAY_MS:J

    .line 266
    invoke-static {v7, v8}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v5

    sget-wide v7, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_DELETE_ON_LAST_LEASE_DELAY_MS:J

    .line 267
    invoke-static {v7, v8}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    .line 265
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 268
    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v7, "max_active_sessions"

    aput-object v7, v2, v4

    sget v7, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_ACTIVE_SESSIONS:I

    .line 269
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v5

    sget v7, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_ACTIVE_SESSIONS:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v6

    .line 268
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 270
    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v7, "max_committed_blobs"

    aput-object v7, v2, v4

    sget v7, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_COMMITTED_BLOBS:I

    .line 271
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v5

    sget v7, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_COMMITTED_BLOBS:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v6

    .line 270
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 272
    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v7, "max_leased_blobs"

    aput-object v7, v2, v4

    sget v7, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_LEASED_BLOBS:I

    .line 273
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v5

    sget v7, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_LEASED_BLOBS:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v6

    .line 272
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 274
    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v7, "max_permitted_pks"

    aput-object v7, v2, v4

    sget v7, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_BLOB_ACCESS_PERMITTED_PACKAGES:I

    .line 275
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v5

    sget v7, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_BLOB_ACCESS_PERMITTED_PACKAGES:I

    .line 276
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v6

    .line 274
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 277
    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "lease_desc_char_limit"

    aput-object v2, v1, v4

    sget v2, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->LEASE_DESC_CHAR_LIMIT:I

    .line 278
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    sget v2, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_LEASE_DESC_CHAR_LIMIT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    .line 277
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method static synthetic lambda$refresh$0(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V
    .locals 2
    .param p0, "properties"    # Landroid/provider/DeviceConfig$Properties;
    .param p1, "key"    # Ljava/lang/String;

    .line 187
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v0, "session_expiry_timeout_ms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "idle_job_period_ms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "delete_on_last_lease_delay_ms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_3
    const-string/jumbo v0, "total_bytes_per_app_limit_fraction"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v0, "max_committed_blobs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_5
    const-string/jumbo v0, "lease_desc_char_limit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_6
    const-string/jumbo v0, "total_bytes_per_app_limit_floor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_7
    const-string v0, "commit_cool_off_duration_ms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_8
    const-string/jumbo v0, "max_permitted_pks"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_9
    const-string/jumbo v0, "max_leased_blobs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_a
    const-string/jumbo v0, "lease_acquisition_wait_time_ms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_b
    const-string/jumbo v0, "use_revocable_fd_for_reads"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_c
    const-string/jumbo v0, "max_active_sessions"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown key in device config properties: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BlobStore"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 233
    :pswitch_0
    sget v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_LEASE_DESC_CHAR_LIMIT:I

    invoke-virtual {p0, p1, v0}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->LEASE_DESC_CHAR_LIMIT:I

    .line 235
    goto/16 :goto_2

    .line 229
    :pswitch_1
    sget v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_BLOB_ACCESS_PERMITTED_PACKAGES:I

    invoke-virtual {p0, p1, v0}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_BLOB_ACCESS_PERMITTED_PACKAGES:I

    .line 231
    goto :goto_2

    .line 226
    :pswitch_2
    sget v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_LEASED_BLOBS:I

    invoke-virtual {p0, p1, v0}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_LEASED_BLOBS:I

    .line 227
    goto :goto_2

    .line 223
    :pswitch_3
    sget v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_COMMITTED_BLOBS:I

    invoke-virtual {p0, p1, v0}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_COMMITTED_BLOBS:I

    .line 224
    goto :goto_2

    .line 220
    :pswitch_4
    sget v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_ACTIVE_SESSIONS:I

    invoke-virtual {p0, p1, v0}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_ACTIVE_SESSIONS:I

    .line 221
    goto :goto_2

    .line 216
    :pswitch_5
    sget-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_DELETE_ON_LAST_LEASE_DELAY_MS:J

    invoke-virtual {p0, p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DELETE_ON_LAST_LEASE_DELAY_MS:J

    .line 218
    goto :goto_2

    .line 212
    :pswitch_6
    invoke-virtual {p0, p1, v1}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->USE_REVOCABLE_FD_FOR_READS:Z

    .line 214
    goto :goto_2

    .line 208
    :pswitch_7
    sget-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_COMMIT_COOL_OFF_DURATION_MS:J

    invoke-virtual {p0, p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->COMMIT_COOL_OFF_DURATION_MS:J

    .line 210
    goto :goto_2

    .line 204
    :pswitch_8
    sget-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_LEASE_ACQUISITION_WAIT_DURATION_MS:J

    invoke-virtual {p0, p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->LEASE_ACQUISITION_WAIT_DURATION_MS:J

    .line 206
    goto :goto_2

    .line 200
    :pswitch_9
    const v0, 0x3c23d70a    # 0.01f

    invoke-virtual {p0, p1, v0}, Landroid/provider/DeviceConfig$Properties;->getFloat(Ljava/lang/String;F)F

    move-result v0

    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->TOTAL_BYTES_PER_APP_LIMIT_FRACTION:F

    .line 202
    goto :goto_2

    .line 196
    :pswitch_a
    sget-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_TOTAL_BYTES_PER_APP_LIMIT_FLOOR:J

    invoke-virtual {p0, p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->TOTAL_BYTES_PER_APP_LIMIT_FLOOR:J

    .line 198
    goto :goto_2

    .line 192
    :pswitch_b
    sget-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_SESSION_EXPIRY_TIMEOUT_MS:J

    invoke-virtual {p0, p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->SESSION_EXPIRY_TIMEOUT_MS:J

    .line 194
    goto :goto_2

    .line 189
    :pswitch_c
    sget-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_IDLE_JOB_PERIOD_MS:J

    invoke-virtual {p0, p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->IDLE_JOB_PERIOD_MS:J

    .line 190
    nop

    .line 239
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x72bf4325 -> :sswitch_c
        -0x52e8bbf4 -> :sswitch_b
        -0x186c76bb -> :sswitch_a
        -0x10f353c4 -> :sswitch_9
        0xba4f96 -> :sswitch_8
        0x1028a673 -> :sswitch_7
        0x39770739 -> :sswitch_6
        0x538ddc1b -> :sswitch_5
        0x54964518 -> :sswitch_4
        0x674c73b5 -> :sswitch_3
        0x6d98c9a4 -> :sswitch_2
        0x717335b7 -> :sswitch_1
        0x78947a67 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static refresh(Landroid/provider/DeviceConfig$Properties;)V
    .locals 2
    .param p0, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 183
    invoke-virtual {p0}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string v1, "blobstore"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    return-void

    .line 186
    :cond_0
    invoke-virtual {p0}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/server/blob/-$$Lambda$BlobStoreConfig$DeviceConfigProperties$7FeT9Nj22YRJdnAt_b-xbcQB1wI;

    invoke-direct {v1, p0}, Lcom/android/server/blob/-$$Lambda$BlobStoreConfig$DeviceConfigProperties$7FeT9Nj22YRJdnAt_b-xbcQB1wI;-><init>(Landroid/provider/DeviceConfig$Properties;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 240
    return-void
.end method
