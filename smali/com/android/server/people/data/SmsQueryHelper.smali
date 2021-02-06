.class Lcom/android/server/people/data/SmsQueryHelper;
.super Ljava/lang/Object;
.source "SmsQueryHelper.java"


# static fields
.field private static final SMS_TYPE_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

.field private static final TAG:Ljava/lang/String; = "SmsQueryHelper"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCurrentCountryIso:Ljava/lang/String;

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

.field private mLastMessageTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/server/people/data/SmsQueryHelper;->SMS_TYPE_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    .line 39
    const/4 v1, 0x1

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 40
    sget-object v0, Lcom/android/server/people/data/SmsQueryHelper;->SMS_TYPE_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 41
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/function/BiConsumer;)V
    .locals 1
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

    .line 53
    .local p2, "eventConsumer":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/lang/String;Lcom/android/server/people/data/Event;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/server/people/data/SmsQueryHelper;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/android/server/people/data/SmsQueryHelper;->mEventConsumer:Ljava/util/function/BiConsumer;

    .line 56
    invoke-static {p1}, Lcom/android/server/people/data/Utils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/people/data/SmsQueryHelper;->mCurrentCountryIso:Ljava/lang/String;

    .line 57
    return-void
.end method

.method private addEvent(Ljava/lang/String;JI)Z
    .locals 3
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "date"    # J
    .param p4, "type"    # I

    .line 112
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/people/data/SmsQueryHelper;->validateEvent(Ljava/lang/String;JI)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    const/4 v0, 0x0

    return v0

    .line 115
    :cond_0
    sget-object v0, Lcom/android/server/people/data/SmsQueryHelper;->SMS_TYPE_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 116
    .local v0, "eventType":I
    iget-object v1, p0, Lcom/android/server/people/data/SmsQueryHelper;->mEventConsumer:Ljava/util/function/BiConsumer;

    new-instance v2, Lcom/android/server/people/data/Event;

    invoke-direct {v2, p2, p3, v0}, Lcom/android/server/people/data/Event;-><init>(JI)V

    invoke-interface {v1, p1, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    const/4 v1, 0x1

    return v1
.end method

.method private validateEvent(Ljava/lang/String;JI)Z
    .locals 2
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "date"    # J
    .param p4, "type"    # I

    .line 121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/android/server/people/data/SmsQueryHelper;->SMS_TYPE_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    .line 123
    invoke-virtual {v0, p4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 121
    :goto_0
    return v0
.end method


# virtual methods
.method getLastMessageTimestamp()J
    .locals 2

    .line 108
    iget-wide v0, p0, Lcom/android/server/people/data/SmsQueryHelper;->mLastMessageTimestamp:J

    return-wide v0
.end method

.method querySince(J)Z
    .locals 21
    .param p1, "sinceTime"    # J

    .line 65
    move-object/from16 v1, p0

    const-string v0, "_id"

    const-string v2, "date"

    const-string/jumbo v3, "type"

    const-string v4, "address"

    filled-new-array {v0, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v7

    .line 66
    .local v7, "projection":[Ljava/lang/String;
    const-string v11, "date > ?"

    .line 67
    .local v11, "selection":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v9, v5, [Ljava/lang/String;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x0

    aput-object v5, v9, v12

    .line 68
    .local v9, "selectionArgs":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 69
    .local v13, "hasResults":Z
    invoke-static {}, Landroid/os/Binder;->allowBlockingForCurrentThread()V

    .line 71
    :try_start_0
    iget-object v5, v1, Lcom/android/server/people/data/SmsQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    move-object v8, v11

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 73
    .local v5, "cursor":Landroid/database/Cursor;
    if-nez v5, :cond_1

    .line 74
    :try_start_1
    const-string v0, "SmsQueryHelper"

    const-string v2, "Cursor is null when querying SMS table."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    nop

    .line 100
    if-eqz v5, :cond_0

    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 102
    :cond_0
    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    .line 75
    return v12

    .line 77
    :cond_1
    :goto_0
    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 79
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 80
    .local v6, "msgIdIndex":I
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 83
    .local v8, "msgId":Ljava/lang/String;
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 84
    .local v10, "dateIndex":I
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 87
    .local v14, "date":J
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 88
    .local v12, "typeIndex":I
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    move/from16 v17, v16

    .line 91
    .local v17, "type":I
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move/from16 v18, v16

    .line 92
    .local v18, "addressIndex":I
    nop

    .line 93
    move-object/from16 v16, v0

    move/from16 v0, v18

    move-object/from16 v18, v2

    .end local v18    # "addressIndex":I
    .local v0, "addressIndex":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v19, v0

    .end local v0    # "addressIndex":I
    .local v19, "addressIndex":I
    iget-object v0, v1, Lcom/android/server/people/data/SmsQueryHelper;->mCurrentCountryIso:Ljava/lang/String;

    .line 92
    invoke-static {v2, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "address":Ljava/lang/String;
    move-object/from16 v20, v3

    iget-wide v2, v1, Lcom/android/server/people/data/SmsQueryHelper;->mLastMessageTimestamp:J

    invoke-static {v2, v3, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/people/data/SmsQueryHelper;->mLastMessageTimestamp:J

    .line 96
    if-eqz v0, :cond_2

    move/from16 v2, v17

    .end local v17    # "type":I
    .local v2, "type":I
    invoke-direct {v1, v0, v14, v15, v2}, Lcom/android/server/people/data/SmsQueryHelper;->addEvent(Ljava/lang/String;JI)Z

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_3

    .line 97
    const/4 v13, 0x1

    goto :goto_1

    .line 96
    .end local v2    # "type":I
    .restart local v17    # "type":I
    :cond_2
    move/from16 v2, v17

    .line 99
    .end local v0    # "address":Ljava/lang/String;
    .end local v6    # "msgIdIndex":I
    .end local v8    # "msgId":Ljava/lang/String;
    .end local v10    # "dateIndex":I
    .end local v12    # "typeIndex":I
    .end local v14    # "date":J
    .end local v17    # "type":I
    .end local v19    # "addressIndex":I
    :cond_3
    :goto_1
    move-object/from16 v0, v16

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    goto :goto_0

    .line 100
    :cond_4
    if-eqz v5, :cond_5

    :try_start_4
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 102
    .end local v5    # "cursor":Landroid/database/Cursor;
    :cond_5
    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    .line 103
    nop

    .line 104
    return v13

    .line 71
    .restart local v5    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    move-object v2, v0

    if-eqz v5, :cond_6

    :try_start_5
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_6
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v7    # "projection":[Ljava/lang/String;
    .end local v9    # "selectionArgs":[Ljava/lang/String;
    .end local v11    # "selection":Ljava/lang/String;
    .end local v13    # "hasResults":Z
    .end local p0    # "this":Lcom/android/server/people/data/SmsQueryHelper;
    .end local p1    # "sinceTime":J
    :cond_6
    :goto_2
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 102
    .end local v5    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "projection":[Ljava/lang/String;
    .restart local v9    # "selectionArgs":[Ljava/lang/String;
    .restart local v11    # "selection":Ljava/lang/String;
    .restart local v13    # "hasResults":Z
    .restart local p0    # "this":Lcom/android/server/people/data/SmsQueryHelper;
    .restart local p1    # "sinceTime":J
    :catchall_2
    move-exception v0

    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    .line 103
    throw v0
.end method
