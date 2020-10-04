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
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 94
    .local v0, "start":J
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 95
    .local v2, "rt":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    const-string v3, "_id"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v6

    .line 96
    .local v6, "projection":[Ljava/lang/String;
    const-string v3, "calendar_access_level >= 500 AND sync_events = 1"

    .line 99
    .local v3, "selection":Ljava/lang/String;
    const/4 v10, 0x0

    .line 101
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "calendar_access_level >= 500 AND sync_events = 1"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v10, v4

    .line 103
    :goto_0
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 104
    const/4 v4, 0x0

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 114
    :cond_0
    if-eqz v10, :cond_1

    .line 115
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 114
    :catchall_0
    move-exception v4

    goto :goto_3

    .line 109
    :catch_0
    move-exception v4

    .line 110
    .local v4, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    .end local v4    # "e":Landroid/database/sqlite/SQLiteException;
    if-eqz v10, :cond_1

    .line 115
    goto :goto_1

    .line 118
    :cond_1
    :goto_2
    sget-boolean v4, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCalendarsWithAccess took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ConditionProviders.CT"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_2
    return-object v2

    .line 114
    :goto_3
    if-eqz v10, :cond_3

    .line 115
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v4
.end method

.method private meetsAttendee(Landroid/service/notification/ZenModeConfig$EventInfo;ILjava/lang/String;)Z
    .locals 21
    .param p1, "filter"    # Landroid/service/notification/ZenModeConfig$EventInfo;
    .param p2, "eventId"    # I
    .param p3, "email"    # Ljava/lang/String;

    .line 187
    move-object/from16 v1, p3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 188
    .local v2, "start":J
    const-string v10, "event_id = ? AND attendeeEmail = ?"

    .line 189
    .local v10, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v8, v0, [Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x0

    aput-object v4, v8, v11

    const/4 v12, 0x1

    aput-object v1, v8, v12

    .line 194
    .local v8, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v13, p0

    iget-object v4, v13, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/server/notification/CalendarTracker;->ATTENDEE_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    move-object v7, v10

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 197
    .local v4, "cursor":Landroid/database/Cursor;
    const-string/jumbo v5, "meetsAttendee took "

    const-string v6, "ConditionProviders.CT"

    if-eqz v4, :cond_5

    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-nez v7, :cond_0

    move-object/from16 v17, v8

    move-object/from16 v20, v10

    move/from16 v8, p2

    goto/16 :goto_3

    .line 201
    :cond_0
    const/4 v7, 0x0

    .line 202
    .local v7, "rt":Z
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 203
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 204
    .local v14, "rowEventId":J
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 205
    .local v9, "rowEmail":Ljava/lang/String;
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    move/from16 v17, v16

    .line 206
    .local v17, "status":I
    move-object/from16 v12, p1

    iget v11, v12, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    move/from16 v0, v17

    .end local v17    # "status":I
    .local v0, "status":I
    invoke-static {v11, v0}, Lcom/android/server/notification/CalendarTracker;->meetsReply(II)Z

    move-result v11

    .line 207
    .local v11, "meetsReply":Z
    sget-boolean v17, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v17, :cond_1

    move-object/from16 v17, v8

    .end local v8    # "selectionArgs":[Ljava/lang/String;
    .local v17, "selectionArgs":[Ljava/lang/String;
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v20, v10

    .end local v10    # "selection":Ljava/lang/String;
    .local v20, "selection":Ljava/lang/String;
    :try_start_2
    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "status=%s, meetsReply=%s"

    const/4 v12, 0x2

    new-array v13, v12, [Ljava/lang/Object;

    .line 210
    invoke-static {v0}, Lcom/android/server/notification/CalendarTracker;->attendeeStatusToString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v18, 0x0

    aput-object v19, v13, v18

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    const/16 v16, 0x1

    aput-object v19, v13, v16

    .line 209
    invoke-static {v10, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 207
    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 217
    .end local v0    # "status":I
    .end local v7    # "rt":Z
    .end local v9    # "rowEmail":Ljava/lang/String;
    .end local v11    # "meetsReply":Z
    .end local v14    # "rowEventId":J
    :catchall_0
    move-exception v0

    move/from16 v8, p2

    goto/16 :goto_4

    .end local v20    # "selection":Ljava/lang/String;
    .restart local v10    # "selection":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v20, v10

    move/from16 v8, p2

    .end local v10    # "selection":Ljava/lang/String;
    .restart local v20    # "selection":Ljava/lang/String;
    goto/16 :goto_4

    .line 207
    .end local v17    # "selectionArgs":[Ljava/lang/String;
    .end local v20    # "selection":Ljava/lang/String;
    .restart local v0    # "status":I
    .restart local v7    # "rt":Z
    .restart local v8    # "selectionArgs":[Ljava/lang/String;
    .restart local v9    # "rowEmail":Ljava/lang/String;
    .restart local v10    # "selection":Ljava/lang/String;
    .restart local v11    # "meetsReply":Z
    .restart local v14    # "rowEventId":J
    :cond_1
    move-object/from16 v17, v8

    move-object/from16 v20, v10

    const/4 v12, 0x2

    const/16 v18, 0x0

    .line 211
    .end local v8    # "selectionArgs":[Ljava/lang/String;
    .end local v10    # "selection":Ljava/lang/String;
    .restart local v17    # "selectionArgs":[Ljava/lang/String;
    .restart local v20    # "selection":Ljava/lang/String;
    :goto_1
    move/from16 v8, p2

    int-to-long v12, v8

    cmp-long v10, v14, v12

    if-nez v10, :cond_2

    :try_start_3
    invoke-static {v9, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v10, :cond_2

    if-eqz v11, :cond_2

    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    move/from16 v10, v18

    .line 213
    .local v10, "eventMeets":Z
    :goto_2
    or-int/2addr v7, v10

    .line 214
    .end local v0    # "status":I
    .end local v9    # "rowEmail":Ljava/lang/String;
    .end local v10    # "eventMeets":Z
    .end local v11    # "meetsReply":Z
    .end local v14    # "rowEventId":J
    move-object/from16 v13, p0

    move-object/from16 v8, v17

    move/from16 v11, v18

    move-object/from16 v10, v20

    const/4 v0, 0x2

    const/4 v12, 0x1

    goto/16 :goto_0

    .line 202
    .end local v17    # "selectionArgs":[Ljava/lang/String;
    .end local v20    # "selection":Ljava/lang/String;
    .restart local v8    # "selectionArgs":[Ljava/lang/String;
    .local v10, "selection":Ljava/lang/String;
    :cond_3
    move-object/from16 v17, v8

    move-object/from16 v20, v10

    move/from16 v8, p2

    .line 215
    .end local v8    # "selectionArgs":[Ljava/lang/String;
    .end local v10    # "selection":Ljava/lang/String;
    .restart local v17    # "selectionArgs":[Ljava/lang/String;
    .restart local v20    # "selection":Ljava/lang/String;
    nop

    .line 217
    nop

    .line 218
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 220
    sget-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v2

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_4
    return v7

    .line 217
    .end local v7    # "rt":Z
    .end local v17    # "selectionArgs":[Ljava/lang/String;
    .end local v20    # "selection":Ljava/lang/String;
    .restart local v8    # "selectionArgs":[Ljava/lang/String;
    .restart local v10    # "selection":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v17, v8

    move-object/from16 v20, v10

    move/from16 v8, p2

    .end local v8    # "selectionArgs":[Ljava/lang/String;
    .end local v10    # "selection":Ljava/lang/String;
    .restart local v17    # "selectionArgs":[Ljava/lang/String;
    .restart local v20    # "selection":Ljava/lang/String;
    goto :goto_4

    .line 197
    .end local v17    # "selectionArgs":[Ljava/lang/String;
    .end local v20    # "selection":Ljava/lang/String;
    .restart local v8    # "selectionArgs":[Ljava/lang/String;
    .restart local v10    # "selection":Ljava/lang/String;
    :cond_5
    move-object/from16 v17, v8

    move-object/from16 v20, v10

    move/from16 v8, p2

    .line 198
    .end local v8    # "selectionArgs":[Ljava/lang/String;
    .end local v10    # "selection":Ljava/lang/String;
    .restart local v17    # "selectionArgs":[Ljava/lang/String;
    .restart local v20    # "selection":Ljava/lang/String;
    :goto_3
    :try_start_4
    sget-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "No attendees found"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 199
    :cond_6
    nop

    .line 217
    if-eqz v4, :cond_7

    .line 218
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 220
    :cond_7
    sget-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v2

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_8
    const/4 v0, 0x1

    return v0

    .line 217
    :catchall_3
    move-exception v0

    :goto_4
    if-eqz v4, :cond_9

    .line 218
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 220
    :cond_9
    sget-boolean v7, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v7, :cond_a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v2

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
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

    .line 125
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    const-string v5, "ConditionProviders.CT"

    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 126
    .local v6, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 127
    const-wide/32 v7, 0x5265c00

    add-long v9, v3, v7

    invoke-static {v6, v9, v10}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 128
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    .line 129
    .local v9, "uri":Landroid/net/Uri;
    iget-object v0, v1, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v13, Lcom/android/server/notification/CalendarTracker;->INSTANCE_PROJECTION:[Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v16, "begin ASC"

    move-object v12, v9

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 131
    .local v10, "cursor":Landroid/database/Cursor;
    new-instance v0, Lcom/android/server/notification/CalendarTracker$CheckEventResult;

    invoke-direct {v0}, Lcom/android/server/notification/CalendarTracker$CheckEventResult;-><init>()V

    move-object v11, v0

    .line 132
    .local v11, "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    add-long/2addr v7, v3

    iput-wide v7, v11, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    .line 134
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/CalendarTracker;->getCalendarsWithAccess()Landroid/util/ArraySet;

    move-result-object v0

    .line 135
    .local v0, "calendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :goto_0
    if-eqz v10, :cond_12

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 136
    const/4 v7, 0x0

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 137
    .local v12, "begin":J
    const/4 v8, 0x1

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 138
    .local v14, "end":J
    const/4 v7, 0x2

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 139
    .local v17, "title":Ljava/lang/String;
    const/4 v7, 0x3

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v7, 0x1

    if-ne v8, v7, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    .line 140
    .local v7, "calendarVisible":Z
    :goto_1
    const/4 v8, 0x4

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    move/from16 v22, v21

    .line 141
    .local v22, "eventId":I
    const/4 v8, 0x5

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v24, v23

    .line 142
    .local v24, "name":Ljava/lang/String;
    const/4 v8, 0x6

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v26, v25

    .line 143
    .local v26, "owner":Ljava/lang/String;
    const/4 v8, 0x7

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    .line 144
    .local v27, "calendarId":J
    const/16 v8, 0x8

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v30, v29

    .line 145
    .local v30, "availability":I
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    .line 146
    .local v8, "canAccessCal":Z
    sget-boolean v31, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v31, :cond_1

    .line 147
    move-object/from16 v31, v0

    .end local v0    # "calendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .local v31, "calendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    const-string/jumbo v0, "title=%s time=%s-%s vis=%s availability=%s eventId=%s name=%s owner=%s calId=%s canAccessCal=%s"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v32, v6

    .end local v6    # "uriBuilder":Landroid/net/Uri$Builder;
    .local v32, "uriBuilder":Landroid/net/Uri$Builder;
    const/16 v6, 0xa

    :try_start_1
    new-array v6, v6, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v17, v6, v16
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v33, v9

    .end local v9    # "uri":Landroid/net/Uri;
    .local v33, "uri":Landroid/net/Uri;
    :try_start_2
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v12, v13}, Ljava/util/Date;-><init>(J)V

    const/16 v19, 0x1

    aput-object v9, v6, v19

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v14, v15}, Ljava/util/Date;-><init>(J)V

    const/16 v18, 0x2

    aput-object v9, v6, v18

    .line 149
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/16 v18, 0x3

    aput-object v9, v6, v18

    .line 150
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
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v18, v10

    move-object/from16 v10, v26

    const/16 v20, 0x7

    .end local v26    # "owner":Ljava/lang/String;
    .local v10, "owner":Ljava/lang/String;
    .local v18, "cursor":Landroid/database/Cursor;
    :try_start_3
    aput-object v10, v6, v20

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const/16 v21, 0x8

    aput-object v20, v6, v21

    const/16 v20, 0x9

    .line 151
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    aput-object v21, v6, v20

    .line 147
    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 179
    .end local v7    # "calendarVisible":Z
    .end local v8    # "canAccessCal":Z
    .end local v9    # "name":Ljava/lang/String;
    .end local v12    # "begin":J
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
    goto/16 :goto_c

    .line 176
    .end local v18    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    move-object/from16 v18, v10

    .end local v10    # "cursor":Landroid/database/Cursor;
    .restart local v18    # "cursor":Landroid/database/Cursor;
    goto/16 :goto_a

    .line 179
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
    goto/16 :goto_c

    .line 176
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
    goto/16 :goto_a

    .line 146
    .end local v18    # "cursor":Landroid/database/Cursor;
    .end local v32    # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v33    # "uri":Landroid/net/Uri;
    .restart local v0    # "calendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v6    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v7    # "calendarVisible":Z
    .restart local v8    # "canAccessCal":Z
    .restart local v9    # "uri":Landroid/net/Uri;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "begin":J
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

    .line 153
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
    cmp-long v0, v3, v12

    if-ltz v0, :cond_2

    cmp-long v0, v3, v14

    if-gez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    move/from16 v0, v16

    .line 154
    .local v0, "meetsTime":Z
    :goto_3
    if-eqz v7, :cond_6

    if-eqz v8, :cond_6

    iget-object v6, v2, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    if-nez v6, :cond_4

    iget-object v6, v2, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    if-eqz v6, :cond_3

    goto :goto_4

    :cond_3
    move/from16 v20, v7

    goto :goto_5

    :cond_4
    :goto_4
    iget-object v6, v2, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    .line 156
    move/from16 v20, v7

    .end local v7    # "calendarVisible":Z
    .local v20, "calendarVisible":Z
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, v2, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    .line 157
    invoke-static {v6, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_5
    :goto_5
    const/4 v6, 0x1

    goto :goto_6

    .line 176
    .end local v0    # "meetsTime":Z
    .end local v8    # "canAccessCal":Z
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "owner":Ljava/lang/String;
    .end local v12    # "begin":J
    .end local v14    # "end":J
    .end local v17    # "title":Ljava/lang/String;
    .end local v20    # "calendarVisible":Z
    .end local v22    # "eventId":I
    .end local v27    # "calendarId":J
    .end local v30    # "availability":I
    .end local v31    # "calendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :catch_2
    move-exception v0

    goto/16 :goto_a

    .line 154
    .restart local v0    # "meetsTime":Z
    .restart local v7    # "calendarVisible":Z
    .restart local v8    # "canAccessCal":Z
    .restart local v9    # "name":Ljava/lang/String;
    .restart local v10    # "owner":Ljava/lang/String;
    .restart local v12    # "begin":J
    .restart local v14    # "end":J
    .restart local v17    # "title":Ljava/lang/String;
    .restart local v22    # "eventId":I
    .restart local v27    # "calendarId":J
    .restart local v30    # "availability":I
    .restart local v31    # "calendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :cond_6
    move/from16 v20, v7

    .line 157
    .end local v7    # "calendarVisible":Z
    .restart local v20    # "calendarVisible":Z
    :cond_7
    move/from16 v6, v16

    .line 158
    .local v6, "meetsCalendar":Z
    :goto_6
    move/from16 v21, v8

    move/from16 v7, v30

    const/4 v8, 0x1

    .end local v8    # "canAccessCal":Z
    .end local v30    # "availability":I
    .local v7, "availability":I
    .local v21, "canAccessCal":Z
    if-eq v7, v8, :cond_8

    const/16 v16, 0x1

    :cond_8
    move/from16 v8, v16

    .line 159
    .local v8, "meetsAvailability":Z
    if-eqz v6, :cond_10

    if-eqz v8, :cond_10

    .line 160
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

    .line 161
    .end local v6    # "meetsCalendar":Z
    .restart local v16    # "meetsCalendar":Z
    :goto_7
    move/from16 v6, v22

    .end local v22    # "eventId":I
    .local v6, "eventId":I
    invoke-direct {v1, v2, v6, v10}, Lcom/android/server/notification/CalendarTracker;->meetsAttendee(Landroid/service/notification/ZenModeConfig$EventInfo;ILjava/lang/String;)Z

    move-result v22

    .line 162
    .local v22, "meetsAttendee":Z
    if-eqz v22, :cond_f

    .line 163
    sget-boolean v23, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v23, :cond_a

    const-string v1, "    MEETS ATTENDEE"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_a
    if-eqz v0, :cond_c

    .line 165
    sget-boolean v1, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v1, :cond_b

    const-string v1, "      MEETS TIME"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_b
    const/4 v1, 0x1

    iput-boolean v1, v11, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    .line 168
    :cond_c
    cmp-long v1, v12, v3

    if-lez v1, :cond_d

    move/from16 v19, v0

    .end local v0    # "meetsTime":Z
    .local v19, "meetsTime":Z
    iget-wide v0, v11, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    cmp-long v0, v12, v0

    if-gez v0, :cond_e

    .line 169
    iput-wide v12, v11, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    goto :goto_8

    .line 168
    .end local v19    # "meetsTime":Z
    .restart local v0    # "meetsTime":Z
    :cond_d
    move/from16 v19, v0

    .line 170
    .end local v0    # "meetsTime":Z
    .restart local v19    # "meetsTime":Z
    :cond_e
    cmp-long v0, v14, v3

    if-lez v0, :cond_11

    iget-wide v0, v11, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    cmp-long v0, v14, v0

    if-gez v0, :cond_11

    .line 171
    iput-wide v14, v11, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_8

    .line 162
    .end local v19    # "meetsTime":Z
    .restart local v0    # "meetsTime":Z
    :cond_f
    move/from16 v19, v0

    .end local v0    # "meetsTime":Z
    .restart local v19    # "meetsTime":Z
    goto :goto_8

    .line 159
    .end local v16    # "meetsCalendar":Z
    .end local v19    # "meetsTime":Z
    .restart local v0    # "meetsTime":Z
    .local v6, "meetsCalendar":Z
    .local v22, "eventId":I
    :cond_10
    move/from16 v19, v0

    move/from16 v16, v6

    move/from16 v6, v22

    .line 175
    .end local v0    # "meetsTime":Z
    .end local v6    # "meetsCalendar":Z
    .end local v7    # "availability":I
    .end local v8    # "meetsAvailability":Z
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "owner":Ljava/lang/String;
    .end local v12    # "begin":J
    .end local v14    # "end":J
    .end local v17    # "title":Ljava/lang/String;
    .end local v20    # "calendarVisible":Z
    .end local v21    # "canAccessCal":Z
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

    .line 135
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

    .line 179
    .end local v0    # "calendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v6    # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v9    # "uri":Landroid/net/Uri;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .restart local v18    # "cursor":Landroid/database/Cursor;
    .restart local v32    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v33    # "uri":Landroid/net/Uri;
    if-eqz v18, :cond_13

    .line 180
    :goto_9
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto :goto_b

    .line 179
    .end local v18    # "cursor":Landroid/database/Cursor;
    .end local v32    # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v33    # "uri":Landroid/net/Uri;
    .restart local v6    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v9    # "uri":Landroid/net/Uri;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :catchall_2
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
    goto :goto_c

    .line 176
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

    .line 177
    .end local v6    # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v9    # "uri":Landroid/net/Uri;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v18    # "cursor":Landroid/database/Cursor;
    .restart local v32    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v33    # "uri":Landroid/net/Uri;
    :goto_a
    :try_start_4
    const-string v1, "error reading calendar"

    invoke-static {v5, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 179
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v18, :cond_13

    .line 180
    goto :goto_9

    .line 183
    :cond_13
    :goto_b
    return-object v11

    .line 179
    :catchall_3
    move-exception v0

    :goto_c
    if-eqz v18, :cond_14

    .line 180
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_14
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
    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/notification/CalendarTracker;->setRegistered(Z)V

    .line 84
    return-void
.end method
