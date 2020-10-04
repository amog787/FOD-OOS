.class public Lcom/android/server/soundtrigger/SoundTriggerDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SoundTriggerDbHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger/SoundTriggerDbHelper$GenericSoundModelContract;
    }
.end annotation


# static fields
.field private static final CREATE_TABLE_ST_SOUND_MODEL:Ljava/lang/String; = "CREATE TABLE st_sound_model(model_uuid TEXT PRIMARY KEY,vendor_uuid TEXT,data BLOB )"

.field static final DBG:Z = false

.field private static final NAME:Ljava/lang/String; = "st_sound_model.db"

.field static final TAG:Ljava/lang/String; = "SoundTriggerDbHelper"

.field private static final VERSION:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    const-string/jumbo v0, "st_sound_model.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 63
    return-void
.end method


# virtual methods
.method public deleteGenericSoundModel(Ljava/util/UUID;)Z
    .locals 6
    .param p1, "model_uuid"    # Ljava/util/UUID;

    .line 129
    monitor-enter p0

    .line 130
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;->getGenericSoundModel(Ljava/util/UUID;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    move-result-object v0

    .line 131
    .local v0, "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 132
    monitor-exit p0

    return v1

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 136
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "model_uuid=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->uuid:Ljava/util/UUID;

    .line 137
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 139
    .local v3, "soundModelClause":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v4, "st_sound_model"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 141
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit p0

    .line 139
    return v1

    .line 141
    :catchall_0
    move-exception v1

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerDbHelper;
    .end local p1    # "model_uuid":Ljava/util/UUID;
    throw v1

    .line 143
    .end local v0    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "soundModelClause":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerDbHelper;
    .restart local p1    # "model_uuid":Ljava/util/UUID;
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public getGenericSoundModel(Ljava/util/UUID;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    .locals 7
    .param p1, "model_uuid"    # Ljava/util/UUID;

    .line 101
    monitor-enter p0

    .line 104
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT  * FROM st_sound_model WHERE model_uuid= \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "selectQuery":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 108
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 110
    .local v3, "c":Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 112
    const-string v2, "data"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 114
    .local v2, "data":[B
    const-string/jumbo v4, "vendor_uuid"

    .line 115
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 114
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 116
    .local v4, "vendor_uuid":Ljava/lang/String;
    new-instance v5, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v6

    invoke-direct {v5, p1, v6, v2}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;-><init>(Ljava/util/UUID;Ljava/util/UUID;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 122
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit p0

    .line 116
    return-object v5

    .line 121
    .end local v2    # "data":[B
    .end local v4    # "vendor_uuid":Ljava/lang/String;
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 122
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 123
    nop

    .line 124
    .end local v0    # "selectQuery":Ljava/lang/String;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "c":Landroid/database/Cursor;
    monitor-exit p0

    .line 125
    return-object v2

    .line 121
    .restart local v0    # "selectQuery":Ljava/lang/String;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 122
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerDbHelper;
    .end local p1    # "model_uuid":Ljava/util/UUID;
    throw v2

    .line 124
    .end local v0    # "selectQuery":Ljava/lang/String;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "c":Landroid/database/Cursor;
    .restart local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerDbHelper;
    .restart local p1    # "model_uuid":Ljava/util/UUID;
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 68
    const-string v0, "CREATE TABLE st_sound_model(model_uuid TEXT PRIMARY KEY,vendor_uuid TEXT,data BLOB )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 74
    const-string v0, "DROP TABLE IF EXISTS st_sound_model"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 76
    return-void
.end method

.method public updateGenericSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)Z
    .locals 6
    .param p1, "soundModel"    # Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    .line 83
    monitor-enter p0

    .line 84
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 85
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 86
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "model_uuid"

    iget-object v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string/jumbo v2, "vendor_uuid"

    iget-object v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->vendorUuid:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v2, "data"

    iget-object v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->data:[B

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 91
    :try_start_1
    const-string/jumbo v2, "st_sound_model"

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 94
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit p0

    .line 91
    return v2

    .line 94
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerDbHelper;
    .end local p1    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    throw v2

    .line 97
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "values":Landroid/content/ContentValues;
    .restart local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerDbHelper;
    .restart local p1    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
