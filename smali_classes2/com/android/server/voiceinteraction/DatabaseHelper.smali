.class public Lcom/android/server/voiceinteraction/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;,
        Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelContract;
    }
.end annotation


# static fields
.field private static final CREATE_TABLE_SOUND_MODEL:Ljava/lang/String; = "CREATE TABLE sound_model(model_uuid TEXT,vendor_uuid TEXT,keyphrase_id INTEGER,type INTEGER,data BLOB,recognition_modes INTEGER,locale TEXT,hint_text TEXT,users TEXT,model_version INTEGER,PRIMARY KEY (keyphrase_id,locale,users))"

.field static final DBG:Z = false

.field private static final NAME:Ljava/lang/String; = "sound_model.db"

.field static final TAG:Ljava/lang/String; = "SoundModelDBHelper"

.field private static final VERSION:I = 0x7


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 85
    const-string v0, "sound_model.db"

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 86
    return-void
.end method

.method private static getArrayForCommaSeparatedString(Ljava/lang/String;)[I
    .locals 4
    .param p0, "text"    # Ljava/lang/String;

    .line 370
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    const/4 v0, 0x0

    return-object v0

    .line 373
    :cond_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "usersStr":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [I

    .line 375
    .local v1, "users":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 376
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 375
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 378
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method private static getCommaSeparatedString([I)Ljava/lang/String;
    .locals 3
    .param p0, "users"    # [I

    .line 356
    if-nez p0, :cond_0

    .line 357
    const-string v0, ""

    return-object v0

    .line 359
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 361
    if-eqz v1, :cond_1

    .line 362
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 364
    :cond_1
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 360
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 366
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getValidKeyphraseSoundModelForUser(Ljava/lang/String;I)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .locals 22
    .param p1, "selectQuery"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 262
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    move-object/from16 v2, p1

    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 268
    .local v3, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 270
    :goto_0
    const-string v4, "type"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 271
    .local v4, "type":I
    if-eqz v4, :cond_0

    .line 275
    move/from16 v2, p2

    goto/16 :goto_3

    .line 278
    :cond_0
    const-string v5, "model_uuid"

    .line 279
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 278
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 280
    .local v5, "modelUuid":Ljava/lang/String;
    const-string v6, "SoundModelDBHelper"

    if-nez v5, :cond_1

    .line 281
    :try_start_1
    const-string v7, "Ignoring SoundModel since it doesn\'t specify an ID"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    move/from16 v2, p2

    goto/16 :goto_3

    .line 285
    :cond_1
    const/4 v7, 0x0

    .line 286
    .local v7, "vendorUuidString":Ljava/lang/String;
    const-string v8, "vendor_uuid"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 287
    .local v8, "vendorUuidColumn":I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    .line 288
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 290
    :cond_2
    const-string v9, "keyphrase_id"

    .line 291
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 290
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 292
    .local v11, "keyphraseId":I
    const-string v9, "data"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v19

    .line 293
    .local v19, "data":[B
    const-string v9, "recognition_modes"

    .line 294
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 293
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 295
    .local v12, "recognitionModes":I
    const-string v9, "users"

    .line 296
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 295
    invoke-static {v9}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getArrayForCommaSeparatedString(Ljava/lang/String;)[I

    move-result-object v9

    .line 297
    .local v9, "users":[I
    const-string v10, "locale"

    .line 298
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 297
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v13

    .line 299
    .local v13, "modelLocale":Ljava/util/Locale;
    const-string v10, "hint_text"

    .line 300
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 299
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 301
    .local v14, "text":Ljava/lang/String;
    const-string v10, "model_version"

    .line 302
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 301
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 305
    .local v21, "version":I
    if-nez v9, :cond_3

    .line 307
    const-string v10, "Ignoring SoundModel since it doesn\'t specify users"

    invoke-static {v6, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    move/from16 v2, p2

    goto :goto_3

    .line 311
    :cond_3
    const/4 v6, 0x0

    .line 312
    .local v6, "isAvailableForCurrentUser":Z
    array-length v10, v9

    const/16 v16, 0x0

    move/from16 v15, v16

    :goto_1
    if-ge v15, v10, :cond_5

    aget v17, v9, v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v18, v17

    .line 313
    .local v18, "user":I
    move/from16 v2, p2

    move/from16 v0, v18

    .end local v18    # "user":I
    .local v0, "user":I
    if-ne v2, v0, :cond_4

    .line 314
    const/4 v6, 0x1

    .line 315
    goto :goto_2

    .line 312
    .end local v0    # "user":I
    :cond_4
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p1

    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    move/from16 v2, p2

    .line 318
    :goto_2
    if-nez v6, :cond_7

    .line 322
    nop

    .line 341
    .end local v4    # "type":I
    .end local v5    # "modelUuid":Ljava/lang/String;
    .end local v6    # "isAvailableForCurrentUser":Z
    .end local v7    # "vendorUuidString":Ljava/lang/String;
    .end local v8    # "vendorUuidColumn":I
    .end local v9    # "users":[I
    .end local v11    # "keyphraseId":I
    .end local v12    # "recognitionModes":I
    .end local v13    # "modelLocale":Ljava/util/Locale;
    .end local v14    # "text":Ljava/lang/String;
    .end local v19    # "data":[B
    .end local v21    # "version":I
    :goto_3
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    move-object/from16 v2, p1

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 348
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 327
    .restart local v4    # "type":I
    .restart local v5    # "modelUuid":Ljava/lang/String;
    .restart local v6    # "isAvailableForCurrentUser":Z
    .restart local v7    # "vendorUuidString":Ljava/lang/String;
    .restart local v8    # "vendorUuidColumn":I
    .restart local v9    # "users":[I
    .restart local v11    # "keyphraseId":I
    .restart local v12    # "recognitionModes":I
    .restart local v13    # "modelLocale":Ljava/util/Locale;
    .restart local v14    # "text":Ljava/lang/String;
    .restart local v19    # "data":[B
    .restart local v21    # "version":I
    :cond_7
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    .line 328
    .local v0, "keyphrases":[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;
    new-instance v17, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-object/from16 v10, v17

    move-object v15, v9

    invoke-direct/range {v10 .. v15}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;-><init>(IILjava/util/Locale;Ljava/lang/String;[I)V

    aput-object v17, v0, v16

    .line 330
    const/4 v10, 0x0

    .line 331
    .local v10, "vendorUuid":Ljava/util/UUID;
    if-eqz v7, :cond_8

    .line 332
    invoke-static {v7}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v15

    move-object v10, v15

    .line 334
    :cond_8
    new-instance v15, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    .line 335
    invoke-static {v5}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v17

    move-object/from16 v16, v15

    move-object/from16 v18, v10

    move-object/from16 v20, v0

    invoke-direct/range {v16 .. v21}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;-><init>(Ljava/util/UUID;Ljava/util/UUID;[B[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 340
    .local v15, "model":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    nop

    .line 348
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 349
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 340
    return-object v15

    .line 268
    .end local v0    # "keyphrases":[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;
    .end local v4    # "type":I
    .end local v5    # "modelUuid":Ljava/lang/String;
    .end local v6    # "isAvailableForCurrentUser":Z
    .end local v7    # "vendorUuidString":Ljava/lang/String;
    .end local v8    # "vendorUuidColumn":I
    .end local v9    # "users":[I
    .end local v10    # "vendorUuid":Ljava/util/UUID;
    .end local v11    # "keyphraseId":I
    .end local v12    # "recognitionModes":I
    .end local v13    # "modelLocale":Ljava/util/Locale;
    .end local v14    # "text":Ljava/lang/String;
    .end local v15    # "model":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .end local v19    # "data":[B
    .end local v21    # "version":I
    :cond_9
    move/from16 v2, p2

    .line 348
    :goto_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 349
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 350
    nop

    .line 352
    const/4 v0, 0x0

    return-object v0

    .line 348
    :catchall_1
    move-exception v0

    move/from16 v2, p2

    :goto_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 349
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 350
    throw v0
.end method


# virtual methods
.method public deleteKeyphraseSoundModel(IILjava/lang/String;)Z
    .locals 6
    .param p1, "keyphraseId"    # I
    .param p2, "userHandle"    # I
    .param p3, "bcp47Locale"    # Ljava/lang/String;

    .line 201
    invoke-static {p3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p3

    .line 202
    monitor-enter p0

    .line 203
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getKeyphraseSoundModel(IILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    move-result-object v0

    .line 205
    .local v0, "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 206
    monitor-exit p0

    return v1

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 211
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "model_uuid=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 214
    .local v3, "soundModelClause":Ljava/lang/String;
    :try_start_1
    const-string v4, "sound_model"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 216
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit p0

    .line 214
    return v1

    .line 216
    :catchall_0
    move-exception v1

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 217
    nop

    .end local p0    # "this":Lcom/android/server/voiceinteraction/DatabaseHelper;
    .end local p1    # "keyphraseId":I
    .end local p2    # "userHandle":I
    .end local p3    # "bcp47Locale":Ljava/lang/String;
    throw v1

    .line 218
    .end local v0    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "soundModelClause":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/voiceinteraction/DatabaseHelper;
    .restart local p1    # "keyphraseId":I
    .restart local p2    # "userHandle":I
    .restart local p3    # "bcp47Locale":Ljava/lang/String;
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 14
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 478
    monitor-enter p0

    .line 479
    :try_start_0
    const-string v0, "SELECT  * FROM sound_model"

    .line 480
    .local v0, "selectQuery":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 481
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 483
    .local v2, "c":Landroid/database/Cursor;
    :try_start_1
    const-string v3, "  Enrolled KeyphraseSoundModels:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 484
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 485
    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    .line 487
    .local v3, "columnNames":[Ljava/lang/String;
    :cond_0
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_6

    aget-object v7, v3, v6

    .line 488
    .local v7, "name":Ljava/lang/String;
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 489
    .local v8, "colNameIndex":I
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getType(I)I

    move-result v9

    .line 490
    .local v9, "type":I
    const/4 v10, 0x1

    if-eqz v9, :cond_5

    const/4 v11, 0x2

    if-eq v9, v10, :cond_4

    if-eq v9, v11, :cond_3

    const/4 v12, 0x3

    if-eq v9, v12, :cond_2

    const/4 v11, 0x4

    if-eq v9, v11, :cond_1

    goto :goto_1

    .line 496
    :cond_1
    const-string v11, "    %s: data blob\n"

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v7, v10, v5

    invoke-virtual {p1, v11, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 497
    goto :goto_1

    .line 492
    :cond_2
    const-string v12, "    %s: %s\n"

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v7, v11, v5

    .line 493
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v10

    .line 492
    invoke-virtual {p1, v12, v11}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 494
    goto :goto_1

    .line 503
    :cond_3
    const-string v12, "    %s: %f\n"

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v7, v11, v5

    .line 504
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getFloat(I)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v10

    .line 503
    invoke-virtual {p1, v12, v11}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 505
    goto :goto_1

    .line 499
    :cond_4
    const-string v12, "    %s: %d\n"

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v7, v11, v5

    .line 500
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v10

    .line 499
    invoke-virtual {p1, v12, v11}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 501
    goto :goto_1

    .line 507
    :cond_5
    const-string v11, "    %s: null\n"

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v7, v10, v5

    invoke-virtual {p1, v11, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 487
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "colNameIndex":I
    .end local v9    # "type":I
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 511
    :cond_6
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 512
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_0

    .line 515
    .end local v3    # "columnNames":[Ljava/lang/String;
    :cond_7
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 516
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 517
    nop

    .line 518
    .end local v0    # "selectQuery":Ljava/lang/String;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "c":Landroid/database/Cursor;
    monitor-exit p0

    .line 519
    return-void

    .line 515
    .restart local v0    # "selectQuery":Ljava/lang/String;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 516
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 517
    nop

    .end local p0    # "this":Lcom/android/server/voiceinteraction/DatabaseHelper;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    throw v3

    .line 518
    .end local v0    # "selectQuery":Ljava/lang/String;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "c":Landroid/database/Cursor;
    .restart local p0    # "this":Lcom/android/server/voiceinteraction/DatabaseHelper;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public getKeyphraseSoundModel(IILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .locals 2
    .param p1, "keyphraseId"    # I
    .param p2, "userHandle"    # I
    .param p3, "bcp47Locale"    # Ljava/lang/String;

    .line 230
    invoke-static {p3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p3

    .line 231
    monitor-enter p0

    .line 233
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT  * FROM sound_model WHERE keyphrase_id= \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "locale"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "selectQuery":Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getValidKeyphraseSoundModelForUser(Ljava/lang/String;I)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 237
    .end local v0    # "selectQuery":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getKeyphraseSoundModel(Ljava/lang/String;ILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .locals 2
    .param p1, "keyphrase"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .param p3, "bcp47Locale"    # Ljava/lang/String;

    .line 249
    invoke-static {p3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p3

    .line 250
    monitor-enter p0

    .line 252
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT  * FROM sound_model WHERE hint_text= \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "locale"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "selectQuery":Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getValidKeyphraseSoundModelForUser(Ljava/lang/String;I)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 256
    .end local v0    # "selectQuery":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 91
    const-string v0, "CREATE TABLE sound_model(model_uuid TEXT,vendor_uuid TEXT,keyphrase_id INTEGER,type INTEGER,data BLOB,recognition_modes INTEGER,locale TEXT,hint_text TEXT,users TEXT,model_version INTEGER,PRIMARY KEY (keyphrase_id,locale,users))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 96
    const-string v0, "DROP TABLE IF EXISTS sound_model"

    const/4 v1, 0x4

    const-string v2, "SoundModelDBHelper"

    if-ge p2, v1, :cond_0

    .line 98
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 102
    :cond_0
    if-ne p2, v1, :cond_1

    .line 103
    const-string v1, "Adding vendor UUID column"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-string v1, "ALTER TABLE sound_model ADD COLUMN vendor_uuid TEXT"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 106
    add-int/lit8 p2, p2, 0x1

    .line 109
    :cond_1
    :goto_0
    const/4 v1, 0x6

    const/4 v3, 0x5

    if-ne p2, v3, :cond_7

    .line 114
    const-string v4, "SELECT * FROM sound_model"

    .line 115
    .local v4, "selectQuery":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 116
    .local v5, "c":Landroid/database/Cursor;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v6, "old_records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;>;"
    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_3

    .line 121
    :cond_2
    :try_start_1
    new-instance v7, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;

    invoke-direct {v7, v3, v5}, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;-><init>(ILandroid/database/Cursor;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    goto :goto_1

    .line 122
    :catch_0
    move-exception v7

    .line 123
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v8, "Failed to extract V5 record"

    invoke-static {v2, v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v7, :cond_2

    .line 128
    :cond_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 129
    nop

    .line 130
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 132
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;

    .line 133
    .local v3, "record":Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;
    invoke-virtual {v3, v6}, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->ifViolatesV6PrimaryKeyIsFirstOfAnyDuplicates(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 135
    :try_start_3
    invoke-virtual {v3, v1, p1}, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->writeToDatabase(ILandroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v7

    .line 136
    .local v7, "return_value":J
    const-wide/16 v9, -0x1

    cmp-long v9, v7, v9

    if-nez v9, :cond_4

    .line 137
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Database write failed "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->modelUuid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 142
    .end local v7    # "return_value":J
    :cond_4
    goto :goto_3

    .line 140
    :catch_1
    move-exception v7

    .line 141
    .local v7, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to update V6 record "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v3, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->modelUuid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    .end local v3    # "record":Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_3
    goto :goto_2

    .line 145
    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 128
    :catchall_0
    move-exception v0

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 129
    throw v0

    .line 147
    .end local v4    # "selectQuery":Ljava/lang/String;
    .end local v5    # "c":Landroid/database/Cursor;
    .end local v6    # "old_records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;>;"
    :cond_7
    :goto_4
    if-ne p2, v1, :cond_8

    .line 149
    const-string v0, "Adding model version column"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string v0, "ALTER TABLE sound_model ADD COLUMN model_version INTEGER DEFAULT -1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 152
    add-int/lit8 p2, p2, 0x1

    .line 154
    :cond_8
    return-void
.end method

.method public updateKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)Z
    .locals 9
    .param p1, "soundModel"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    .line 162
    monitor-enter p0

    .line 163
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 164
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 165
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "model_uuid"

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getVendorUuid()Ljava/util/UUID;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 167
    const-string v2, "vendor_uuid"

    .line 168
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getVendorUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 167
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_0
    const-string v2, "type"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 171
    const-string v2, "data"

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getData()[B

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 172
    const-string v2, "model_version"

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 174
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v2

    array-length v2, v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 175
    const-string v2, "keyphrase_id"

    .line 176
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 175
    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 177
    const-string v2, "recognition_modes"

    .line 178
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getRecognitionModes()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 177
    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 179
    const-string v2, "users"

    .line 180
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getUsers()[I

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getCommaSeparatedString([I)Ljava/lang/String;

    move-result-object v5

    .line 179
    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v2, "locale"

    .line 182
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v5

    .line 181
    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v2, "hint_text"

    .line 184
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getText()Ljava/lang/String;

    move-result-object v5

    .line 183
    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 186
    :try_start_1
    const-string v2, "sound_model"

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-virtual {v0, v2, v5, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v7, -0x1

    cmp-long v2, v5, v7

    if-eqz v2, :cond_1

    move v3, v4

    .line 189
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit p0

    .line 186
    return v3

    .line 189
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 190
    nop

    .end local p0    # "this":Lcom/android/server/voiceinteraction/DatabaseHelper;
    .end local p1    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    throw v2

    .line 192
    .restart local p0    # "this":Lcom/android/server/voiceinteraction/DatabaseHelper;
    .restart local p1    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :cond_2
    monitor-exit p0

    return v3

    .line 193
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "values":Landroid/content/ContentValues;
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
