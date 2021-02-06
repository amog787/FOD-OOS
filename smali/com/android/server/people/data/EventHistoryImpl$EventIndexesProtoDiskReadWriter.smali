.class Lcom/android/server/people/data/EventHistoryImpl$EventIndexesProtoDiskReadWriter;
.super Lcom/android/server/people/data/AbstractProtoDiskReadWriter;
.source "EventHistoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/people/data/EventHistoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventIndexesProtoDiskReadWriter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/people/data/AbstractProtoDiskReadWriter<",
        "Landroid/util/SparseArray<",
        "Lcom/android/server/people/data/EventIndex;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final INDEXES_FILE:Ljava/lang/String; = "index"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 305
    const-class v0, Lcom/android/server/people/data/EventHistoryImpl$EventIndexesProtoDiskReadWriter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/people/data/EventHistoryImpl$EventIndexesProtoDiskReadWriter;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0
    .param p1, "rootDir"    # Ljava/io/File;
    .param p2, "scheduledExecutorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 311
    invoke-direct {p0, p1, p2}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;-><init>(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 312
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 313
    return-void
.end method

.method static synthetic lambda$protoStreamReader$1(Landroid/util/proto/ProtoInputStream;)Landroid/util/SparseArray;
    .locals 10
    .param p0, "protoInputStream"    # Landroid/util/proto/ProtoInputStream;

    .line 334
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 336
    .local v0, "results":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/people/data/EventIndex;>;"
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 337
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    .line 339
    goto :goto_0

    .line 341
    :cond_0
    const-wide v4, 0x20b00000001L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v4

    .line 342
    .local v4, "token":J
    const/4 v1, 0x0

    .line 343
    .local v1, "eventType":I
    sget-object v6, Lcom/android/server/people/data/EventIndex;->EMPTY:Lcom/android/server/people/data/EventIndex;

    .line 344
    .local v6, "index":Lcom/android/server/people/data/EventIndex;
    :goto_1
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v7

    if-eq v7, v2, :cond_3

    .line 345
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v7

    if-eq v7, v3, :cond_2

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1

    .line 357
    sget-object v7, Lcom/android/server/people/data/EventHistoryImpl$EventIndexesProtoDiskReadWriter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not read undefined field: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 357
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 351
    :cond_1
    const-wide v7, 0x10b00000002L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v7

    .line 353
    .local v7, "indexToken":J
    invoke-static {p0}, Lcom/android/server/people/data/EventIndex;->readFromProto(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/people/data/EventIndex;

    move-result-object v9

    move-object v6, v9

    .line 354
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 355
    goto :goto_1

    .line 347
    .end local v7    # "indexToken":J
    :cond_2
    const-wide v7, 0x10500000001L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v7

    move v1, v7

    .line 349
    goto :goto_1

    .line 361
    :cond_3
    invoke-virtual {v0, v1, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 362
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    .end local v1    # "eventType":I
    .end local v4    # "token":J
    .end local v6    # "index":Lcom/android/server/people/data/EventIndex;
    goto :goto_0

    .line 366
    :cond_4
    goto :goto_2

    .line 364
    :catch_0
    move-exception v1

    .line 365
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lcom/android/server/people/data/EventHistoryImpl$EventIndexesProtoDiskReadWriter;->TAG:Ljava/lang/String;

    const-string v3, "Failed to read protobuf input stream."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 367
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    return-object v0
.end method

.method static synthetic lambda$protoStreamWriter$0(Landroid/util/proto/ProtoOutputStream;Landroid/util/SparseArray;)V
    .locals 7
    .param p0, "protoOutputStream"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "data"    # Landroid/util/SparseArray;

    .line 318
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 319
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 320
    .local v1, "eventType":I
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/people/data/EventIndex;

    .line 321
    .local v2, "index":Lcom/android/server/people/data/EventIndex;
    const-wide v3, 0x20b00000001L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 322
    .local v3, "token":J
    const-wide v5, 0x10500000001L

    invoke-virtual {p0, v5, v6, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 323
    const-wide v5, 0x10b00000002L

    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 324
    .local v5, "indexToken":J
    invoke-virtual {v2, p0}, Lcom/android/server/people/data/EventIndex;->writeToProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 325
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 326
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 318
    .end local v1    # "eventType":I
    .end local v2    # "index":Lcom/android/server/people/data/EventIndex;
    .end local v3    # "token":J
    .end local v5    # "indexToken":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 328
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method deleteIndexesFile()V
    .locals 1

    .line 389
    const-string v0, "index"

    invoke-virtual {p0, v0}, Lcom/android/server/people/data/EventHistoryImpl$EventIndexesProtoDiskReadWriter;->delete(Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method loadIndexesFromDisk()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/people/data/EventIndex;",
            ">;"
        }
    .end annotation

    .line 384
    const-string v0, "index"

    invoke-virtual {p0, v0}, Lcom/android/server/people/data/EventHistoryImpl$EventIndexesProtoDiskReadWriter;->read(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    return-object v0
.end method

.method protoStreamReader()Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamReader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamReader<",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/people/data/EventIndex;",
            ">;>;"
        }
    .end annotation

    .line 333
    sget-object v0, Lcom/android/server/people/data/-$$Lambda$EventHistoryImpl$EventIndexesProtoDiskReadWriter$0aGiiLiZo7TqPVSQAUPw8L50o7U;->INSTANCE:Lcom/android/server/people/data/-$$Lambda$EventHistoryImpl$EventIndexesProtoDiskReadWriter$0aGiiLiZo7TqPVSQAUPw8L50o7U;

    return-object v0
.end method

.method protoStreamWriter()Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamWriter<",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/people/data/EventIndex;",
            ">;>;"
        }
    .end annotation

    .line 317
    sget-object v0, Lcom/android/server/people/data/-$$Lambda$EventHistoryImpl$EventIndexesProtoDiskReadWriter$QQqqVaVi26Ky1qfwsWxKJcUfUM4;->INSTANCE:Lcom/android/server/people/data/-$$Lambda$EventHistoryImpl$EventIndexesProtoDiskReadWriter$QQqqVaVi26Ky1qfwsWxKJcUfUM4;

    return-object v0
.end method

.method saveIndexesImmediately(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/people/data/EventIndex;",
            ">;)V"
        }
    .end annotation

    .line 378
    .local p1, "indexes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/people/data/EventIndex;>;"
    const-string v0, "index"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/people/data/EventHistoryImpl$EventIndexesProtoDiskReadWriter;->saveImmediately(Ljava/lang/String;Ljava/lang/Object;)V

    .line 379
    return-void
.end method

.method scheduleIndexesSave(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/people/data/EventIndex;",
            ">;)V"
        }
    .end annotation

    .line 373
    .local p1, "indexes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/people/data/EventIndex;>;"
    const-string v0, "index"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/people/data/EventHistoryImpl$EventIndexesProtoDiskReadWriter;->scheduleSave(Ljava/lang/String;Ljava/lang/Object;)V

    .line 374
    return-void
.end method
