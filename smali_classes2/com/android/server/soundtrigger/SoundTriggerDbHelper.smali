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
.field private static final CREATE_TABLE_ST_SOUND_MODEL:Ljava/lang/String; = "CREATE TABLE st_sound_model(model_uuid TEXT PRIMARY KEY,vendor_uuid TEXT,data BLOB,model_version INTEGER )"

.field static final DBG:Z = false

.field private static final NAME:Ljava/lang/String; = "st_sound_model.db"

.field static final TAG:Ljava/lang/String; = "SoundTriggerDbHelper"

.field private static final VERSION:I = 0x2


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    const-string v0, "st_sound_model.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 62
    return-void
.end method


# virtual methods
.method public deleteGenericSoundModel(Ljava/util/UUID;)Z
    .locals 6
    .param p1, "model_uuid"    # Ljava/util/UUID;

    .line 136
    monitor-enter p0

    .line 137
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;->getGenericSoundModel(Ljava/util/UUID;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    move-result-object v0

    .line 138
    .local v0, "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 139
    monitor-exit p0

    return v1

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 143
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "model_uuid=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v0}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getUuid()Ljava/util/UUID;

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

    .line 146
    .local v3, "soundModelClause":Ljava/lang/String;
    :try_start_1
    const-string v4, "st_sound_model"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 148
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit p0

    .line 146
    return v1

    .line 148
    :catchall_0
    move-exception v1

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 149
    nop

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerDbHelper;
    .end local p1    # "model_uuid":Ljava/util/UUID;
    throw v1

    .line 150
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

.method public dump(Ljava/io/PrintWriter;)V
    .locals 14
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 154
    monitor-enter p0

    .line 155
    :try_start_0
    const-string v0, "SELECT  * FROM st_sound_model"

    .line 156
    .local v0, "selectQuery":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 157
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 159
    .local v2, "c":Landroid/database/Cursor;
    :try_start_1
    const-string v3, "  Enrolled GenericSoundModels:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 161
    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    .line 163
    .local v3, "columnNames":[Ljava/lang/String;
    :cond_0
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_6

    aget-object v7, v3, v6

    .line 164
    .local v7, "name":Ljava/lang/String;
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 165
    .local v8, "colNameIndex":I
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getType(I)I

    move-result v9

    .line 166
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

    .line 172
    :cond_1
    const-string v11, "    %s: data blob\n"

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v7, v10, v5

    invoke-virtual {p1, v11, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 173
    goto :goto_1

    .line 168
    :cond_2
    const-string v12, "    %s: %s\n"

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v7, v11, v5

    .line 169
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v10

    .line 168
    invoke-virtual {p1, v12, v11}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 170
    goto :goto_1

    .line 179
    :cond_3
    const-string v12, "    %s: %f\n"

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v7, v11, v5

    .line 180
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getFloat(I)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v10

    .line 179
    invoke-virtual {p1, v12, v11}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 181
    goto :goto_1

    .line 175
    :cond_4
    const-string v12, "    %s: %d\n"

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v7, v11, v5

    .line 176
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v10

    .line 175
    invoke-virtual {p1, v12, v11}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 177
    goto :goto_1

    .line 183
    :cond_5
    const-string v11, "    %s: null\n"

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v7, v10, v5

    invoke-virtual {p1, v11, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 163
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "colNameIndex":I
    .end local v9    # "type":I
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 187
    :cond_6
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 188
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_0

    .line 191
    .end local v3    # "columnNames":[Ljava/lang/String;
    :cond_7
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 192
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 193
    nop

    .line 194
    .end local v0    # "selectQuery":Ljava/lang/String;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "c":Landroid/database/Cursor;
    monitor-exit p0

    .line 195
    return-void

    .line 191
    .restart local v0    # "selectQuery":Ljava/lang/String;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 192
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 193
    nop

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerDbHelper;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    throw v3

    .line 194
    .end local v0    # "selectQuery":Ljava/lang/String;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "c":Landroid/database/Cursor;
    .restart local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerDbHelper;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public getGenericSoundModel(Ljava/util/UUID;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    .locals 8
    .param p1, "model_uuid"    # Ljava/util/UUID;

    .line 106
    monitor-enter p0

    .line 109
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

    .line 112
    .local v0, "selectQuery":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 113
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 115
    .local v3, "c":Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 117
    const-string v2, "data"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 119
    .local v2, "data":[B
    const-string v4, "vendor_uuid"

    .line 120
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 119
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, "vendor_uuid":Ljava/lang/String;
    const-string v5, "model_version"

    .line 122
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 121
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 123
    .local v5, "version":I
    new-instance v6, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v7

    invoke-direct {v6, p1, v7, v2, v5}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;-><init>(Ljava/util/UUID;Ljava/util/UUID;[BI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 129
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit p0

    .line 123
    return-object v6

    .line 128
    .end local v2    # "data":[B
    .end local v4    # "vendor_uuid":Ljava/lang/String;
    .end local v5    # "version":I
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 129
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 130
    nop

    .line 131
    .end local v0    # "selectQuery":Ljava/lang/String;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "c":Landroid/database/Cursor;
    monitor-exit p0

    .line 132
    return-object v2

    .line 128
    .restart local v0    # "selectQuery":Ljava/lang/String;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 129
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 130
    nop

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerDbHelper;
    .end local p1    # "model_uuid":Ljava/util/UUID;
    throw v2

    .line 131
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

    .line 67
    const-string v0, "CREATE TABLE st_sound_model(model_uuid TEXT PRIMARY KEY,vendor_uuid TEXT,data BLOB,model_version INTEGER )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 72
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 74
    const-string v0, "SoundTriggerDbHelper"

    const-string v1, "Adding model version column"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v0, "ALTER TABLE st_sound_model ADD COLUMN model_version INTEGER DEFAULT -1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 77
    add-int/lit8 p2, p2, 0x1

    .line 79
    :cond_0
    return-void
.end method

.method public updateGenericSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)Z
    .locals 6
    .param p1, "soundModel"    # Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    .line 86
    monitor-enter p0

    .line 87
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 88
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 89
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "model_uuid"

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v2, "vendor_uuid"

    .line 91
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getVendorUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v2, "data"

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getData()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 93
    const-string v2, "model_version"

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 96
    :try_start_1
    const-string v2, "st_sound_model"

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

    .line 99
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit p0

    .line 96
    return v2

    .line 99
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 100
    nop

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerDbHelper;
    .end local p1    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    throw v2

    .line 102
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
