.class Lcom/android/server/people/data/CallLogQueryHelper;
.super Ljava/lang/Object;
.source "CallLogQueryHelper.java"


# static fields
.field private static final CALL_TYPE_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

.field private static final TAG:Ljava/lang/String; = "CallLogQueryHelper"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEventConsumer:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Lcom/android/server/people/data/Event;",
            ">;"
        }
    .end annotation
.end field

.field private mLastCallTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 34
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/server/people/data/CallLogQueryHelper;->CALL_TYPE_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    .line 37
    const/4 v1, 0x1

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 38
    sget-object v0, Lcom/android/server/people/data/CallLogQueryHelper;->CALL_TYPE_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 39
    sget-object v0, Lcom/android/server/people/data/CallLogQueryHelper;->CALL_TYPE_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 40
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/function/BiConsumer;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Lcom/android/server/people/data/Event;",
            ">;)V"
        }
    .end annotation

    .line 51
    .local p2, "eventConsumer":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/lang/String;Lcom/android/server/people/data/Event;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/server/people/data/CallLogQueryHelper;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/android/server/people/data/CallLogQueryHelper;->mEventConsumer:Ljava/util/function/BiConsumer;

    .line 54
    return-void
.end method

.method private addEvent(Ljava/lang/String;JJI)Z
    .locals 3
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "date"    # J
    .param p4, "durationSeconds"    # J
    .param p6, "callType"    # I

    .line 112
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/android/server/people/data/CallLogQueryHelper;->validateEvent(Ljava/lang/String;JI)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    const/4 v0, 0x0

    return v0

    .line 115
    :cond_0
    sget-object v0, Lcom/android/server/people/data/CallLogQueryHelper;->CALL_TYPE_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 116
    .local v0, "eventType":I
    new-instance v1, Lcom/android/server/people/data/Event$Builder;

    invoke-direct {v1, p2, p3, v0}, Lcom/android/server/people/data/Event$Builder;-><init>(JI)V

    long-to-int v2, p4

    .line 117
    invoke-virtual {v1, v2}, Lcom/android/server/people/data/Event$Builder;->setDurationSeconds(I)Lcom/android/server/people/data/Event$Builder;

    move-result-object v1

    .line 118
    invoke-virtual {v1}, Lcom/android/server/people/data/Event$Builder;->build()Lcom/android/server/people/data/Event;

    move-result-object v1

    .line 119
    .local v1, "event":Lcom/android/server/people/data/Event;
    iget-object v2, p0, Lcom/android/server/people/data/CallLogQueryHelper;->mEventConsumer:Ljava/util/function/BiConsumer;

    invoke-interface {v2, p1, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    const/4 v2, 0x1

    return v2
.end method

.method private validateEvent(Ljava/lang/String;JI)Z
    .locals 2
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "date"    # J
    .param p4, "callType"    # I

    .line 124
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/android/server/people/data/CallLogQueryHelper;->CALL_TYPE_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    .line 126
    invoke-virtual {v0, p4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 124
    :goto_0
    return v0
.end method


# virtual methods
.method getLastCallTimestamp()J
    .locals 2

    .line 108
    iget-wide v0, p0, Lcom/android/server/people/data/CallLogQueryHelper;->mLastCallTimestamp:J

    return-wide v0
.end method

.method querySince(J)Z
    .locals 24
    .param p1, "sinceTime"    # J

    .line 62
    move-object/from16 v8, p0

    const-string v9, "CallLogQueryHelper"

    const-string/jumbo v0, "normalized_number"

    const-string v10, "date"

    const-string v11, "duration"

    const-string/jumbo v12, "type"

    filled-new-array {v0, v10, v11, v12}, [Ljava/lang/String;

    move-result-object v15

    .line 64
    .local v15, "projection":[Ljava/lang/String;
    const-string v19, "date > ?"

    .line 65
    .local v19, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    move-object/from16 v17, v1

    .line 66
    .local v17, "selectionArgs":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 67
    .local v1, "hasResults":Z
    :try_start_0
    iget-object v2, v8, Lcom/android/server/people/data/CallLogQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v18, "date DESC"

    move-object/from16 v16, v19

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v13, v2

    .line 70
    .local v13, "cursor":Landroid/database/Cursor;
    if-nez v13, :cond_1

    .line 71
    :try_start_1
    const-string v0, "Cursor is null when querying call log."

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    nop

    .line 96
    if-eqz v13, :cond_0

    :try_start_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 72
    :cond_0
    return v3

    .line 67
    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_2

    .line 70
    :cond_1
    move v14, v1

    .line 74
    .end local v1    # "hasResults":Z
    .local v14, "hasResults":Z
    :goto_0
    :try_start_3
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 76
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move v3, v1

    .line 77
    .local v3, "numberIndex":I
    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "phoneNumber":Ljava/lang/String;
    invoke-interface {v13, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move v4, v1

    .line 81
    .local v4, "dateIndex":I
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 84
    .local v5, "date":J
    invoke-interface {v13, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 85
    .local v1, "durationIndex":I
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    move-object/from16 v16, v10

    move-object/from16 v18, v11

    move-wide v10, v5

    .end local v5    # "date":J
    .local v10, "date":J
    move-wide/from16 v5, v20

    .line 88
    .local v5, "durationSeconds":J
    invoke-interface {v13, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 89
    .local v7, "typeIndex":I
    invoke-interface {v13, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    move/from16 v21, v7

    .end local v7    # "typeIndex":I
    .local v21, "typeIndex":I
    move/from16 v7, v20

    .line 91
    .local v7, "callType":I
    move-object/from16 v20, v0

    move/from16 v22, v1

    .end local v1    # "durationIndex":I
    .local v22, "durationIndex":I
    iget-wide v0, v8, Lcom/android/server/people/data/CallLogQueryHelper;->mLastCallTimestamp:J

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/server/people/data/CallLogQueryHelper;->mLastCallTimestamp:J

    .line 92
    move/from16 v0, v22

    .end local v22    # "durationIndex":I
    .local v0, "durationIndex":I
    move-object/from16 v1, p0

    move/from16 v22, v3

    move/from16 v23, v4

    .end local v3    # "numberIndex":I
    .end local v4    # "dateIndex":I
    .local v22, "numberIndex":I
    .local v23, "dateIndex":I
    move-wide v3, v10

    invoke-direct/range {v1 .. v7}, Lcom/android/server/people/data/CallLogQueryHelper;->addEvent(Ljava/lang/String;JJI)Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_2

    .line 93
    const/4 v14, 0x1

    .line 95
    .end local v0    # "durationIndex":I
    .end local v2    # "phoneNumber":Ljava/lang/String;
    .end local v5    # "durationSeconds":J
    .end local v7    # "callType":I
    .end local v10    # "date":J
    .end local v21    # "typeIndex":I
    .end local v22    # "numberIndex":I
    .end local v23    # "dateIndex":I
    :cond_2
    move-object/from16 v10, v16

    move-object/from16 v11, v18

    move-object/from16 v0, v20

    goto :goto_0

    .line 96
    :cond_3
    if-eqz v13, :cond_4

    :try_start_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 99
    .end local v13    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    move v1, v14

    goto :goto_4

    .line 102
    :cond_4
    :goto_1
    goto :goto_5

    .line 67
    .restart local v13    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    move-object v2, v0

    move v1, v14

    .end local v14    # "hasResults":Z
    .local v1, "hasResults":Z
    :goto_2
    if-eqz v13, :cond_5

    :try_start_5
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v3, v0

    :try_start_6
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "hasResults":Z
    .end local v15    # "projection":[Ljava/lang/String;
    .end local v17    # "selectionArgs":[Ljava/lang/String;
    .end local v19    # "selection":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/people/data/CallLogQueryHelper;
    .end local p1    # "sinceTime":J
    :cond_5
    :goto_3
    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 99
    .end local v13    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "hasResults":Z
    .restart local v15    # "projection":[Ljava/lang/String;
    .restart local v17    # "selectionArgs":[Ljava/lang/String;
    .restart local v19    # "selection":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/people/data/CallLogQueryHelper;
    .restart local p1    # "sinceTime":J
    :catch_1
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    const/4 v14, 0x0

    .line 101
    .end local v1    # "hasResults":Z
    .restart local v14    # "hasResults":Z
    const-string/jumbo v1, "query since Exception "

    invoke-static {v9, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    return v14
.end method
