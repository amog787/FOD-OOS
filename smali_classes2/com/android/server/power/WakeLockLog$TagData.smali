.class Lcom/android/server/power/WakeLockLog$TagData;
.super Ljava/lang/Object;
.source "WakeLockLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/WakeLockLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TagData"
.end annotation


# instance fields
.field public index:I

.field public lastUsedTime:J

.field public ownerUid:I

.field public tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "ownerUid"    # I

    .line 1264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1265
    iput-object p1, p0, Lcom/android/server/power/WakeLockLog$TagData;->tag:Ljava/lang/String;

    .line 1266
    iput p2, p0, Lcom/android/server/power/WakeLockLog$TagData;->ownerUid:I

    .line 1267
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 1271
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1272
    return v0

    .line 1274
    :cond_0
    instance-of v1, p1, Lcom/android/server/power/WakeLockLog$TagData;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1275
    move-object v1, p1

    check-cast v1, Lcom/android/server/power/WakeLockLog$TagData;

    .line 1276
    .local v1, "other":Lcom/android/server/power/WakeLockLog$TagData;
    iget-object v3, p0, Lcom/android/server/power/WakeLockLog$TagData;->tag:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/power/WakeLockLog$TagData;->tag:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/server/power/WakeLockLog$TagData;->ownerUid:I

    iget v4, v1, Lcom/android/server/power/WakeLockLog$TagData;->ownerUid:I

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    .line 1278
    .end local v1    # "other":Lcom/android/server/power/WakeLockLog$TagData;
    :cond_2
    return v2
.end method

.method getByteSize()I
    .locals 2

    .line 1297
    const/4 v0, 0x0

    .line 1298
    .local v0, "bytes":I
    add-int/lit8 v0, v0, 0x8

    .line 1299
    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$TagData;->tag:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    :goto_0
    add-int/2addr v0, v1

    .line 1300
    add-int/lit8 v0, v0, 0x4

    .line 1301
    add-int/lit8 v0, v0, 0x4

    .line 1302
    add-int/lit8 v0, v0, 0x8

    .line 1303
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1287
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/WakeLockLog$TagData;->ownerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/WakeLockLog$TagData;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
