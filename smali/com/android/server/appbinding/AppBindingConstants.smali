.class public Lcom/android/server/appbinding/AppBindingConstants;
.super Ljava/lang/Object;
.source "AppBindingConstants.java"


# static fields
.field private static final SERVICE_RECONNECT_BACKOFF_INCREASE_KEY:Ljava/lang/String; = "service_reconnect_backoff_increase"

.field private static final SERVICE_RECONNECT_BACKOFF_SEC_KEY:Ljava/lang/String; = "service_reconnect_backoff_sec"

.field private static final SERVICE_RECONNECT_MAX_BACKOFF_SEC_KEY:Ljava/lang/String; = "service_reconnect_max_backoff_sec"

.field private static final SERVICE_STABLE_CONNECTION_THRESHOLD_SEC_KEY:Ljava/lang/String; = "service_stable_connection_threshold_sec"

.field private static final SMS_APP_BIND_FLAGS_KEY:Ljava/lang/String; = "sms_app_bind_flags"

.field private static final SMS_SERVICE_ENABLED_KEY:Ljava/lang/String; = "sms_service_enabled"

.field private static final TAG:Ljava/lang/String; = "AppBindingService"


# instance fields
.field public final SERVICE_RECONNECT_BACKOFF_INCREASE:D

.field public final SERVICE_RECONNECT_BACKOFF_SEC:J

.field public final SERVICE_RECONNECT_MAX_BACKOFF_SEC:J

.field public final SERVICE_STABLE_CONNECTION_THRESHOLD_SEC:J

.field public final SMS_APP_BIND_FLAGS:I

.field public final SMS_SERVICE_ENABLED:Z

.field public final sourceSettings:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 13
    .param p1, "settings"    # Ljava/lang/String;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/android/server/appbinding/AppBindingConstants;->sourceSettings:Ljava/lang/String;

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

    const-string v3, "Bad setting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppBindingService"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    const-wide/16 v1, 0xa

    const-string/jumbo v3, "service_reconnect_backoff_sec"

    invoke-virtual {v0, v3, v1, v2}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 97
    .local v1, "serviceReconnectBackoffSec":J
    const/high16 v3, 0x40000000    # 2.0f

    const-string/jumbo v4, "service_reconnect_backoff_increase"

    invoke-virtual {v0, v4, v3}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v3

    float-to-double v3, v3

    .line 100
    .local v3, "serviceReconnectBackoffIncrease":D
    sget-object v5, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1

    .line 101
    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v5

    .line 100
    const-string/jumbo v7, "service_reconnect_max_backoff_sec"

    invoke-virtual {v0, v7, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 103
    .local v5, "serviceReconnectMaxBackoffSec":J
    const/4 v7, 0x1

    const-string/jumbo v8, "sms_service_enabled"

    invoke-virtual {v0, v8, v7}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 105
    .local v7, "smsServiceEnabled":Z
    const/high16 v8, 0x44000000    # 512.0f

    const-string/jumbo v9, "sms_app_bind_flags"

    invoke-virtual {v0, v9, v8}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 109
    .local v8, "smsAppBindFlags":I
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0x2

    .line 110
    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v9

    .line 109
    const-string/jumbo v11, "service_stable_connection_threshold_sec"

    invoke-virtual {v0, v11, v9, v10}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 113
    .local v9, "serviceStableConnectionThresholdSec":J
    const-wide/16 v11, 0x5

    invoke-static {v11, v12, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 116
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .line 117
    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    .line 120
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 123
    iput-wide v1, p0, Lcom/android/server/appbinding/AppBindingConstants;->SERVICE_RECONNECT_BACKOFF_SEC:J

    .line 124
    iput-wide v3, p0, Lcom/android/server/appbinding/AppBindingConstants;->SERVICE_RECONNECT_BACKOFF_INCREASE:D

    .line 125
    iput-wide v5, p0, Lcom/android/server/appbinding/AppBindingConstants;->SERVICE_RECONNECT_MAX_BACKOFF_SEC:J

    .line 126
    iput-wide v9, p0, Lcom/android/server/appbinding/AppBindingConstants;->SERVICE_STABLE_CONNECTION_THRESHOLD_SEC:J

    .line 127
    iput-boolean v7, p0, Lcom/android/server/appbinding/AppBindingConstants;->SMS_SERVICE_ENABLED:Z

    .line 128
    iput v8, p0, Lcom/android/server/appbinding/AppBindingConstants;->SMS_APP_BIND_FLAGS:I

    .line 129
    return-void
.end method

.method public static initializeFromString(Ljava/lang/String;)Lcom/android/server/appbinding/AppBindingConstants;
    .locals 1
    .param p0, "settings"    # Ljava/lang/String;

    .line 135
    new-instance v0, Lcom/android/server/appbinding/AppBindingConstants;

    invoke-direct {v0, p0}, Lcom/android/server/appbinding/AppBindingConstants;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 142
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 143
    const-string v0, "Constants: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingConstants;->sourceSettings:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 147
    const-string v0, "  SERVICE_RECONNECT_BACKOFF_SEC: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 148
    iget-wide v0, p0, Lcom/android/server/appbinding/AppBindingConstants;->SERVICE_RECONNECT_BACKOFF_SEC:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 150
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 151
    const-string v0, "  SERVICE_RECONNECT_BACKOFF_INCREASE: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 152
    iget-wide v0, p0, Lcom/android/server/appbinding/AppBindingConstants;->SERVICE_RECONNECT_BACKOFF_INCREASE:D

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(D)V

    .line 154
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 155
    const-string v0, "  SERVICE_RECONNECT_MAX_BACKOFF_SEC: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 156
    iget-wide v0, p0, Lcom/android/server/appbinding/AppBindingConstants;->SERVICE_RECONNECT_MAX_BACKOFF_SEC:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 158
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 159
    const-string v0, "  SERVICE_STABLE_CONNECTION_THRESHOLD_SEC: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 160
    iget-wide v0, p0, Lcom/android/server/appbinding/AppBindingConstants;->SERVICE_STABLE_CONNECTION_THRESHOLD_SEC:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 162
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 163
    const-string v0, "  SMS_SERVICE_ENABLED: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 164
    iget-boolean v0, p0, Lcom/android/server/appbinding/AppBindingConstants;->SMS_SERVICE_ENABLED:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 166
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 167
    const-string v0, "  SMS_APP_BIND_FLAGS: 0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 168
    iget v0, p0, Lcom/android/server/appbinding/AppBindingConstants;->SMS_APP_BIND_FLAGS:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 169
    return-void
.end method
