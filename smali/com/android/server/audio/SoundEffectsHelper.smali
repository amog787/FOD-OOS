.class Lcom/android/server/audio/SoundEffectsHelper;
.super Ljava/lang/Object;
.source "SoundEffectsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;,
        Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;,
        Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;,
        Lcom/android/server/audio/SoundEffectsHelper$Resource;,
        Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;
    }
.end annotation


# static fields
.field private static final ASSET_FILE_VERSION:Ljava/lang/String; = "1.0"

.field private static final ATTR_ASSET_FILE:Ljava/lang/String; = "file"

.field private static final ATTR_ASSET_ID:Ljava/lang/String; = "id"

.field private static final ATTR_GROUP_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final EFFECT_NOT_IN_SOUND_POOL:I = 0x0

.field private static final GROUP_TOUCH_SOUNDS:Ljava/lang/String; = "touch_sounds"

.field private static final MSG_LOAD_EFFECTS:I = 0x0

.field private static final MSG_LOAD_EFFECTS_TIMEOUT:I = 0x3

.field private static final MSG_PLAY_EFFECT:I = 0x2

.field private static final MSG_UNLOAD_EFFECTS:I = 0x1

.field private static final NUM_SOUNDPOOL_CHANNELS:I = 0x4

.field private static final SOUND_EFFECTS_LOAD_TIMEOUT_MS:I = 0x3a98

.field private static final SOUND_EFFECTS_PATH:Ljava/lang/String; = "/media/audio/ui/"

.field private static final TAG:Ljava/lang/String; = "AS.SfxHelper"

.field private static final TAG_ASSET:Ljava/lang/String; = "asset"

.field private static final TAG_AUDIO_ASSETS:Ljava/lang/String; = "audio_assets"

.field private static final TAG_GROUP:Ljava/lang/String; = "group"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEffects:[I

.field private final mResources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/audio/SoundEffectsHelper$Resource;",
            ">;"
        }
    .end annotation
.end field

.field private final mSfxAttenuationDb:I

.field private mSfxHandler:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

.field private final mSfxLogger:Lcom/android/server/audio/AudioEventLogger;

.field private mSfxWorker:Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolLoader:Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/android/server/audio/AudioEventLogger;

    const/16 v1, 0x14

    const-string v2, "Sound Effects Loading"

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxLogger:Lcom/android/server/audio/AudioEventLogger;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    .line 96
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mEffects:[I

    .line 101
    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mContext:Landroid/content/Context;

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxAttenuationDb:I

    .line 104
    invoke-direct {p0}, Lcom/android/server/audio/SoundEffectsHelper;->startWorker()V

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/audio/SoundEffectsHelper;)Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/SoundEffectsHelper;

    .line 54
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPoolLoader:Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/audio/SoundEffectsHelper;Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;)Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/SoundEffectsHelper;
    .param p1, "x1"    # Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    .line 54
    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPoolLoader:Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    return-object p1
.end method

.method static synthetic access$100(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .line 54
    invoke-static {p0}, Lcom/android/server/audio/SoundEffectsHelper;->cleanupPlayer(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/audio/SoundEffectsHelper;Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;)Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/SoundEffectsHelper;
    .param p1, "x1"    # Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    .line 54
    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxHandler:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/audio/SoundEffectsHelper;Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/SoundEffectsHelper;
    .param p1, "x1"    # Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;

    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/audio/SoundEffectsHelper;->onLoadSoundEffects(Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/audio/SoundEffectsHelper;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/SoundEffectsHelper;

    .line 54
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/audio/SoundEffectsHelper;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/SoundEffectsHelper;

    .line 54
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/audio/SoundEffectsHelper;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/SoundEffectsHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/audio/SoundEffectsHelper;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/audio/SoundEffectsHelper;I)Lcom/android/server/audio/SoundEffectsHelper$Resource;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/SoundEffectsHelper;
    .param p1, "x1"    # I

    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/audio/SoundEffectsHelper;->findResourceBySampleId(I)Lcom/android/server/audio/SoundEffectsHelper$Resource;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/audio/SoundEffectsHelper;Lcom/android/server/audio/SoundEffectsHelper$Resource;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/SoundEffectsHelper;
    .param p1, "x1"    # Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/audio/SoundEffectsHelper;->getResourceFilePath(Lcom/android/server/audio/SoundEffectsHelper$Resource;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static cleanupPlayer(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p0, "mp"    # Landroid/media/MediaPlayer;

    .line 291
    if-eqz p0, :cond_0

    .line 293
    :try_start_0
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->stop()V

    .line 294
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    goto :goto_0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "ex":Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer IllegalStateException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.SfxHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    :cond_0
    :goto_0
    return-void
.end method

.method private findOrAddResourceByFileName(Ljava/lang/String;)I
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;

    .line 401
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 402
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    iget-object v1, v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 403
    return v0

    .line 401
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 406
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 407
    .local v0, "result":I
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    new-instance v2, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    invoke-direct {v2, p1}, Lcom/android/server/audio/SoundEffectsHelper$Resource;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    return v0
.end method

.method private findResourceBySampleId(I)Lcom/android/server/audio/SoundEffectsHelper$Resource;
    .locals 3
    .param p1, "sampleId"    # I

    .line 412
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 413
    .local v1, "res":Lcom/android/server/audio/SoundEffectsHelper$Resource;
    iget v2, v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    if-ne v2, p1, :cond_0

    .line 414
    return-object v1

    .line 416
    .end local v1    # "res":Lcom/android/server/audio/SoundEffectsHelper$Resource;
    :cond_0
    goto :goto_0

    .line 417
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getResourceFilePath(Lcom/android/server/audio/SoundEffectsHelper$Resource;)Ljava/lang/String;
    .locals 4
    .param p1, "res"    # Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/media/audio/ui/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "filePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_0

    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    :cond_0
    return-object v0
.end method

.method private loadTouchSoundAssetDefaults()V
    .locals 4

    .line 323
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 324
    .local v0, "defaultResourceIdx":I
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    new-instance v2, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    const-string v3, "Effect_Tick.ogg"

    invoke-direct {v2, v3}, Lcom/android/server/audio/SoundEffectsHelper$Resource;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mEffects:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 326
    aput v0, v2, v1

    .line 325
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 328
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private loadTouchSoundAssets()V
    .locals 11

    .line 331
    const-string v0, "AS.SfxHelper"

    const/4 v1, 0x0

    .line 334
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    iget-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 335
    return-void

    .line 338
    :cond_0
    invoke-direct {p0}, Lcom/android/server/audio/SoundEffectsHelper;->loadTouchSoundAssetDefaults()V

    .line 341
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1170001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    move-object v1, v2

    .line 343
    const-string v2, "audio_assets"

    invoke-static {v1, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 344
    const-string/jumbo v2, "version"

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 345
    .local v2, "version":Ljava/lang/String;
    const/4 v4, 0x0

    .line 347
    .local v4, "inTouchSoundsGroup":Z
    const-string v5, "1.0"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 349
    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 350
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 351
    .local v5, "element":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 352
    goto :goto_1

    .line 354
    :cond_1
    const-string v6, "group"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 355
    const-string/jumbo v6, "name"

    invoke-interface {v1, v3, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 356
    .local v6, "name":Ljava/lang/String;
    const-string/jumbo v7, "touch_sounds"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 357
    const/4 v4, 0x1

    .line 358
    nop

    .line 362
    .end local v5    # "element":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_4

    .line 363
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 364
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 365
    .restart local v5    # "element":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 366
    goto :goto_2

    .line 368
    :cond_2
    const-string v6, "asset"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 369
    const-string v6, "id"

    invoke-interface {v1, v3, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 370
    .local v6, "id":Ljava/lang/String;
    const-string v7, "file"

    invoke-interface {v1, v3, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    .local v7, "file":Ljava/lang/String;
    :try_start_1
    const-class v8, Landroid/media/AudioManager;

    invoke-virtual {v8, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 375
    .local v8, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v8, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    .end local v8    # "field":Ljava/lang/reflect/Field;
    .local v9, "fx":I
    nop

    .line 381
    :try_start_2
    iget-object v8, p0, Lcom/android/server/audio/SoundEffectsHelper;->mEffects:[I

    invoke-direct {p0, v7}, Lcom/android/server/audio/SoundEffectsHelper;->findOrAddResourceByFileName(Ljava/lang/String;)I

    move-result v10

    aput v10, v8, v9

    .line 385
    .end local v5    # "element":Ljava/lang/String;
    .end local v6    # "id":Ljava/lang/String;
    .end local v7    # "file":Ljava/lang/String;
    .end local v9    # "fx":I
    goto :goto_1

    .line 376
    .restart local v5    # "element":Ljava/lang/String;
    .restart local v6    # "id":Ljava/lang/String;
    .restart local v7    # "file":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 377
    .local v8, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid touch sound ID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 378
    goto :goto_1

    .line 361
    .end local v5    # "element":Ljava/lang/String;
    .end local v6    # "id":Ljava/lang/String;
    .end local v7    # "file":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_3
    goto :goto_0

    .line 394
    .end local v2    # "version":Ljava/lang/String;
    .end local v4    # "inTouchSoundsGroup":Z
    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    .line 395
    :goto_3
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_4

    .line 394
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 391
    :catch_1
    move-exception v2

    .line 392
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    const-string v3, "I/O exception reading touch sound assets"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 394
    nop

    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_5

    .line 395
    goto :goto_3

    .line 389
    :catch_2
    move-exception v2

    .line 390
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "XML parser exception reading touch sound assets"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 394
    nop

    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v1, :cond_5

    .line 395
    goto :goto_3

    .line 387
    :catch_3
    move-exception v2

    .line 388
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v3, "audio assets file not found"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 394
    nop

    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    if-eqz v1, :cond_5

    .line 395
    goto :goto_3

    .line 398
    :cond_5
    :goto_4
    return-void

    .line 394
    :goto_5
    if-eqz v1, :cond_6

    .line 395
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 397
    :cond_6
    throw v0
.end method

.method private logEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    invoke-direct {v1, p1}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 155
    return-void
.end method

.method private onLoadSoundEffects(Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;)V
    .locals 9
    .param p1, "onComplete"    # Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;

    .line 159
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPoolLoader:Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0, p1}, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->addHandler(Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;)V

    .line 162
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 165
    if-eqz p1, :cond_1

    .line 166
    invoke-interface {p1, v1}, Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;->run(Z)V

    .line 168
    :cond_1
    return-void

    .line 171
    :cond_2
    const-string v0, "effects loading started"

    invoke-direct {p0, v0}, Lcom/android/server/audio/SoundEffectsHelper;->logEvent(Ljava/lang/String;)V

    .line 172
    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 173
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v4, 0xd

    .line 175
    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    .line 176
    invoke-virtual {v3, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 177
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 174
    invoke-virtual {v0, v2}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    .line 179
    invoke-direct {p0}, Lcom/android/server/audio/SoundEffectsHelper;->loadTouchSoundAssets()V

    .line 181
    new-instance v0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    invoke-direct {v0, p0}, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;-><init>(Lcom/android/server/audio/SoundEffectsHelper;)V

    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPoolLoader:Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    .line 182
    new-instance v2, Lcom/android/server/audio/SoundEffectsHelper$1;

    invoke-direct {v2, p0}, Lcom/android/server/audio/SoundEffectsHelper$1;-><init>(Lcom/android/server/audio/SoundEffectsHelper;)V

    invoke-virtual {v0, v2}, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->addHandler(Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;)V

    .line 192
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPoolLoader:Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->addHandler(Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;)V

    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, "resourcesToLoad":I
    iget-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 196
    .local v3, "res":Lcom/android/server/audio/SoundEffectsHelper$Resource;
    invoke-direct {p0, v3}, Lcom/android/server/audio/SoundEffectsHelper;->getResourceFilePath(Lcom/android/server/audio/SoundEffectsHelper$Resource;)Ljava/lang/String;

    move-result-object v4

    .line 197
    .local v4, "filePath":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v5

    .line 198
    .local v5, "sampleId":I
    if-lez v5, :cond_3

    .line 199
    iput v5, v3, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    .line 200
    iput-boolean v6, v3, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mLoaded:Z

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 203
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "effect "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " rejected by SoundPool"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/audio/SoundEffectsHelper;->logEvent(Ljava/lang/String;)V

    .line 204
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SoundPool could not load file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AS.SfxHelper"

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .end local v3    # "res":Lcom/android/server/audio/SoundEffectsHelper$Resource;
    .end local v4    # "filePath":Ljava/lang/String;
    .end local v5    # "sampleId":I
    :goto_1
    goto :goto_0

    .line 208
    :cond_4
    if-lez v0, :cond_5

    .line 209
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3a98

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/audio/SoundEffectsHelper;->sendMsg(IIILjava/lang/Object;I)V

    goto :goto_2

    .line 211
    :cond_5
    const-string v2, "effects loading completed, no effects to load"

    invoke-direct {p0, v2}, Lcom/android/server/audio/SoundEffectsHelper;->logEvent(Ljava/lang/String;)V

    .line 212
    iget-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPoolLoader:Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    invoke-virtual {v2, v1}, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->onComplete(Z)V

    .line 214
    :goto_2
    return-void
.end method

.method private sendMsg(IIILjava/lang/Object;I)V
    .locals 4
    .param p1, "msg"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;
    .param p5, "delayMs"    # I

    .line 150
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxHandler:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 151
    return-void
.end method

.method private startWorker()V
    .locals 4

    .line 136
    new-instance v0, Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;

    invoke-direct {v0, p0}, Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;-><init>(Lcom/android/server/audio/SoundEffectsHelper;)V

    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxWorker:Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;

    .line 137
    invoke-virtual {v0}, Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;->start()V

    .line 138
    monitor-enter p0

    .line 139
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxHandler:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 141
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "AS.SfxHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interrupted while waiting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxWorker:Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;

    invoke-virtual {v3}, Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    nop

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 146
    :cond_0
    monitor-exit p0

    .line 147
    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxHandler:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    if-eqz v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Message handler (watch for unhandled messages):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxHandler:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v2, "  "

    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Message handler is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 131
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Default attenuation (dB): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxAttenuationDb:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 133
    return-void
.end method

.method loadSoundEffects(Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;)V
    .locals 6
    .param p1, "onComplete"    # Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;

    .line 108
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/SoundEffectsHelper;->sendMsg(IIILjava/lang/Object;I)V

    .line 109
    return-void
.end method

.method onPlaySoundEffect(II)V
    .locals 9
    .param p1, "effect"    # I
    .param p2, "volume"    # I

    .line 243
    if-gez p2, :cond_0

    .line 244
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    iget v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxAttenuationDb:I

    int-to-float v2, v2

    const/high16 v3, 0x41a00000    # 20.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .local v0, "volFloat":F
    goto :goto_0

    .line 246
    .end local v0    # "volFloat":F
    :cond_0
    int-to-float v0, p2

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 251
    .restart local v0    # "volFloat":F
    :goto_0
    const/16 v1, 0xa

    const-string v2, "AS.SfxHelper"

    if-ge p1, v1, :cond_3

    if-gez p1, :cond_1

    goto/16 :goto_3

    .line 257
    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/audio/SoundEffectsHelper;->mEffects:[I

    aget v3, v3, p1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 258
    .local v8, "res":Lcom/android/server/audio/SoundEffectsHelper$Resource;
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v1, :cond_2

    iget v1, v8, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    if-eqz v1, :cond_2

    iget-boolean v1, v8, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mLoaded:Z

    if-eqz v1, :cond_2

    .line 259
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    iget v2, v8, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move v3, v0

    move v4, v0

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_2

    .line 261
    :cond_2
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 263
    .local v1, "mediaPlayer":Landroid/media/MediaPlayer;
    :try_start_0
    invoke-direct {p0, v8}, Lcom/android/server/audio/SoundEffectsHelper;->getResourceFilePath(Lcom/android/server/audio/SoundEffectsHelper$Resource;)Ljava/lang/String;

    move-result-object v3

    .line 264
    .local v3, "filePath":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 265
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 266
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 267
    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setVolume(F)V

    .line 268
    new-instance v4, Lcom/android/server/audio/SoundEffectsHelper$3;

    invoke-direct {v4, p0}, Lcom/android/server/audio/SoundEffectsHelper$3;-><init>(Lcom/android/server/audio/SoundEffectsHelper;)V

    invoke-virtual {v1, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 273
    new-instance v4, Lcom/android/server/audio/SoundEffectsHelper$4;

    invoke-direct {v4, p0}, Lcom/android/server/audio/SoundEffectsHelper$4;-><init>(Lcom/android/server/audio/SoundEffectsHelper;)V

    invoke-virtual {v1, v4}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 279
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "filePath":Ljava/lang/String;
    goto :goto_1

    .line 284
    :catch_0
    move-exception v3

    .line 285
    .local v3, "ex":Ljava/lang/IllegalStateException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MediaPlayer IllegalStateException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 282
    .end local v3    # "ex":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v3

    .line 283
    .local v3, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MediaPlayer IllegalArgumentException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "ex":Ljava/lang/IllegalArgumentException;
    goto :goto_1

    .line 280
    :catch_2
    move-exception v3

    .line 281
    .local v3, "ex":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MediaPlayer IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .end local v3    # "ex":Ljava/io/IOException;
    :goto_1
    nop

    .line 288
    .end local v1    # "mediaPlayer":Landroid/media/MediaPlayer;
    :goto_2
    return-void

    .line 252
    .end local v8    # "res":Lcom/android/server/audio/SoundEffectsHelper$Resource;
    :cond_3
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SfxHelper effectType value "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " out of range"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    return-void
.end method

.method onUnloadSoundEffects()V
    .locals 4

    .line 217
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 218
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPoolLoader:Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    if-eqz v0, :cond_1

    .line 221
    new-instance v1, Lcom/android/server/audio/SoundEffectsHelper$2;

    invoke-direct {v1, p0}, Lcom/android/server/audio/SoundEffectsHelper$2;-><init>(Lcom/android/server/audio/SoundEffectsHelper;)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->addHandler(Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;)V

    .line 229
    :cond_1
    const-string v0, "effects unloading started"

    invoke-direct {p0, v0}, Lcom/android/server/audio/SoundEffectsHelper;->logEvent(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 231
    .local v1, "res":Lcom/android/server/audio/SoundEffectsHelper$Resource;
    iget v2, v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    if-eqz v2, :cond_2

    .line 232
    iget-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    iget v3, v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    invoke-virtual {v2, v3}, Landroid/media/SoundPool;->unload(I)Z

    .line 234
    .end local v1    # "res":Lcom/android/server/audio/SoundEffectsHelper$Resource;
    :cond_2
    goto :goto_0

    .line 235
    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    .line 237
    const-string v0, "effects unloading completed"

    invoke-direct {p0, v0}, Lcom/android/server/audio/SoundEffectsHelper;->logEvent(Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method playSoundEffect(II)V
    .locals 6
    .param p1, "effect"    # I
    .param p2, "volume"    # I

    .line 121
    const/4 v1, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/SoundEffectsHelper;->sendMsg(IIILjava/lang/Object;I)V

    .line 122
    return-void
.end method

.method unloadSoundEffects()V
    .locals 6

    .line 117
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/SoundEffectsHelper;->sendMsg(IIILjava/lang/Object;I)V

    .line 118
    return-void
.end method
