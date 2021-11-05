.class Lcom/android/server/wm/TaskSnapshotLoader;
.super Ljava/lang/Object;
.source "TaskSnapshotLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskSnapshotLoader$PreRLegacySnapshotConfig;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mPersister:Lcom/android/server/wm/TaskSnapshotPersister;


# direct methods
.method constructor <init>(Lcom/android/server/wm/TaskSnapshotPersister;)V
    .locals 0
    .param p1, "persister"    # Lcom/android/server/wm/TaskSnapshotPersister;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotLoader;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    .line 55
    return-void
.end method


# virtual methods
.method getLegacySnapshotConfig(IFZZ)Lcom/android/server/wm/TaskSnapshotLoader$PreRLegacySnapshotConfig;
    .locals 6
    .param p1, "taskWidth"    # I
    .param p2, "legacyScale"    # F
    .param p3, "highResFileExists"    # Z
    .param p4, "loadLowResolutionBitmap"    # Z

    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, "preRLegacyScale":F
    const/4 v1, 0x0

    .line 95
    .local v1, "forceLoadReducedJpeg":Z
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 96
    .local v4, "isPreRLegacySnapshot":Z
    :goto_0
    if-nez v4, :cond_1

    .line 97
    const/4 v2, 0x0

    return-object v2

    .line 99
    :cond_1
    if-eqz v4, :cond_2

    const/4 v5, 0x0

    .line 100
    invoke-static {p2, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 102
    .local v2, "isPreQLegacyProto":Z
    :goto_1
    const/high16 v3, 0x3f000000    # 0.5f

    if-eqz v2, :cond_5

    .line 104
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez p3, :cond_3

    .line 106
    const v0, 0x3f19999a    # 0.6f

    .line 108
    const/4 v1, 0x1

    goto :goto_4

    .line 111
    :cond_3
    if-eqz p4, :cond_4

    goto :goto_2

    :cond_4
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_2
    move v0, v3

    goto :goto_4

    .line 113
    :cond_5
    if-eqz v4, :cond_8

    .line 115
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 116
    move v0, p2

    .line 118
    const/4 v1, 0x1

    goto :goto_4

    .line 121
    :cond_6
    if-eqz p4, :cond_7

    mul-float/2addr v3, p2

    goto :goto_3

    :cond_7
    move v3, p2

    :goto_3
    move v0, v3

    .line 124
    :cond_8
    :goto_4
    new-instance v3, Lcom/android/server/wm/TaskSnapshotLoader$PreRLegacySnapshotConfig;

    invoke-direct {v3, v0, v1}, Lcom/android/server/wm/TaskSnapshotLoader$PreRLegacySnapshotConfig;-><init>(FZ)V

    return-object v3
.end method

.method loadTask(IIZ)Landroid/app/ActivityManager$TaskSnapshot;
    .locals 35
    .param p1, "taskId"    # I
    .param p2, "userId"    # I
    .param p3, "loadLowResolutionBitmap"    # Z

    .line 140
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v15, p3

    const-string v14, "WindowManager"

    iget-object v0, v1, Lcom/android/server/wm/TaskSnapshotLoader;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/TaskSnapshotPersister;->getProtoFile(II)Ljava/io/File;

    move-result-object v19

    .line 141
    .local v19, "protoFile":Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v0

    const/16 v20, 0x0

    if-nez v0, :cond_0

    .line 142
    return-object v20

    .line 145
    :cond_0
    :try_start_0
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v0

    .line 146
    .local v0, "bytes":[B
    invoke-static {v0}, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->parseFrom([B)Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;

    move-result-object v4

    move-object v13, v4

    .line 147
    .local v13, "proto":Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;
    iget-object v4, v1, Lcom/android/server/wm/TaskSnapshotLoader;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/wm/TaskSnapshotPersister;->getHighResolutionBitmapFile(II)Ljava/io/File;

    move-result-object v4

    move-object/from16 v21, v4

    .line 149
    .local v21, "highResBitmap":Ljava/io/File;
    iget v4, v13, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->taskWidth:I

    iget v5, v13, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->legacyScale:F

    .line 150
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v6

    .line 149
    invoke-virtual {v1, v4, v5, v6, v15}, Lcom/android/server/wm/TaskSnapshotLoader;->getLegacySnapshotConfig(IFZZ)Lcom/android/server/wm/TaskSnapshotLoader$PreRLegacySnapshotConfig;

    move-result-object v4

    move-object v12, v4

    .line 152
    .local v12, "legacyConfig":Lcom/android/server/wm/TaskSnapshotLoader$PreRLegacySnapshotConfig;
    const/4 v4, 0x0

    if-eqz v12, :cond_1

    iget-boolean v5, v12, Lcom/android/server/wm/TaskSnapshotLoader$PreRLegacySnapshotConfig;->mForceLoadReducedJpeg:Z

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    move/from16 v22, v5

    .line 154
    .local v22, "forceLoadReducedJpeg":Z
    if-nez v15, :cond_3

    if-eqz v22, :cond_2

    goto :goto_1

    .line 155
    :cond_2
    move-object/from16 v5, v21

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v5, v1, Lcom/android/server/wm/TaskSnapshotLoader;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v5, v2, v3}, Lcom/android/server/wm/TaskSnapshotPersister;->getLowResolutionBitmapFile(II)Ljava/io/File;

    move-result-object v5

    :goto_2
    move-object/from16 v23, v5

    .line 157
    .local v23, "bitmapFile":Ljava/io/File;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    .line 158
    return-object v20

    .line 161
    :cond_4
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v11, v5

    .line 162
    .local v11, "options":Landroid/graphics/BitmapFactory$Options;
    iget-object v5, v1, Lcom/android/server/wm/TaskSnapshotLoader;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v5}, Lcom/android/server/wm/TaskSnapshotPersister;->use16BitFormat()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-boolean v5, v13, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isTranslucent:Z

    if-nez v5, :cond_5

    .line 163
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_3

    .line 164
    :cond_5
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_3
    iput-object v5, v11, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 165
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v11}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v10, v5

    .line 166
    .local v10, "bitmap":Landroid/graphics/Bitmap;
    if-nez v10, :cond_6

    .line 167
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to load bitmap: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-object v20

    .line 171
    :cond_6
    sget-object v5, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v10, v5, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v24, v4

    .line 172
    .local v24, "hwBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 173
    if-nez v24, :cond_7

    .line 174
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create hardware bitmap: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-object v20

    .line 177
    :cond_7
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->createGraphicBufferHandle()Landroid/graphics/GraphicBuffer;

    move-result-object v4

    move-object/from16 v25, v4

    .line 178
    .local v25, "buffer":Landroid/graphics/GraphicBuffer;
    if-nez v25, :cond_8

    .line 179
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to retrieve gralloc buffer for bitmap: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 179
    invoke-static {v14, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-object v20

    .line 184
    :cond_8
    iget-object v4, v13, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->topActivityComponent:Ljava/lang/String;

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    .line 188
    .local v7, "topActivityComponent":Landroid/content/ComponentName;
    if-eqz v12, :cond_9

    .line 189
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, v12, Lcom/android/server/wm/TaskSnapshotLoader$PreRLegacySnapshotConfig;->mScale:F

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 190
    .local v4, "taskWidth":I
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, v12, Lcom/android/server/wm/TaskSnapshotLoader$PreRLegacySnapshotConfig;->mScale:F

    div-float/2addr v5, v6

    float-to-int v5, v5

    .line 191
    .local v5, "taskHeight":I
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    move-object v4, v6

    .line 192
    .end local v5    # "taskHeight":I
    .local v4, "taskSize":Landroid/graphics/Point;
    move-object/from16 v26, v4

    goto :goto_4

    .line 193
    .end local v4    # "taskSize":Landroid/graphics/Point;
    :cond_9
    new-instance v4, Landroid/graphics/Point;

    iget v5, v13, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->taskWidth:I

    iget v6, v13, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->taskHeight:I

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v26, v4

    .line 196
    .local v26, "taskSize":Landroid/graphics/Point;
    :goto_4
    new-instance v27, Landroid/app/ActivityManager$TaskSnapshot;

    iget-wide v5, v13, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->id:J

    .line 197
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v9

    iget v8, v13, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->orientation:I

    iget v4, v13, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->rotation:I

    move-object/from16 v28, v0

    .end local v0    # "bytes":[B
    .local v28, "bytes":[B
    new-instance v0, Landroid/graphics/Rect;

    iget v1, v13, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetLeft:I

    iget v3, v13, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetTop:I

    move/from16 v16, v4

    iget v4, v13, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetRight:I

    move/from16 v17, v8

    iget v8, v13, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetBottom:I

    invoke-direct {v0, v1, v3, v4, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-boolean v1, v13, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isRealSnapshot:Z

    iget v3, v13, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->windowingMode:I

    iget v8, v13, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->systemUiVisibility:I

    iget-boolean v4, v13, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isTranslucent:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v18, v4

    move-object/from16 v4, v27

    move/from16 v29, v8

    move-object/from16 v8, v25

    move-object/from16 v30, v10

    .end local v10    # "bitmap":Landroid/graphics/Bitmap;
    .local v30, "bitmap":Landroid/graphics/Bitmap;
    move/from16 v10, v17

    move-object/from16 v31, v11

    .end local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    .local v31, "options":Landroid/graphics/BitmapFactory$Options;
    move/from16 v11, v16

    move-object/from16 v32, v12

    .end local v12    # "legacyConfig":Lcom/android/server/wm/TaskSnapshotLoader$PreRLegacySnapshotConfig;
    .local v32, "legacyConfig":Lcom/android/server/wm/TaskSnapshotLoader$PreRLegacySnapshotConfig;
    move-object/from16 v12, v26

    move-object/from16 v33, v13

    .end local v13    # "proto":Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;
    .local v33, "proto":Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;
    move-object v13, v0

    move-object/from16 v34, v14

    move/from16 v14, p3

    move v15, v1

    move/from16 v16, v3

    move/from16 v17, v29

    :try_start_1
    invoke-direct/range {v4 .. v18}, Landroid/app/ActivityManager$TaskSnapshot;-><init>(JLandroid/content/ComponentName;Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;IILandroid/graphics/Point;Landroid/graphics/Rect;ZZIIZ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 196
    return-object v27

    .line 201
    .end local v7    # "topActivityComponent":Landroid/content/ComponentName;
    .end local v21    # "highResBitmap":Ljava/io/File;
    .end local v22    # "forceLoadReducedJpeg":Z
    .end local v23    # "bitmapFile":Ljava/io/File;
    .end local v24    # "hwBitmap":Landroid/graphics/Bitmap;
    .end local v25    # "buffer":Landroid/graphics/GraphicBuffer;
    .end local v26    # "taskSize":Landroid/graphics/Point;
    .end local v28    # "bytes":[B
    .end local v30    # "bitmap":Landroid/graphics/Bitmap;
    .end local v31    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v32    # "legacyConfig":Lcom/android/server/wm/TaskSnapshotLoader$PreRLegacySnapshotConfig;
    .end local v33    # "proto":Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;
    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v34, v14

    .line 202
    .local v0, "e":Ljava/io/IOException;
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load task snapshot data for taskId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v34

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-object v20
.end method
