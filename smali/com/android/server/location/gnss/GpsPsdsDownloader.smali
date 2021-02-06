.class public Lcom/android/server/location/gnss/GpsPsdsDownloader;
.super Ljava/lang/Object;
.source "GpsPsdsDownloader.java"


# static fields
.field private static final CONNECTION_TIMEOUT_MS:I

.field private static final DEBUG:Z

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String; = "Android"

.field private static final MAXIMUM_CONTENT_LENGTH_BYTES:J = 0xf4240L

.field private static final READ_TIMEOUT_MS:I

.field private static final TAG:Ljava/lang/String; = "GpsPsdsDownloader"


# instance fields
.field private mNextServerIndex:I

.field private final mPsdsServers:[Ljava/lang/String;

.field private final mUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    const-string v0, "GpsPsdsDownloader"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/gnss/GpsPsdsDownloader;->DEBUG:Z

    .line 45
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/android/server/location/gnss/GpsPsdsDownloader;->CONNECTION_TIMEOUT_MS:I

    .line 46
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/android/server/location/gnss/GpsPsdsDownloader;->READ_TIMEOUT_MS:I

    return-void
.end method

.method constructor <init>(Ljava/util/Properties;)V
    .locals 7
    .param p1, "properties"    # Ljava/util/Properties;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "count":I
    const-string v1, "XTRA_SERVER_1"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "server1":Ljava/lang/String;
    const-string v2, "XTRA_SERVER_2"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "server2":Ljava/lang/String;
    const-string v3, "XTRA_SERVER_3"

    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "server3":Ljava/lang/String;
    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 60
    :cond_0
    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 61
    :cond_1
    if-eqz v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 64
    :cond_2
    const-string v4, "XTRA_USER_AGENT"

    invoke-virtual {p1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, "agent":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 66
    const-string v5, "Android"

    iput-object v5, p0, Lcom/android/server/location/gnss/GpsPsdsDownloader;->mUserAgent:Ljava/lang/String;

    goto :goto_0

    .line 68
    :cond_3
    iput-object v4, p0, Lcom/android/server/location/gnss/GpsPsdsDownloader;->mUserAgent:Ljava/lang/String;

    .line 71
    :goto_0
    if-nez v0, :cond_4

    .line 72
    const-string v5, "GpsPsdsDownloader"

    const-string v6, "No PSDS servers were specified in the GPS configuration"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/location/gnss/GpsPsdsDownloader;->mPsdsServers:[Ljava/lang/String;

    goto :goto_1

    .line 75
    :cond_4
    new-array v5, v0, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/location/gnss/GpsPsdsDownloader;->mPsdsServers:[Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    .line 77
    if-eqz v1, :cond_5

    add-int/lit8 v6, v0, 0x1

    .end local v0    # "count":I
    .local v6, "count":I
    aput-object v1, v5, v0

    move v0, v6

    .line 78
    .end local v6    # "count":I
    .restart local v0    # "count":I
    :cond_5
    if-eqz v2, :cond_6

    iget-object v5, p0, Lcom/android/server/location/gnss/GpsPsdsDownloader;->mPsdsServers:[Ljava/lang/String;

    add-int/lit8 v6, v0, 0x1

    .end local v0    # "count":I
    .restart local v6    # "count":I
    aput-object v2, v5, v0

    move v0, v6

    .line 79
    .end local v6    # "count":I
    .restart local v0    # "count":I
    :cond_6
    if-eqz v3, :cond_7

    iget-object v5, p0, Lcom/android/server/location/gnss/GpsPsdsDownloader;->mPsdsServers:[Ljava/lang/String;

    add-int/lit8 v6, v0, 0x1

    .end local v0    # "count":I
    .restart local v6    # "count":I
    aput-object v3, v5, v0

    move v0, v6

    .line 82
    .end local v6    # "count":I
    .restart local v0    # "count":I
    :cond_7
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    .line 83
    .local v5, "random":Ljava/util/Random;
    invoke-virtual {v5, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    iput v6, p0, Lcom/android/server/location/gnss/GpsPsdsDownloader;->mNextServerIndex:I

    .line 85
    .end local v5    # "random":Ljava/util/Random;
    :goto_1
    return-void
.end method


# virtual methods
.method protected doDownload(Ljava/lang/String;)[B
    .locals 13
    .param p1, "url"    # Ljava/lang/String;

    .line 118
    sget-boolean v0, Lcom/android/server/location/gnss/GpsPsdsDownloader;->DEBUG:Z

    const-string v1, "GpsPsdsDownloader"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloading PSDS data from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    const/4 v0, 0x0

    .line 122
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    move-object v0, v3

    .line 123
    const-string v3, "Accept"

    const-string v4, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string/jumbo v3, "x-wap-profile"

    const-string v4, "http://www.openmobilealliance.org/tech/profiles/UAPROF/ccppschema-20021212#"

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    sget v3, Lcom/android/server/location/gnss/GpsPsdsDownloader;->CONNECTION_TIMEOUT_MS:I

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 130
    sget v3, Lcom/android/server/location/gnss/GpsPsdsDownloader;->READ_TIMEOUT_MS:I

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 132
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 133
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 134
    .local v3, "statusCode":I
    const/16 v4, 0xc8

    if-eq v3, v4, :cond_3

    .line 135
    sget-boolean v4, Lcom/android/server/location/gnss/GpsPsdsDownloader;->DEBUG:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HTTP error downloading gps PSDS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 136
    :cond_1
    nop

    .line 155
    if-eqz v0, :cond_2

    .line 156
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 136
    :cond_2
    return-object v2

    .line 139
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 140
    .local v4, "in":Ljava/io/InputStream;
    :try_start_2
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 141
    .local v5, "bytes":Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x400

    new-array v6, v6, [B

    .line 143
    .local v6, "buffer":[B
    :cond_4
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    move v8, v7

    .local v8, "count":I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_8

    .line 144
    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 145
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    int-to-long v9, v7

    const-wide/32 v11, 0xf4240

    cmp-long v7, v9, v11

    if-lez v7, :cond_4

    .line 146
    sget-boolean v7, Lcom/android/server/location/gnss/GpsPsdsDownloader;->DEBUG:Z

    if-eqz v7, :cond_5

    const-string v7, "PSDS file too large"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    :cond_5
    nop

    .line 151
    if-eqz v4, :cond_6

    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 155
    :cond_6
    if-eqz v0, :cond_7

    .line 156
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 147
    :cond_7
    return-object v2

    .line 150
    :cond_8
    :try_start_4
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 151
    if-eqz v4, :cond_9

    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 155
    :cond_9
    if-eqz v0, :cond_a

    .line 156
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 150
    :cond_a
    return-object v7

    .line 139
    .end local v5    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "buffer":[B
    .end local v8    # "count":I
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_b

    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v6

    :try_start_7
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local p0    # "this":Lcom/android/server/location/gnss/GpsPsdsDownloader;
    .end local p1    # "url":Ljava/lang/String;
    :cond_b
    :goto_0
    throw v5
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 155
    .end local v3    # "statusCode":I
    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v0    # "connection":Ljava/net/HttpURLConnection;
    .restart local p0    # "this":Lcom/android/server/location/gnss/GpsPsdsDownloader;
    .restart local p1    # "url":Ljava/lang/String;
    :catchall_2
    move-exception v1

    goto :goto_1

    .line 152
    :catch_0
    move-exception v3

    .line 153
    .local v3, "ioe":Ljava/io/IOException;
    :try_start_8
    sget-boolean v4, Lcom/android/server/location/gnss/GpsPsdsDownloader;->DEBUG:Z

    if-eqz v4, :cond_c

    const-string v4, "Error downloading gps PSDS: "

    invoke-static {v1, v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 155
    .end local v3    # "ioe":Ljava/io/IOException;
    :cond_c
    if-eqz v0, :cond_d

    .line 156
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 159
    :cond_d
    return-object v2

    .line 155
    :goto_1
    if-eqz v0, :cond_e

    .line 156
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 158
    :cond_e
    throw v1
.end method

.method downloadPsdsData()[B
    .locals 5

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "result":[B
    iget v1, p0, Lcom/android/server/location/gnss/GpsPsdsDownloader;->mNextServerIndex:I

    .line 91
    .local v1, "startIndex":I
    iget-object v2, p0, Lcom/android/server/location/gnss/GpsPsdsDownloader;->mPsdsServers:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 92
    const/4 v2, 0x0

    return-object v2

    .line 96
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 97
    const/16 v2, -0xbc

    invoke-static {v2}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v2

    .line 100
    .local v2, "oldTag":I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/gnss/GpsPsdsDownloader;->mPsdsServers:[Ljava/lang/String;

    iget v4, p0, Lcom/android/server/location/gnss/GpsPsdsDownloader;->mNextServerIndex:I

    aget-object v3, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/server/location/gnss/GpsPsdsDownloader;->doDownload(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 102
    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 103
    nop

    .line 106
    iget v3, p0, Lcom/android/server/location/gnss/GpsPsdsDownloader;->mNextServerIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/location/gnss/GpsPsdsDownloader;->mNextServerIndex:I

    .line 107
    iget-object v4, p0, Lcom/android/server/location/gnss/GpsPsdsDownloader;->mPsdsServers:[Ljava/lang/String;

    array-length v4, v4

    if-ne v3, v4, :cond_1

    .line 108
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/location/gnss/GpsPsdsDownloader;->mNextServerIndex:I

    .line 111
    :cond_1
    iget v3, p0, Lcom/android/server/location/gnss/GpsPsdsDownloader;->mNextServerIndex:I

    if-ne v3, v1, :cond_2

    goto :goto_1

    .line 112
    .end local v2    # "oldTag":I
    :cond_2
    goto :goto_0

    .line 102
    .restart local v2    # "oldTag":I
    :catchall_0
    move-exception v3

    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 103
    throw v3

    .line 114
    .end local v2    # "oldTag":I
    :cond_3
    :goto_1
    return-object v0
.end method
