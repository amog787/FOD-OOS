.class Lcom/android/server/wm/TaskSnapshotLoader;
.super Ljava/lang/Object;
.source "TaskSnapshotLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mPersister:Lcom/android/server/wm/TaskSnapshotPersister;


# direct methods
.method constructor <init>(Lcom/android/server/wm/TaskSnapshotPersister;)V
    .locals 0
    .param p1, "persister"    # Lcom/android/server/wm/TaskSnapshotPersister;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotLoader;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    .line 53
    return-void
.end method


# virtual methods
.method loadTask(IIZ)Landroid/app/ActivityManager$TaskSnapshot;
    .locals 27
    .param p1, "taskId"    # I
    .param p2, "userId"    # I
    .param p3, "reducedResolution"    # Z

    .line 67
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    const-string v4, "WindowManager"

    iget-object v0, v1, Lcom/android/server/wm/TaskSnapshotLoader;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/TaskSnapshotPersister;->getProtoFile(II)Ljava/io/File;

    move-result-object v5

    .line 72
    .local v5, "protoFile":Ljava/io/File;
    const/16 v18, 0x0

    .line 74
    .end local p3    # "reducedResolution":Z
    .local v18, "reducedResolution":Z
    if-eqz v18, :cond_0

    .line 75
    iget-object v0, v1, Lcom/android/server/wm/TaskSnapshotLoader;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/TaskSnapshotPersister;->getReducedResolutionBitmapFile(II)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, v1, Lcom/android/server/wm/TaskSnapshotLoader;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/TaskSnapshotPersister;->getBitmapFile(II)Ljava/io/File;

    move-result-object v0

    :goto_0
    move-object/from16 v19, v0

    .line 77
    .local v19, "bitmapFile":Ljava/io/File;
    const/16 v20, 0x0

    if-eqz v19, :cond_6

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 81
    :cond_1
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v0

    .line 82
    .local v0, "bytes":[B
    invoke-static {v0}, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->parseFrom([B)Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;

    move-result-object v6

    move-object v15, v6

    .line 83
    .local v15, "proto":Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v14, v6

    .line 84
    .local v14, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v6, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    iput-object v6, v14, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 85
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v14}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object/from16 v21, v6

    .line 86
    .local v21, "bitmap":Landroid/graphics/Bitmap;
    if-nez v21, :cond_2

    .line 87
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to load bitmap: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-object v20

    .line 90
    :cond_2
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->createGraphicBufferHandle()Landroid/graphics/GraphicBuffer;

    move-result-object v6

    move-object/from16 v22, v6

    .line 91
    .local v22, "buffer":Landroid/graphics/GraphicBuffer;
    if-nez v22, :cond_3

    .line 92
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to retrieve gralloc buffer for bitmap: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 92
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-object v20

    .line 96
    :cond_3
    iget-object v6, v15, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->topActivityComponent:Ljava/lang/String;

    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    .line 99
    .local v7, "topActivityComponent":Landroid/content/ComponentName;
    if-eqz v18, :cond_4

    iget-object v6, v1, Lcom/android/server/wm/TaskSnapshotLoader;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v6}, Lcom/android/server/wm/TaskSnapshotPersister;->getReducedScale()F

    move-result v6

    goto :goto_1

    :cond_4
    const/high16 v6, 0x3f800000    # 1.0f

    :goto_1
    move/from16 v23, v6

    .line 100
    .local v23, "legacyScale":F
    iget v6, v15, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->scale:F

    const/4 v8, 0x0

    invoke-static {v6, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-eqz v6, :cond_5

    iget v6, v15, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->scale:F

    move v13, v6

    goto :goto_2

    :cond_5
    move/from16 v13, v23

    .line 101
    .local v13, "scale":F
    :goto_2
    new-instance v24, Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v9

    iget v10, v15, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->orientation:I

    new-instance v11, Landroid/graphics/Rect;

    iget v6, v15, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetLeft:I

    iget v8, v15, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetTop:I

    iget v12, v15, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetRight:I

    move-object/from16 p3, v0

    .end local v0    # "bytes":[B
    .local p3, "bytes":[B
    iget v0, v15, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetBottom:I

    invoke-direct {v11, v6, v8, v12, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-boolean v0, v15, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isRealSnapshot:Z

    iget v12, v15, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->windowingMode:I

    iget v8, v15, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->systemUiVisibility:I

    iget-boolean v6, v15, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isTranslucent:Z

    move/from16 v17, v6

    move-object/from16 v6, v24

    move/from16 v16, v8

    move-object/from16 v8, v22

    move/from16 v25, v12

    move/from16 v12, v18

    move-object/from16 v26, v14

    .end local v14    # "options":Landroid/graphics/BitmapFactory$Options;
    .local v26, "options":Landroid/graphics/BitmapFactory$Options;
    move v14, v0

    move-object v0, v15

    .end local v15    # "proto":Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;
    .local v0, "proto":Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;
    move/from16 v15, v25

    invoke-direct/range {v6 .. v17}, Landroid/app/ActivityManager$TaskSnapshot;-><init>(Landroid/content/ComponentName;Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;ILandroid/graphics/Rect;ZFZIIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v24

    .line 106
    .end local v0    # "proto":Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;
    .end local v7    # "topActivityComponent":Landroid/content/ComponentName;
    .end local v13    # "scale":F
    .end local v21    # "bitmap":Landroid/graphics/Bitmap;
    .end local v22    # "buffer":Landroid/graphics/GraphicBuffer;
    .end local v23    # "legacyScale":F
    .end local v26    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local p3    # "bytes":[B
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to load task snapshot data for taskId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-object v20

    .line 78
    .end local v0    # "e":Ljava/io/IOException;
    :cond_6
    :goto_3
    return-object v20
.end method
