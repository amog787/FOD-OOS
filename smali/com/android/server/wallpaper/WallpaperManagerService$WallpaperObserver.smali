.class Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;
.super Landroid/os/FileObserver;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WallpaperObserver"
.end annotation


# instance fields
.field final mUserId:I

.field final mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field final mWallpaperDir:Ljava/io/File;

.field final mWallpaperFile:Ljava/io/File;

.field final mWallpaperLockFile:Ljava/io/File;

.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 2
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 221
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 222
    iget p1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$000(I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x688

    invoke-direct {p0, p1, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 224
    iget p1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mUserId:I

    .line 225
    iget p1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$000(I)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    .line 226
    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 227
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    const-string/jumbo v1, "wallpaper_orig"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperFile:Ljava/io/File;

    .line 228
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    const-string/jumbo v1, "wallpaper_lock_orig"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperLockFile:Ljava/io/File;

    .line 229
    return-void
.end method

.method private dataForEvent(ZZ)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .locals 4
    .param p1, "sysChanged"    # Z
    .param p2, "lockChanged"    # Z

    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$100(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 234
    if-eqz p2, :cond_0

    .line 235
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$200(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v0, v2

    goto :goto_0

    .line 241
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 237
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 239
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$300(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v0, v2

    .line 241
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    if-eqz v0, :cond_2

    move-object v1, v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    :goto_1
    return-object v1

    .line 241
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 20
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 247
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    if-nez v3, :cond_0

    .line 248
    return-void

    .line 250
    :cond_0
    const/16 v0, 0x80

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v0, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    move v6, v0

    .line 251
    .local v6, "moved":Z
    const/16 v0, 0x8

    if-eq v2, v0, :cond_3

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    move v7, v4

    goto :goto_2

    :cond_3
    :goto_1
    move v7, v5

    .line 252
    .local v7, "written":Z
    :goto_2
    new-instance v8, Ljava/io/File;

    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    invoke-direct {v8, v9, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 256
    .local v8, "changedFile":Ljava/io/File;
    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperFile:Ljava/io/File;

    invoke-virtual {v9, v8}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 257
    .local v9, "sysWallpaperChanged":Z
    iget-object v10, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperLockFile:Ljava/io/File;

    invoke-virtual {v10, v8}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 258
    .local v10, "lockWallpaperChanged":Z
    const/4 v11, 0x0

    .line 259
    .local v11, "notifyColorsWhich":I
    invoke-direct {v1, v9, v10}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->dataForEvent(ZZ)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v15

    .line 271
    .local v15, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v14, 0x2

    if-eqz v6, :cond_4

    if-eqz v10, :cond_4

    .line 278
    invoke-static {v8}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    .line 279
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$400(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    .line 280
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0, v15, v14}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$500(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 281
    return-void

    .line 284
    :cond_4
    iget-object v12, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v12}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$100(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    .line 285
    if-nez v9, :cond_6

    if-eqz v10, :cond_5

    goto :goto_3

    :cond_5
    move-object v4, v15

    goto/16 :goto_7

    .line 286
    :cond_6
    :goto_3
    :try_start_0
    iget-object v12, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v12, v15}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$600(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 287
    iget-object v12, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v12, :cond_8

    if-ne v2, v0, :cond_8

    :try_start_1
    iget-boolean v0, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    move-object v4, v15

    goto/16 :goto_7

    .line 349
    :catchall_0
    move-exception v0

    move-object v4, v15

    goto/16 :goto_8

    .line 290
    :cond_8
    :goto_4
    if-eqz v7, :cond_e

    .line 298
    :try_start_2
    invoke-static {v8}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 299
    if-eqz v6, :cond_9

    .line 306
    :try_start_3
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v12, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v0, v12, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$700(Lcom/android/server/wallpaper/WallpaperManagerService;IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 308
    :cond_9
    :try_start_4
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0, v15}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$800(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 312
    iput-boolean v4, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 313
    if-eqz v9, :cond_a

    .line 315
    :try_start_5
    iget-object v12, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$900(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;

    move-result-object v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v0, 0x1

    const/4 v4, 0x0

    const/16 v17, 0x0

    move v5, v14

    move v14, v0

    move-object/from16 v19, v15

    .end local v15    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .local v19, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    move v15, v4

    move-object/from16 v16, v19

    :try_start_6
    invoke-static/range {v12 .. v17}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$1000(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 317
    or-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 349
    :catchall_1
    move-exception v0

    move-object/from16 v4, v19

    goto :goto_8

    .end local v19    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v15    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_2
    move-exception v0

    move-object v4, v15

    .end local v15    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v19    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    goto :goto_8

    .line 313
    .end local v19    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v15    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_a
    move v5, v14

    move-object/from16 v19, v15

    .line 319
    .end local v15    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v19    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :goto_5
    if-nez v10, :cond_b

    move-object/from16 v4, v19

    .end local v19    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :try_start_7
    iget v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_d

    goto :goto_6

    .end local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v19    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_b
    move-object/from16 v4, v19

    .line 327
    .end local v19    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :goto_6
    if-nez v10, :cond_c

    .line 328
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$200(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    iget v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 331
    :cond_c
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$400(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    .line 332
    or-int/lit8 v0, v11, 0x2

    move v11, v0

    .line 335
    :cond_d
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$1100(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    .line 338
    iget-object v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setComplete:Landroid/app/IWallpaperManagerCallback;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v0, :cond_f

    .line 340
    :try_start_8
    iget-object v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setComplete:Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v0}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 344
    goto :goto_7

    .line 341
    :catch_0
    move-exception v0

    goto :goto_7

    .line 290
    .end local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v15    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_e
    move-object v4, v15

    .line 349
    .end local v15    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_f
    :goto_7
    :try_start_9
    monitor-exit v18
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 352
    if-eqz v11, :cond_10

    .line 353
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0, v4, v11}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$500(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 355
    :cond_10
    return-void

    .line 349
    :catchall_3
    move-exception v0

    goto :goto_8

    .end local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v15    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_4
    move-exception v0

    move-object v4, v15

    .end local v15    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :goto_8
    :try_start_a
    monitor-exit v18
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v0
.end method
