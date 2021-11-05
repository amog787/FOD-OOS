.class public Lcom/android/server/backup/UsageStatsBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "UsageStatsBackupHelper.java"


# static fields
.field static final BLOB_VERSION:I = 0x1

.field static final DEBUG:Z = false

.field static final KEY_USAGE_STATS:Ljava/lang/String; = "usage_stats"

.field static final TAG:Ljava/lang/String; = "UsgStatsBackupHelper"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 30
    const-string/jumbo v0, "usage_stats"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected applyRestoredPayload(Ljava/lang/String;[B)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "payload"    # [B

    .line 55
    const-string/jumbo v0, "usage_stats"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 57
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 58
    .local v0, "localUsageStatsManager":Landroid/app/usage/UsageStatsManagerInternal;
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 60
    .local v1, "in":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 61
    .local v2, "user":I
    array-length v3, p2

    add-int/lit8 v3, v3, -0x4

    new-array v3, v3, [B

    .line 62
    .local v3, "restoreData":[B
    const/4 v4, 0x0

    array-length v5, v3

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/DataInputStream;->read([BII)I

    .line 63
    invoke-virtual {v0, v2, p1, v3}, Landroid/app/usage/UsageStatsManagerInternal;->applyRestoredPayload(ILjava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v2    # "user":I
    .end local v3    # "restoreData":[B
    goto :goto_0

    .line 64
    :catch_0
    move-exception v2

    .line 68
    .end local v0    # "localUsageStatsManager":Landroid/app/usage/UsageStatsManagerInternal;
    .end local v1    # "in":Ljava/io/DataInputStream;
    :cond_0
    :goto_0
    return-void
.end method

.method protected getBackupPayload(Ljava/lang/String;)[B
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 35
    const-string/jumbo v0, "usage_stats"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 37
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 38
    .local v0, "localUsageStatsManager":Landroid/app/usage/UsageStatsManagerInternal;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 39
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 41
    .local v2, "out":Ljava/io/DataOutputStream;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 42
    invoke-virtual {v0, v3, p1}, Landroid/app/usage/UsageStatsManagerInternal;->getBackupPayload(ILjava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    goto :goto_0

    .line 43
    :catch_0
    move-exception v3

    .line 45
    .local v3, "ioe":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 47
    .end local v3    # "ioe":Ljava/io/IOException;
    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 49
    .end local v0    # "localUsageStatsManager":Landroid/app/usage/UsageStatsManagerInternal;
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "out":Ljava/io/DataOutputStream;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
