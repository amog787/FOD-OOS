.class public Lcom/android/server/notification/CalendarTracker;
.super Ljava/lang/Object;
.source "CalendarTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/CalendarTracker$Callback;,
        Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    }
.end annotation


# static fields
.field private static final ATTENDEE_PROJECTION:[Ljava/lang/String;

.field private static final ATTENDEE_SELECTION:Ljava/lang/String; = "event_id = ? AND attendeeEmail = ?"

.field private static final DEBUG:Z

.field private static final DEBUG_ATTENDEES:Z = false

.field private static final EVENT_CHECK_LOOKAHEAD:I = 0x5265c00

.field private static final INSTANCE_ORDER_BY:Ljava/lang/String; = "begin ASC"

.field private static final INSTANCE_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ConditionProviders.CT"


# instance fields
.field private mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

.field private final mObserver:Landroid/database/ContentObserver;

.field private mRegistered:Z

.field private final mSystemContext:Landroid/content/Context;

.field private final mUserContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 41
    const-string v0, "ConditionProviders"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    .line 46
    const-string v1, "begin"

    const-string v2, "end"

    const-string/jumbo v3, "title"

    const-string/jumbo v4, "visible"

    const-string v5, "event_id"

    const-string v6, "calendar_displayName"

    const-string/jumbo v7, "ownerAccount"

    const-string v8, "calendar_id"

    const-string v9, "availability"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/CalendarTracker;->INSTANCE_PROJECTION:[Ljava/lang/String;

    .line 60
    const-string v0, "event_id"

    const-string v1, "attendeeEmail"

    const-string v2, "attendeeStatus"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/CalendarTracker;->ATTENDEE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 2
    .param p1, "systemContext"    # Landroid/content/Context;
    .param p2, "userContext"    # Landroid/content/Context;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    new-instance v0, Lcom/android/server/notification/CalendarTracker$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/CalendarTracker$1;-><init>(Lcom/android/server/notification/CalendarTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    .line 76
    iput-object p1, p0, Lcom/android/server/notification/CalendarTracker;->mSystemContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    .line 78
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 39
    sget-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/notification/CalendarTracker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/CalendarTracker;

    .line 39
    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/notification/CalendarTracker;)Lcom/android/server/notification/CalendarTracker$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/CalendarTracker;

    .line 39
    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    return-object v0
.end method

.method private static attendeeStatusToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "status"    # I

    .line 243
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ATTENDEE_STATUS_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 248
    :cond_0
    const-string v0, "ATTENDEE_STATUS_TENTATIVE"

    return-object v0

    .line 247
    :cond_1
    const-string v0, "ATTENDEE_STATUS_INVITED"

    return-object v0

    .line 246
    :cond_2
    const-string v0, "ATTENDEE_STATUS_DECLINED"

    return-object v0

    .line 245
    :cond_3
    const-string v0, "ATTENDEE_STATUS_ACCEPTED"

    return-object v0

    .line 244
    :cond_4
    const-string v0, "ATTENDEE_STATUS_NONE"

    return-object v0
.end method

.method private static availabilityToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "availability"    # I

    .line 254
    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AVAILABILITY_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 257
    :cond_0
    const-string v0, "AVAILABILITY_TENTATIVE"

    return-object v0

    .line 256
    :cond_1
    const-string v0, "AVAILABILITY_FREE"

    return-object v0

    .line 255
    :cond_2
    const-string v0, "AVAILABILITY_BUSY"

    return-object v0
.end method

.method private getCalendarsWithAccess()Landroid/util/ArraySet;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 93
    const-string v0, "ConditionProviders.CT"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 94
    .local v1, "start":J
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 95
    .local v3, "rt":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    const-string v4, "_id"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v7

    .line 96
    .local v7, "projection":[Ljava/lang/String;
    const-string v4, "calendar_access_level >= 500 AND sync_events = 1"

    .line 99
    .local v4, "selection":Ljava/lang/String;
    const/4 v11, 0x0

    .line 101
    .local v11, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const-string v8, "calendar_access_level >= 500 AND sync_events = 1"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    move-object v11, v5

    .line 103
    :goto_0
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 104
    const/4 v5, 0x0

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 109
    :cond_0
    if-eqz v11, :cond_1

    .line 110
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 109
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 106
    :catch_0
    move-exception v5

    .line 107
    .local v5, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v6, "error querying calendar content provider"

    invoke-static {v0, v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    nop

    .end local v5    # "e":Landroid/database/sqlite/SQLiteException;
    if-eqz v11, :cond_1

    .line 110
    goto :goto_1

    .line 113
    :cond_1
    :goto_2
    sget-boolean v5, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 114
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCalendarsWithAccess took "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v1

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_2
    return-object v3

    .line 109
    :goto_3
    if-eqz v11, :cond_3

    .line 110
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 112
    :cond_3
    throw v0
.end method

.method private meetsAttendee(Landroid/service/notification/ZenModeConfig$EventInfo;ILjava/lang/String;)Z
    .locals 21
    .param p1, "filter"    # Landroid/service/notification/ZenModeConfig$EventInfo;
    .param p2, "eventId"    # I
    .param p3, "email"    # Ljava/lang/String;

    .line 183
    move-object/from16 v1, p3

    const-string/jumbo v2, "meetsAttendee took "

    const-string v3, "ConditionProviders.CT"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 184
    .local v4, "start":J
    const-string v12, "event_id = ? AND attendeeEmail = ?"

    .line 185
    .local v12, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v10, v0, [Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v13, 0x0

    aput-object v6, v10, v13

    const/4 v14, 0x1

    aput-object v1, v10, v14

    .line 190
    .local v10, "selectionArgs":[Ljava/lang/String;
    const/4 v15, 0x0

    .line 192
    .local v15, "cursor":Landroid/database/Cursor;
    move-object/from16 v11, p0

    :try_start_0
    iget-object v6, v11, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    sget-object v8, Lcom/android/server/notification/CalendarTracker;->ATTENDEE_PROJECTION:[Ljava/lang/String;

    const/16 v16, 0x0

    move-object v9, v12

    move-object/from16 v11, v16

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move-object v15, v6

    .line 194
    if-eqz v15, :cond_6

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_0

    move-object/from16 v19, v10

    move-object/from16 v20, v12

    move/from16 v10, p2

    goto/16 :goto_3

    .line 198
    :cond_0
    const/4 v6, 0x0

    .line 199
    .local v6, "rt":Z
    :goto_0
    if-eqz v15, :cond_3

    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 200
    invoke-interface {v15, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 201
    .local v7, "rowEventId":J
    invoke-interface {v15, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 202
    .local v9, "rowEmail":Ljava/lang/String;
    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 203
    .local v11, "status":I
    move-object/from16 v14, p1

    iget v13, v14, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    invoke-static {v13, v11}, Lcom/android/server/notification/CalendarTracker;->meetsReply(II)Z

    move-result v13

    .line 204
    .local v13, "meetsReply":Z
    sget-boolean v18, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v18, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v19, v10

    .end local v10    # "selectionArgs":[Ljava/lang/String;
    .local v19, "selectionArgs":[Ljava/lang/String;
    :try_start_1
    const-string v10, ""

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "status=%s, meetsReply=%s"
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v20, v12

    const/4 v12, 0x2

    .end local v12    # "selection":Ljava/lang/String;
    .local v20, "selection":Ljava/lang/String;
    :try_start_2
    new-array v14, v12, [Ljava/lang/Object;

    .line 207
    invoke-static {v11}, Lcom/android/server/notification/CalendarTracker;->attendeeStatusToString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v17, 0x0

    aput-object v18, v14, v17

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    const/16 v16, 0x1

    aput-object v18, v14, v16

    .line 206
    invoke-static {v10, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 217
    .end local v6    # "rt":Z
    .end local v7    # "rowEventId":J
    .end local v9    # "rowEmail":Ljava/lang/String;
    .end local v11    # "status":I
    .end local v13    # "meetsReply":Z
    :catchall_0
    move-exception v0

    move/from16 v10, p2

    goto/16 :goto_5

    .line 213
    :catch_0
    move-exception v0

    move/from16 v10, p2

    goto/16 :goto_4

    .line 217
    .end local v20    # "selection":Ljava/lang/String;
    .restart local v12    # "selection":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v20, v12

    move/from16 v10, p2

    .end local v12    # "selection":Ljava/lang/String;
    .restart local v20    # "selection":Ljava/lang/String;
    goto/16 :goto_5

    .line 213
    .end local v20    # "selection":Ljava/lang/String;
    .restart local v12    # "selection":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v20, v12

    move/from16 v10, p2

    .end local v12    # "selection":Ljava/lang/String;
    .restart local v20    # "selection":Ljava/lang/String;
    goto/16 :goto_4

    .line 204
    .end local v19    # "selectionArgs":[Ljava/lang/String;
    .end local v20    # "selection":Ljava/lang/String;
    .restart local v6    # "rt":Z
    .restart local v7    # "rowEventId":J
    .restart local v9    # "rowEmail":Ljava/lang/String;
    .restart local v10    # "selectionArgs":[Ljava/lang/String;
    .restart local v11    # "status":I
    .restart local v12    # "selection":Ljava/lang/String;
    .restart local v13    # "meetsReply":Z
    :cond_1
    move-object/from16 v19, v10

    move-object/from16 v20, v12

    move v12, v0

    .line 208
    .end local v10    # "selectionArgs":[Ljava/lang/String;
    .end local v12    # "selection":Ljava/lang/String;
    .restart local v19    # "selectionArgs":[Ljava/lang/String;
    .restart local v20    # "selection":Ljava/lang/String;
    :goto_1
    move/from16 v10, p2

    move v0, v13

    .end local v13    # "meetsReply":Z
    .local v0, "meetsReply":Z
    int-to-long v12, v10

    cmp-long v12, v7, v12

    if-nez v12, :cond_2

    :try_start_3
    invoke-static {v9, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v12, :cond_2

    if-eqz v0, :cond_2

    const/4 v12, 0x1

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    .line 210
    .local v12, "eventMeets":Z
    :goto_2
    or-int/2addr v6, v12

    .line 211
    .end local v0    # "meetsReply":Z
    .end local v7    # "rowEventId":J
    .end local v9    # "rowEmail":Ljava/lang/String;
    .end local v11    # "status":I
    .end local v12    # "eventMeets":Z
    move-object/from16 v10, v19

    move-object/from16 v12, v20

    const/4 v0, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto/16 :goto_0

    .line 199
    .end local v19    # "selectionArgs":[Ljava/lang/String;
    .end local v20    # "selection":Ljava/lang/String;
    .restart local v10    # "selectionArgs":[Ljava/lang/String;
    .local v12, "selection":Ljava/lang/String;
    :cond_3
    move-object/from16 v19, v10

    move-object/from16 v20, v12

    move/from16 v10, p2

    .line 212
    .end local v10    # "selectionArgs":[Ljava/lang/String;
    .end local v12    # "selection":Ljava/lang/String;
    .restart local v19    # "selectionArgs":[Ljava/lang/String;
    .restart local v20    # "selection":Ljava/lang/String;
    nop

    .line 217
    if-eqz v15, :cond_4

    .line 218
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 220
    :cond_4
    sget-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_5
    return v6

    .line 194
    .end local v6    # "rt":Z
    .end local v19    # "selectionArgs":[Ljava/lang/String;
    .end local v20    # "selection":Ljava/lang/String;
    .restart local v10    # "selectionArgs":[Ljava/lang/String;
    .restart local v12    # "selection":Ljava/lang/String;
    :cond_6
    move-object/from16 v19, v10

    move-object/from16 v20, v12

    move/from16 v10, p2

    .line 195
    .end local v10    # "selectionArgs":[Ljava/lang/String;
    .end local v12    # "selection":Ljava/lang/String;
    .restart local v19    # "selectionArgs":[Ljava/lang/String;
    .restart local v20    # "selection":Ljava/lang/String;
    :goto_3
    :try_start_4
    sget-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v0, :cond_7

    const-string v0, "No attendees found"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 196
    :cond_7
    nop

    .line 217
    if-eqz v15, :cond_8

    .line 218
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 220
    :cond_8
    sget-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_9
    const/4 v0, 0x1

    return v0

    .line 213
    :catch_2
    move-exception v0

    goto :goto_4

    .line 217
    .end local v19    # "selectionArgs":[Ljava/lang/String;
    .end local v20    # "selection":Ljava/lang/String;
    .restart local v10    # "selectionArgs":[Ljava/lang/String;
    .restart local v12    # "selection":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v19, v10

    move-object/from16 v20, v12

    move/from16 v10, p2

    .end local v10    # "selectionArgs":[Ljava/lang/String;
    .end local v12    # "selection":Ljava/lang/String;
    .restart local v19    # "selectionArgs":[Ljava/lang/String;
    .restart local v20    # "selection":Ljava/lang/String;
    goto :goto_5

    .line 213
    .end local v19    # "selectionArgs":[Ljava/lang/String;
    .end local v20    # "selection":Ljava/lang/String;
    .restart local v10    # "selectionArgs":[Ljava/lang/String;
    .restart local v12    # "selection":Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object/from16 v19, v10

    move-object/from16 v20, v12

    move/from16 v10, p2

    .line 214
    .end local v10    # "selectionArgs":[Ljava/lang/String;
    .end local v12    # "selection":Ljava/lang/String;
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    .restart local v19    # "selectionArgs":[Ljava/lang/String;
    .restart local v20    # "selection":Ljava/lang/String;
    :goto_4
    :try_start_5
    const-string v6, "error querying attendees content provider"

    invoke-static {v3, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 215
    nop

    .line 217
    if-eqz v15, :cond_a

    .line 218
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 220
    :cond_a
    sget-boolean v6, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v6, :cond_b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_b
    const/4 v2, 0x0

    return v2

    .line 217
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_3
    move-exception v0

    :goto_5
    if-eqz v15, :cond_c

    .line 218
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 220
    :cond_c
    sget-boolean v6, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v6, :cond_d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_d
    throw v0
.end method

.method private static meetsReply(II)Z
    .locals 3
    .param p0, "reply"    # I
    .param p1, "attendeeStatus"    # I

    .line 263
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_5

    if-eq p0, v2, :cond_2

    if-eq p0, v0, :cond_0

    .line 272
    return v1

    .line 265
    :cond_0
    if-ne p1, v2, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 267
    :cond_2
    if-eq p1, v2, :cond_3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1

    .line 270
    :cond_5
    if-eq p1, v0, :cond_6

    move v1, v2

    :cond_6
    return v1
.end method

.method private setRegistered(Z)V
    .locals 5
    .param p1, "registered"    # Z

    .line 225
    iget-boolean v0, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 227
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 228
    .local v1, "userId":I
    iget-boolean v2, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    const-string v3, "ConditionProviders.CT"

    if-eqz v2, :cond_2

    .line 229
    sget-boolean v2, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregister content observer u="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 232
    :cond_2
    iput-boolean p1, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    .line 233
    sget-boolean v2, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mRegistered = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " u="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    if-eqz v2, :cond_5

    .line 235
    sget-boolean v2, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "register content observer u="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_4
    sget-object v2, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 237
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 238
    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 240
    :cond_5
    return-void
.end method


# virtual methods
.method public checkEvent(Landroid/service/notification/ZenModeConfig$EventInfo;J)Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .locals 34
    .param p1, "filter"    # Landroid/service/notification/ZenModeConfig$EventInfo;
    .param p2, "time"    # J

    .line 120
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    const-string v5, "ConditionProviders.CT"

    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 121
    .local v6, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 122
    const-wide/32 v7, 0x5265c00

    add-long v9, v3, v7

    invoke-static {v6, v9, v10}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 123
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    .line 124
    .local v9, "uri":Landroid/net/Uri;
    const/4 v10, 0x0

    .line 125
    .local v10, "cursor":Landroid/database/Cursor;
    new-instance v0, Lcom/android/server/notification/CalendarTracker$CheckEventResult;

    invoke-direct {v0}, Lcom/android/server/notification/CalendarTracker$CheckEventResult;-><init>()V

    move-object v15, v0

    .line 126
    .local v15, "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    add-long/2addr v7, v3

    iput-wide v7, v15, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    .line 128
    :try_start_0
    iget-object v0, v1, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v13, Lcom/android/server/notification/CalendarTracker;->INSTANCE_PROJECTION:[Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v0, 0x0

    const-string v16, "begin ASC"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move-object v12, v9

    move-object v7, v15

    .end local v15    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .local v7, "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    move-object v15, v0

    :try_start_1
    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-object v10, v0

    .line 130
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/CalendarTracker;->getCalendarsWithAccess()Landroid/util/ArraySet;

    move-result-object v0

    .line 131
    .local v0, "calendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :goto_0
    if-eqz v10, :cond_12

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 132
    const/4 v8, 0x0

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 133
    .local v11, "begin":J
    const/4 v13, 0x1

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 134
    .local v14, "end":J
    const/4 v8, 0x2

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 135
    .local v17, "title":Ljava/lang/String;
    const/4 v8, 0x3

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/4 v8, 0x1

    if-ne v13, v8, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    .line 136
    .local v8, "calendarVisible":Z
    :goto_1
    const/4 v13, 0x4

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    move/from16 v22, v21

    .line 137
    .local v22, "eventId":I
    const/4 v13, 0x5

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v24, v23

    .line 138
    .local v24, "name":Ljava/lang/String;
    const/4 v13, 0x6

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v26, v25

    .line 139
    .local v26, "owner":Ljava/lang/String;
    const/4 v13, 0x7

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    .line 140
    .local v27, "calendarId":J
    const/16 v13, 0x8

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v30, v29

    .line 141
    .local v30, "availability":I
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v13

    .line 142
    .local v13, "canAccessCal":Z
    sget-boolean v31, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v31, :cond_1

    .line 143
    move-object/from16 v31, v0

    .end local v0    # "calendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .local v31, "calendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    const-string/jumbo v0, "title=%s time=%s-%s vis=%s availability=%s eventId=%s name=%s owner=%s calId=%s canAccessCal=%s"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object/from16 v32, v6

    .end local v6    # "uriBuilder":Landroid/net/Uri$Builder;
    .local v32, "uriBuilder":Landroid/net/Uri$Builder;
    const/16 v6, 0xa

    :try_start_3
    new-array v6, v6, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v17, v6, v16
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v33, v9

    .end local v9    # "uri":Landroid/net/Uri;
    .local v33, "uri":Landroid/net/Uri;
    :try_start_4
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v11, v12}, Ljava/util/Date;-><init>(J)V

    const/16 v19, 0x1

    aput-object v9, v6, v19

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v14, v15}, Ljava/util/Date;-><init>(J)V

    const/16 v18, 0x2

    aput-object v9, v6, v18

    .line 145
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/16 v18, 0x3

    aput-object v9, v6, v18

    .line 146
    invoke-static/range {v30 .. v30}, Lcom/android/server/notification/CalendarTracker;->availabilityToString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v18, 0x4

    aput-object v9, v6, v18

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v18, 0x5

    aput-object v9, v6, v18

    move-object/from16 v9, v24

    const/16 v18, 0x6

    .end local v24    # "name":Ljava/lang/String;
    .local v9, "name":Ljava/lang/String;
    aput-object v9, v6, v18
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v18, v10

    move-object/from16 v10, v26

    const/16 v20, 0x7

    .end local v26    # "owner":Ljava/lang/String;
    .local v10, "owner":Ljava/lang/String;
    .local v18, "cursor":Landroid/database/Cursor;
    :try_start_5
    aput-object v10, v6, v20

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const/16 v21, 0x8

    aput-object v20, v6, v21

    const/16 v20, 0x9

    .line 147
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    aput-object v21, v6, v20

    .line 143
    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 175
    .end local v8    # "calendarVisible":Z
    .end local v9    # "name":Ljava/lang/String;
    .end local v11    # "begin":J
    .end local v13    # "canAccessCal":Z
    .end local v14    # "end":J
    .end local v17    # "title":Ljava/lang/String;
    .end local v18    # "cursor":Landroid/database/Cursor;
    .end local v22    # "eventId":I
    .end local v27    # "calendarId":J
    .end local v30    # "availability":I
    .end local v31    # "calendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .local v10, "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    move-object/from16 v18, v10

    .end local v10    # "cursor":Landroid/database/Cursor;
    .restart local v18    # "cursor":Landroid/database/Cursor;
    goto/16 :goto_b

    .line 172
    .end local v18    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    move-object/from16 v18, v10

    .end local v10    # "cursor":Landroid/database/Cursor;
    .restart local v18    # "cursor":Landroid/database/Cursor;
    goto/16 :goto_9

    .line 175
    .end local v18    # "cursor":Landroid/database/Cursor;
    .end local v33    # "uri":Landroid/net/Uri;
    .local v9, "uri":Landroid/net/Uri;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    move-object/from16 v33, v9

    move-object/from16 v18, v10

    .end local v9    # "uri":Landroid/net/Uri;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .restart local v18    # "cursor":Landroid/database/Cursor;
    .restart local v33    # "uri":Landroid/net/Uri;
    goto/16 :goto_b

    .line 172
    .end local v18    # "cursor":Landroid/database/Cursor;
    .end local v33    # "uri":Landroid/net/Uri;
    .restart local v9    # "uri":Landroid/net/Uri;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :catch_1
    move-exception v0

    move-object/from16 v33, v9

    move-object/from16 v18, v10

    .end local v9    # "uri":Landroid/net/Uri;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .restart local v18    # "cursor":Landroid/database/Cursor;
    .restart local v33    # "uri":Landroid/net/Uri;
    goto/16 :goto_9

    .line 142
    .end local v18    # "cursor":Landroid/database/Cursor;
    .end local v32    # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v33    # "uri":Landroid/net/Uri;
    .restart local v0    # "calendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v6    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v8    # "calendarVisible":Z
    .restart local v9    # "uri":Landroid/net/Uri;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "begin":J
    .restart local v13    # "canAccessCal":Z
    .restart local v14    # "end":J
    .restart local v17    # "title":Ljava/lang/String;
    .restart local v22    # "eventId":I
    .restart local v24    # "name":Ljava/lang/String;
    .restart local v26    # "owner":Ljava/lang/String;
    .restart local v27    # "calendarId":J
    .restart local v30    # "availability":I
    :cond_1
    move-object/from16 v31, v0

    move-object/from16 v32, v6

    move-object/from16 v33, v9

    move-object/from16 v18, v10

    move-object/from16 v9, v24

    move-object/from16 v10, v26

    const/16 v16, 0x0

    .line 149
    .end local v0    # "calendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v6    # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v24    # "name":Ljava/lang/String;
    .end local v26    # "owner":Ljava/lang/String;
    .local v9, "name":Ljava/lang/String;
    .local v10, "owner":Ljava/lang/String;
    .restart local v18    # "cursor":Landroid/database/Cursor;
    .restart local v31    # "calendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v32    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v33    # "uri":Landroid/net/Uri;
    :goto_2
    cmp-long v0, v3, v11

    if-ltz v0, :cond_2

    cmp-long v0, v3, v14

    if-gez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    move/from16 v0, v16

    .line 150
    .local v0, "meetsTime":Z
    :goto_3
    if-eqz v8, :cond_6

    if-eqz v13, :cond_6

    iget-object v6, v2, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    if-nez v6, :cond_4

    iget-object v6, v2, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    if-eqz v6, :cond_3

    goto :goto_4

    :cond_3
    move/from16 v20, v8

    goto :goto_5

    :cond_4
    :goto_4
    iget-object v6, v2, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    .line 152
    move/from16 v20, v8

    .end local v8    # "calendarVisible":Z
    .local v20, "calendarVisible":Z
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v6, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, v2, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    .line 153
    invoke-static {v6, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_5
    :goto_5
    const/4 v6, 0x1

    goto :goto_6

    .line 175
    .end local v0    # "meetsTime":Z
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "owner":Ljava/lang/String;
    .end local v11    # "begin":J
    .end local v13    # "canAccessCal":Z
    .end local v14    # "end":J
    .end local v17    # "title":Ljava/lang/String;
    .end local v20    # "calendarVisible":Z
    .end local v22    # "eventId":I
    .end local v27    # "calendarId":J
    .end local v30    # "availability":I
    .end local v31    # "calendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :catchall_2
    move-exception v0

    move-object/from16 v10, v18

    goto/16 :goto_b

    .line 172
    :catch_2
    move-exception v0

    move-object/from16 v10, v18

    goto/16 :goto_9

    .line 150
    .restart local v0    # "meetsTime":Z
    .restart local v8    # "calendarVisible":Z
    .restart local v9    # "name":Ljava/lang/String;
    .restart local v10    # "owner":Ljava/lang/String;
    .restart local v11    # "begin":J
    .restart local v13    # "canAccessCal":Z
    .restart local v14    # "end":J
    .restart local v17    # "title":Ljava/lang/String;
    .restart local v22    # "eventId":I
    .restart local v27    # "calendarId":J
    .restart local v30    # "availability":I
    .restart local v31    # "calendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :cond_6
    move/from16 v20, v8

    .line 153
    .end local v8    # "calendarVisible":Z
    .restart local v20    # "calendarVisible":Z
    :cond_7
    move/from16 v6, v16

    .line 154
    .local v6, "meetsCalendar":Z
    :goto_6
    move-object/from16 v21, v9

    move/from16 v8, v30

    const/4 v9, 0x1

    .end local v9    # "name":Ljava/lang/String;
    .end local v30    # "availability":I
    .local v8, "availability":I
    .local v21, "name":Ljava/lang/String;
    if-eq v8, v9, :cond_8

    const/16 v16, 0x1

    :cond_8
    move/from16 v9, v16

    .line 155
    .local v9, "meetsAvailability":Z
    if-eqz v6, :cond_10

    if-eqz v9, :cond_10

    .line 156
    sget-boolean v16, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v16, :cond_9

    move/from16 v16, v6

    .end local v6    # "meetsCalendar":Z
    .local v16, "meetsCalendar":Z
    const-string v6, "  MEETS CALENDAR & AVAILABILITY"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .end local v16    # "meetsCalendar":Z
    .restart local v6    # "meetsCalendar":Z
    :cond_9
    move/from16 v16, v6

    .line 157
    .end local v6    # "meetsCalendar":Z
    .restart local v16    # "meetsCalendar":Z
    :goto_7
    move/from16 v6, v22

    .end local v22    # "eventId":I
    .local v6, "eventId":I
    invoke-direct {v1, v2, v6, v10}, Lcom/android/server/notification/CalendarTracker;->meetsAttendee(Landroid/service/notification/ZenModeConfig$EventInfo;ILjava/lang/String;)Z

    move-result v22

    .line 158
    .local v22, "meetsAttendee":Z
    if-eqz v22, :cond_f

    .line 159
    sget-boolean v23, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v23, :cond_a

    const-string v1, "    MEETS ATTENDEE"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_a
    if-eqz v0, :cond_c

    .line 161
    sget-boolean v1, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v1, :cond_b

    const-string v1, "      MEETS TIME"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_b
    const/4 v1, 0x1

    iput-boolean v1, v7, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    .line 164
    :cond_c
    cmp-long v1, v11, v3

    if-lez v1, :cond_d

    move/from16 v19, v0

    .end local v0    # "meetsTime":Z
    .local v19, "meetsTime":Z
    iget-wide v0, v7, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    cmp-long v0, v11, v0

    if-gez v0, :cond_e

    .line 165
    iput-wide v11, v7, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    goto :goto_8

    .line 164
    .end local v19    # "meetsTime":Z
    .restart local v0    # "meetsTime":Z
    :cond_d
    move/from16 v19, v0

    .line 166
    .end local v0    # "meetsTime":Z
    .restart local v19    # "meetsTime":Z
    :cond_e
    cmp-long v0, v14, v3

    if-lez v0, :cond_11

    iget-wide v0, v7, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    cmp-long v0, v14, v0

    if-gez v0, :cond_11

    .line 167
    iput-wide v14, v7, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_8

    .line 158
    .end local v19    # "meetsTime":Z
    .restart local v0    # "meetsTime":Z
    :cond_f
    move/from16 v19, v0

    .end local v0    # "meetsTime":Z
    .restart local v19    # "meetsTime":Z
    goto :goto_8

    .line 155
    .end local v16    # "meetsCalendar":Z
    .end local v19    # "meetsTime":Z
    .restart local v0    # "meetsTime":Z
    .local v6, "meetsCalendar":Z
    .local v22, "eventId":I
    :cond_10
    move/from16 v19, v0

    move/from16 v16, v6

    move/from16 v6, v22

    .line 171
    .end local v0    # "meetsTime":Z
    .end local v6    # "meetsCalendar":Z
    .end local v8    # "availability":I
    .end local v9    # "meetsAvailability":Z
    .end local v10    # "owner":Ljava/lang/String;
    .end local v11    # "begin":J
    .end local v13    # "canAccessCal":Z
    .end local v14    # "end":J
    .end local v17    # "title":Ljava/lang/String;
    .end local v20    # "calendarVisible":Z
    .end local v21    # "name":Ljava/lang/String;
    .end local v22    # "eventId":I
    .end local v27    # "calendarId":J
    :cond_11
    :goto_8
    move-object/from16 v1, p0

    move-object/from16 v10, v18

    move-object/from16 v0, v31

    move-object/from16 v6, v32

    move-object/from16 v9, v33

    goto/16 :goto_0

    .line 131
    .end local v18    # "cursor":Landroid/database/Cursor;
    .end local v31    # "calendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v32    # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v33    # "uri":Landroid/net/Uri;
    .local v0, "calendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .local v6, "uriBuilder":Landroid/net/Uri$Builder;
    .local v9, "uri":Landroid/net/Uri;
    .local v10, "cursor":Landroid/database/Cursor;
    :cond_12
    move-object/from16 v31, v0

    move-object/from16 v32, v6

    move-object/from16 v33, v9

    move-object/from16 v18, v10

    .line 175
    .end local v0    # "calendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v6    # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v9    # "uri":Landroid/net/Uri;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .restart local v18    # "cursor":Landroid/database/Cursor;
    .restart local v32    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v33    # "uri":Landroid/net/Uri;
    if-eqz v18, :cond_13

    .line 176
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 179
    :cond_13
    move-object/from16 v10, v18

    goto :goto_a

    .line 175
    .end local v18    # "cursor":Landroid/database/Cursor;
    .end local v32    # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v33    # "uri":Landroid/net/Uri;
    .restart local v6    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v9    # "uri":Landroid/net/Uri;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :catchall_3
    move-exception v0

    move-object/from16 v32, v6

    move-object/from16 v33, v9

    move-object/from16 v18, v10

    .end local v6    # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v9    # "uri":Landroid/net/Uri;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .restart local v18    # "cursor":Landroid/database/Cursor;
    .restart local v32    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v33    # "uri":Landroid/net/Uri;
    goto :goto_b

    .line 172
    .end local v18    # "cursor":Landroid/database/Cursor;
    .end local v32    # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v33    # "uri":Landroid/net/Uri;
    .restart local v6    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v9    # "uri":Landroid/net/Uri;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :catch_3
    move-exception v0

    move-object/from16 v32, v6

    move-object/from16 v33, v9

    move-object/from16 v18, v10

    .end local v6    # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v9    # "uri":Landroid/net/Uri;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .restart local v18    # "cursor":Landroid/database/Cursor;
    .restart local v32    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v33    # "uri":Landroid/net/Uri;
    goto :goto_9

    .line 175
    .end local v18    # "cursor":Landroid/database/Cursor;
    .end local v32    # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v33    # "uri":Landroid/net/Uri;
    .restart local v6    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v9    # "uri":Landroid/net/Uri;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :catchall_4
    move-exception v0

    move-object/from16 v32, v6

    move-object/from16 v33, v9

    .end local v6    # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v9    # "uri":Landroid/net/Uri;
    .restart local v32    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v33    # "uri":Landroid/net/Uri;
    goto :goto_b

    .line 172
    .end local v32    # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v33    # "uri":Landroid/net/Uri;
    .restart local v6    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v9    # "uri":Landroid/net/Uri;
    :catch_4
    move-exception v0

    move-object/from16 v32, v6

    move-object/from16 v33, v9

    .end local v6    # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v9    # "uri":Landroid/net/Uri;
    .restart local v32    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v33    # "uri":Landroid/net/Uri;
    goto :goto_9

    .line 175
    .end local v7    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .end local v32    # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v33    # "uri":Landroid/net/Uri;
    .restart local v6    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v9    # "uri":Landroid/net/Uri;
    .restart local v15    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    :catchall_5
    move-exception v0

    move-object/from16 v32, v6

    move-object/from16 v33, v9

    move-object v7, v15

    .end local v6    # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v9    # "uri":Landroid/net/Uri;
    .end local v15    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .restart local v7    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .restart local v32    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v33    # "uri":Landroid/net/Uri;
    goto :goto_b

    .line 172
    .end local v7    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .end local v32    # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v33    # "uri":Landroid/net/Uri;
    .restart local v6    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v9    # "uri":Landroid/net/Uri;
    .restart local v15    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    :catch_5
    move-exception v0

    move-object/from16 v32, v6

    move-object/from16 v33, v9

    move-object v7, v15

    .line 173
    .end local v6    # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v9    # "uri":Landroid/net/Uri;
    .end local v15    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v7    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .restart local v32    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v33    # "uri":Landroid/net/Uri;
    :goto_9
    :try_start_6
    const-string v1, "error reading calendar"

    invoke-static {v5, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 175
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v10, :cond_14

    .line 176
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 179
    :cond_14
    :goto_a
    return-object v7

    .line 175
    :catchall_6
    move-exception v0

    :goto_b
    if-eqz v10, :cond_15

    .line 176
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 178
    :cond_15
    throw v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 87
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCallback="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRegistered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 89
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "u="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 90
    return-void
.end method

.method public setCallback(Lcom/android/server/notification/CalendarTracker$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/server/notification/CalendarTracker$Callback;

    .line 81
    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    if-ne v0, p1, :cond_0

    return-void

    .line 82
    :cond_0
    iput-object p1, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    .line 83
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/notification/CalendarTracker;->setRegistered(Z)V

    .line 84
    return-void
.end method
