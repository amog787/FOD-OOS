.class final Lcom/android/server/tv/PersistentDataStore;
.super Ljava/lang/Object;
.source "PersistentDataStore.java"


# static fields
.field private static final ATTR_ENABLED:Ljava/lang/String; = "enabled"

.field private static final ATTR_STRING:Ljava/lang/String; = "string"

.field private static final TAG:Ljava/lang/String; = "TvInputManagerService"

.field private static final TAG_BLOCKED_RATINGS:Ljava/lang/String; = "blocked-ratings"

.field private static final TAG_PARENTAL_CONTROLS:Ljava/lang/String; = "parental-controls"

.field private static final TAG_RATING:Ljava/lang/String; = "rating"

.field private static final TAG_TV_INPUT_MANAGER_STATE:Ljava/lang/String; = "tv-input-manager-state"


# instance fields
.field private final mAtomicFile:Landroid/util/AtomicFile;

.field private final mBlockedRatings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/tv/TvContentRating;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockedRatingsChanged:Z

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLoaded:Z

.field private mParentalControlsEnabled:Z

.field private mParentalControlsEnabledChanged:Z

.field private final mSaveRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mHandler:Landroid/os/Handler;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    .line 190
    new-instance v0, Lcom/android/server/tv/PersistentDataStore$1;

    invoke-direct {v0, p0}, Lcom/android/server/tv/PersistentDataStore$1;-><init>(Lcom/android/server/tv/PersistentDataStore;)V

    iput-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mSaveRunnable:Ljava/lang/Runnable;

    .line 87
    iput-object p1, p0, Lcom/android/server/tv/PersistentDataStore;->mContext:Landroid/content/Context;

    .line 88
    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 89
    .local v0, "userDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 90
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User dir cannot be created: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    :cond_1
    :goto_0
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "tv-input-manager-state.xml"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v3, "tv-input-state"

    invoke-direct {v1, v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/tv/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/tv/PersistentDataStore;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/tv/PersistentDataStore;

    .line 64
    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->save()V

    return-void
.end method

.method private broadcastChangesIfNeeded()V
    .locals 4

    .line 222
    iget-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabledChanged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 223
    iput-boolean v1, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabledChanged:Z

    .line 224
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.tv.action.PARENTAL_CONTROLS_ENABLED_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 227
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatingsChanged:Z

    if-eqz v0, :cond_1

    .line 228
    iput-boolean v1, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatingsChanged:Z

    .line 229
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.tv.action.BLOCKED_RATINGS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 232
    :cond_1
    return-void
.end method

.method private clearState()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabled:Z

    .line 156
    return-void
.end method

.method private load()V
    .locals 4

    .line 159
    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->clearState()V

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 166
    .local v0, "is":Ljava/io/InputStream;
    nop

    .line 170
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 171
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 172
    invoke-direct {p0, v1}, Lcom/android/server/tv/PersistentDataStore;->loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 178
    goto :goto_0

    .line 177
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 173
    :catch_0
    move-exception v1

    .line 174
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "TvInputManagerService"

    const-string v3, "Failed to load tv input manager persistent store data."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->clearState()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 177
    .end local v1    # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 178
    nop

    .line 179
    :goto_0
    return-void

    .line 177
    :goto_1
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 178
    throw v1

    .line 164
    .end local v0    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v0

    .line 165
    .local v0, "ex":Ljava/io/FileNotFoundException;
    return-void
.end method

.method private loadBlockedRatingsFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 261
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 262
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 263
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rating"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    const/4 v1, 0x0

    const-string v2, "string"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "ratingString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 269
    iget-object v2, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    invoke-static {v1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    .end local v1    # "ratingString":Ljava/lang/String;
    goto :goto_0

    .line 266
    .restart local v1    # "ratingString":Ljava/lang/String;
    :cond_1
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Missing string attribute on rating"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 272
    .end local v1    # "ratingString":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 243
    const-string v0, "tv-input-manager-state"

    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 244
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 245
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 246
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "blocked-ratings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    invoke-direct {p0, p1}, Lcom/android/server/tv/PersistentDataStore;->loadBlockedRatingsFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 248
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "parental-controls"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    const/4 v1, 0x0

    const-string v2, "enabled"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "enabled":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 254
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabled:Z

    .line 255
    .end local v1    # "enabled":Ljava/lang/String;
    goto :goto_0

    .line 251
    .restart local v1    # "enabled":Ljava/lang/String;
    :cond_2
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Missing enabled attribute on parental-controls"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 257
    .end local v1    # "enabled":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private loadIfNeeded()V
    .locals 1

    .line 147
    iget-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mLoaded:Z

    if-nez v0, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->load()V

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mLoaded:Z

    .line 151
    :cond_0
    return-void
.end method

.method private postSave()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/tv/PersistentDataStore;->mSaveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 183
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/tv/PersistentDataStore;->mSaveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 184
    return-void
.end method

.method private save()V
    .locals 5

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .local v0, "os":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 203
    .local v1, "success":Z
    :try_start_1
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 204
    .local v2, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 205
    invoke-direct {p0, v2}, Lcom/android/server/tv/PersistentDataStore;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 206
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    const/4 v1, 0x1

    .line 209
    .end local v2    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    if-eqz v1, :cond_0

    .line 210
    :try_start_2
    iget-object v2, p0, Lcom/android/server/tv/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 211
    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->broadcastChangesIfNeeded()V

    goto :goto_0

    .line 213
    :cond_0
    iget-object v2, p0, Lcom/android/server/tv/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 215
    nop

    .line 218
    .end local v1    # "success":Z
    :goto_0
    goto :goto_2

    .line 209
    .restart local v1    # "success":Z
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    .line 210
    iget-object v3, p0, Lcom/android/server/tv/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 211
    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->broadcastChangesIfNeeded()V

    goto :goto_1

    .line 213
    :cond_1
    iget-object v3, p0, Lcom/android/server/tv/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 215
    :goto_1
    nop

    .end local p0    # "this":Lcom/android/server/tv/PersistentDataStore;
    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 216
    .end local v0    # "os":Ljava/io/FileOutputStream;
    .end local v1    # "success":Z
    .restart local p0    # "this":Lcom/android/server/tv/PersistentDataStore;
    :catch_0
    move-exception v0

    .line 217
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "TvInputManagerService"

    const-string v2, "Failed to save tv input manager persistent store data."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_2
    return-void
.end method

.method private saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 6
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 276
    const-string v1, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 277
    const-string v0, "tv-input-manager-state"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 278
    const-string v0, "blocked-ratings"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 279
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    monitor-enter v0

    .line 280
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/tv/TvContentRating;

    .line 281
    .local v3, "rating":Landroid/media/tv/TvContentRating;
    const-string v4, "rating"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 282
    const-string v4, "string"

    invoke-virtual {v3}, Landroid/media/tv/TvContentRating;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 283
    const-string v4, "rating"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 284
    nop

    .end local v3    # "rating":Landroid/media/tv/TvContentRating;
    goto :goto_0

    .line 285
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    const-string v0, "blocked-ratings"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 287
    const-string v0, "parental-controls"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 288
    iget-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "enabled"

    invoke-interface {p1, v2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 289
    const-string v0, "parental-controls"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 290
    const-string v0, "tv-input-manager-state"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 291
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 292
    return-void

    .line 285
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public addBlockedRating(Landroid/media/tv/TvContentRating;)V
    .locals 1
    .param p1, "rating"    # Landroid/media/tv/TvContentRating;

    .line 129
    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->loadIfNeeded()V

    .line 130
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatingsChanged:Z

    .line 133
    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->postSave()V

    .line 135
    :cond_0
    return-void
.end method

.method public getBlockedRatings()[Landroid/media/tv/TvContentRating;
    .locals 2

    .line 124
    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->loadIfNeeded()V

    .line 125
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/media/tv/TvContentRating;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/tv/TvContentRating;

    return-object v0
.end method

.method public isParentalControlsEnabled()Z
    .locals 1

    .line 98
    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->loadIfNeeded()V

    .line 99
    iget-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabled:Z

    return v0
.end method

.method public isRatingBlocked(Landroid/media/tv/TvContentRating;)Z
    .locals 4
    .param p1, "rating"    # Landroid/media/tv/TvContentRating;

    .line 112
    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->loadIfNeeded()V

    .line 113
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    monitor-enter v0

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/TvContentRating;

    .line 115
    .local v2, "blockedRating":Landroid/media/tv/TvContentRating;
    invoke-virtual {p1, v2}, Landroid/media/tv/TvContentRating;->contains(Landroid/media/tv/TvContentRating;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 118
    .end local v2    # "blockedRating":Landroid/media/tv/TvContentRating;
    :cond_0
    goto :goto_0

    .line 119
    :cond_1
    monitor-exit v0

    .line 120
    const/4 v0, 0x0

    return v0

    .line 119
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeBlockedRating(Landroid/media/tv/TvContentRating;)V
    .locals 1
    .param p1, "rating"    # Landroid/media/tv/TvContentRating;

    .line 138
    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->loadIfNeeded()V

    .line 139
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatingsChanged:Z

    .line 142
    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->postSave()V

    .line 144
    :cond_0
    return-void
.end method

.method public setParentalControlsEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 103
    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->loadIfNeeded()V

    .line 104
    iget-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabled:Z

    if-eq v0, p1, :cond_0

    .line 105
    iput-boolean p1, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabled:Z

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabledChanged:Z

    .line 107
    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->postSave()V

    .line 109
    :cond_0
    return-void
.end method
