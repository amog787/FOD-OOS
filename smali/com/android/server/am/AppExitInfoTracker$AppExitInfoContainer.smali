.class final Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
.super Ljava/lang/Object;
.source "AppExitInfoTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppExitInfoTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AppExitInfoContainer"
.end annotation


# instance fields
.field private mInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/ApplicationExitInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxCapacity:I

.field private mUid:I

.field final synthetic this$0:Lcom/android/server/am/AppExitInfoTracker;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppExitInfoTracker;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/am/AppExitInfoTracker;
    .param p2, "maxCapacity"    # I

    .line 1225
    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1226
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    .line 1227
    iput p2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mMaxCapacity:I

    .line 1228
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
    .param p1, "x1"    # I

    .line 1220
    iput p1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mUid:I

    return p1
.end method

.method static synthetic lambda$dumpLocked$2(Landroid/app/ApplicationExitInfo;Landroid/app/ApplicationExitInfo;)I
    .locals 4
    .param p0, "a"    # Landroid/app/ApplicationExitInfo;
    .param p1, "b"    # Landroid/app/ApplicationExitInfo;

    .line 1360
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method static synthetic lambda$getExitInfoLocked$0(Landroid/app/ApplicationExitInfo;Landroid/app/ApplicationExitInfo;)I
    .locals 4
    .param p0, "a"    # Landroid/app/ApplicationExitInfo;
    .param p1, "b"    # Landroid/app/ApplicationExitInfo;

    .line 1246
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method static synthetic lambda$getExitInfoLocked$1(Landroid/app/ApplicationExitInfo;Landroid/app/ApplicationExitInfo;)I
    .locals 4
    .param p0, "a"    # Landroid/app/ApplicationExitInfo;
    .param p1, "b"    # Landroid/app/ApplicationExitInfo;

    .line 1266
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method addExitInfoLocked(Landroid/app/ApplicationExitInfo;)V
    .locals 8
    .param p1, "info"    # Landroid/app/ApplicationExitInfo;

    .line 1279
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v1, v0

    .local v1, "size":I
    iget v2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mMaxCapacity:I

    if-lt v0, v2, :cond_3

    .line 1280
    const/4 v0, -0x1

    .line 1281
    .local v0, "oldestIndex":I
    const-wide v2, 0x7fffffffffffffffL

    .line 1282
    .local v2, "oldestTimeStamp":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 1283
    iget-object v5, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ApplicationExitInfo;

    .line 1284
    .local v5, "r":Landroid/app/ApplicationExitInfo;
    invoke-virtual {v5}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-gez v6, :cond_0

    .line 1285
    invoke-virtual {v5}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v2

    .line 1286
    move v0, v4

    .line 1282
    .end local v5    # "r":Landroid/app/ApplicationExitInfo;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1289
    .end local v4    # "i":I
    :cond_1
    if-ltz v0, :cond_3

    .line 1290
    iget-object v4, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ApplicationExitInfo;

    invoke-virtual {v4}, Landroid/app/ApplicationExitInfo;->getTraceFile()Ljava/io/File;

    move-result-object v4

    .line 1291
    .local v4, "traceFile":Ljava/io/File;
    if-eqz v4, :cond_2

    .line 1292
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 1294
    :cond_2
    iget-object v5, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1298
    .end local v0    # "oldestIndex":I
    .end local v2    # "oldestTimeStamp":J
    .end local v4    # "traceFile":Ljava/io/File;
    :cond_3
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageUid()I

    move-result v0

    .line 1299
    .local v0, "uid":I
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v2

    .line 1300
    .local v2, "pid":I
    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v3, v3, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    invoke-static {v3, v0, v2}, Lcom/android/server/am/AppExitInfoTracker;->access$100(Landroid/util/SparseArray;II)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {p1, v3}, Landroid/app/ApplicationExitInfo;->setProcessStateSummary([B)V

    .line 1302
    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v3, v3, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    invoke-static {v3, v0, v2}, Lcom/android/server/am/AppExitInfoTracker;->access$100(Landroid/util/SparseArray;II)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {p1, v3}, Landroid/app/ApplicationExitInfo;->setTraceFile(Ljava/io/File;)V

    .line 1303
    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v3, v3, Lcom/android/server/am/AppExitInfoTracker;->mAppTraceRetriever:Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;

    invoke-virtual {p1, v3}, Landroid/app/ApplicationExitInfo;->setAppTraceRetriever(Landroid/app/IAppTraceRetriever;)V

    .line 1304
    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1305
    return-void
.end method

.method appendTraceIfNecessaryLocked(ILjava/io/File;)Z
    .locals 2
    .param p1, "pid"    # I
    .param p2, "traceFile"    # Ljava/io/File;

    .line 1309
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationExitInfo;

    .line 1310
    .local v0, "r":Landroid/app/ApplicationExitInfo;
    if-eqz v0, :cond_0

    .line 1311
    invoke-virtual {v0, p2}, Landroid/app/ApplicationExitInfo;->setTraceFile(Ljava/io/File;)V

    .line 1312
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v1, v1, Lcom/android/server/am/AppExitInfoTracker;->mAppTraceRetriever:Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setAppTraceRetriever(Landroid/app/IAppTraceRetriever;)V

    .line 1313
    const/4 v1, 0x1

    return v1

    .line 1315
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method destroyLocked()V
    .locals 4

    .line 1320
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1321
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ApplicationExitInfo;

    .line 1322
    .local v1, "ai":Landroid/app/ApplicationExitInfo;
    invoke-virtual {v1}, Landroid/app/ApplicationExitInfo;->getTraceFile()Ljava/io/File;

    move-result-object v2

    .line 1323
    .local v2, "traceFile":Ljava/io/File;
    if-eqz v2, :cond_0

    .line 1324
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1326
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/ApplicationExitInfo;->setTraceFile(Ljava/io/File;)V

    .line 1327
    invoke-virtual {v1, v3}, Landroid/app/ApplicationExitInfo;->setAppTraceRetriever(Landroid/app/IAppTraceRetriever;)V

    .line 1320
    .end local v1    # "ai":Landroid/app/ApplicationExitInfo;
    .end local v2    # "traceFile":Ljava/io/File;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1329
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/icu/text/SimpleDateFormat;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "sdf"    # Landroid/icu/text/SimpleDateFormat;

    .line 1356
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1357
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ApplicationExitInfo;>;"
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1358
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ApplicationExitInfo;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1357
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1360
    .end local v1    # "i":I
    :cond_0
    sget-object v1, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$AppExitInfoContainer$UGYjMlfjNQLNoNs9jB0lra88GDI;->INSTANCE:Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$AppExitInfoContainer$UGYjMlfjNQLNoNs9jB0lra88GDI;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1361
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1362
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 1363
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ApplicationExitInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, p1, v4, v5, p3}, Landroid/app/ApplicationExitInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/SimpleDateFormat;)V

    .line 1362
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1365
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method forEachRecordLocked(Ljava/util/function/BiFunction;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Integer;",
            "Landroid/app/ApplicationExitInfo;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1333
    .local p1, "callback":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/Integer;Landroid/app/ApplicationExitInfo;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_3

    .line 1334
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 1335
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ApplicationExitInfo;

    invoke-interface {p1, v2, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v1, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 1344
    :cond_0
    const/4 v0, 0x0

    .line 1345
    goto :goto_1

    .line 1337
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ApplicationExitInfo;

    invoke-virtual {v2}, Landroid/app/ApplicationExitInfo;->getTraceFile()Ljava/io/File;

    move-result-object v2

    .line 1338
    .local v2, "traceFile":Ljava/io/File;
    if-eqz v2, :cond_2

    .line 1339
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1341
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1342
    nop

    .line 1334
    .end local v2    # "traceFile":Ljava/io/File;
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1352
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method getExitInfoLocked(IILjava/util/ArrayList;)V
    .locals 8
    .param p1, "filterPid"    # I
    .param p2, "maxNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Landroid/app/ApplicationExitInfo;",
            ">;)V"
        }
    .end annotation

    .line 1233
    .local p3, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ApplicationExitInfo;>;"
    if-lez p1, :cond_1

    .line 1234
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationExitInfo;

    .line 1235
    .local v0, "r":Landroid/app/ApplicationExitInfo;
    if-eqz v0, :cond_0

    .line 1236
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1238
    .end local v0    # "r":Landroid/app/ApplicationExitInfo;
    :cond_0
    goto/16 :goto_5

    .line 1239
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1240
    .local v0, "numRep":I
    if-lez p2, :cond_8

    if-gt v0, p2, :cond_2

    goto :goto_3

    .line 1248
    :cond_2
    const/4 v1, 0x1

    if-ne p2, v1, :cond_5

    .line 1250
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ApplicationExitInfo;

    .line 1251
    .local v1, "r":Landroid/app/ApplicationExitInfo;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 1252
    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ApplicationExitInfo;

    .line 1253
    .local v3, "t":Landroid/app/ApplicationExitInfo;
    invoke-virtual {v1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v3}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    .line 1254
    move-object v1, v3

    .line 1251
    .end local v3    # "t":Landroid/app/ApplicationExitInfo;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1257
    .end local v2    # "i":I
    :cond_4
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1258
    .end local v1    # "r":Landroid/app/ApplicationExitInfo;
    goto :goto_5

    .line 1260
    :cond_5
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v1, v1, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList2:Ljava/util/ArrayList;

    .line 1261
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ApplicationExitInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1262
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v0, :cond_6

    .line 1263
    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ApplicationExitInfo;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1262
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1265
    .end local v2    # "i":I
    :cond_6
    sget-object v2, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$AppExitInfoContainer$RLhS-SmRlSPkWGNtIw3PWkm5huk;->INSTANCE:Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$AppExitInfoContainer$RLhS-SmRlSPkWGNtIw3PWkm5huk;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1267
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, p2, :cond_7

    .line 1268
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ApplicationExitInfo;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1267
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1270
    .end local v2    # "i":I
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_5

    .line 1242
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ApplicationExitInfo;>;"
    :cond_8
    :goto_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_9

    .line 1243
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ApplicationExitInfo;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1242
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1245
    .end local v1    # "i":I
    :cond_9
    sget-object v1, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$AppExitInfoContainer$UJh7jNVpjR6lqMYBGte4jdTlSE0;->INSTANCE:Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$AppExitInfoContainer$UJh7jNVpjR6lqMYBGte4jdTlSE0;

    invoke-static {p3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1274
    .end local v0    # "numRep":I
    :goto_5
    return-void
.end method

.method readFromProto(Landroid/util/proto/ProtoInputStream;J)I
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoInputStream;
    .param p2, "fieldId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/proto/WireTypeMismatchException;
        }
    .end annotation

    .line 1380
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    .line 1381
    .local v0, "token":J
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    .line 1382
    .local v2, "next":I
    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 1384
    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 1389
    :cond_0
    new-instance v3, Landroid/app/ApplicationExitInfo;

    invoke-direct {v3}, Landroid/app/ApplicationExitInfo;-><init>()V

    .line 1390
    .local v3, "info":Landroid/app/ApplicationExitInfo;
    const-wide v4, 0x20b00000002L

    invoke-virtual {v3, p1, v4, v5}, Landroid/app/ApplicationExitInfo;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 1391
    iget-object v4, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 1386
    .end local v3    # "info":Landroid/app/ApplicationExitInfo;
    :cond_1
    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v3

    iput v3, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mUid:I

    .line 1387
    nop

    .line 1383
    :goto_1
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    goto :goto_0

    .line 1395
    .end local v2    # "next":I
    :cond_2
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 1396
    iget v2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mUid:I

    return v2
.end method

.method toListLocked(Ljava/util/List;I)Ljava/util/List;
    .locals 2
    .param p2, "filterPid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ApplicationExitInfo;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/app/ApplicationExitInfo;",
            ">;"
        }
    .end annotation

    .line 1401
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ApplicationExitInfo;>;"
    if-nez p1, :cond_0

    .line 1402
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object p1, v0

    .line 1404
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 1405
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    if-ne p2, v1, :cond_2

    .line 1406
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ApplicationExitInfo;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1404
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1409
    .end local v0    # "i":I
    :cond_3
    return-object p1
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 7
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1369
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1370
    .local v0, "token":J
    iget v2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mUid:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1371
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1372
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1373
    iget-object v4, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ApplicationExitInfo;

    const-wide v5, 0x20b00000002L

    invoke-virtual {v4, p1, v5, v6}, Landroid/app/ApplicationExitInfo;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1372
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1375
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1376
    return-void
.end method
