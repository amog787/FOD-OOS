.class public final Lcom/android/server/textclassifier/IconsContentProvider;
.super Landroid/content/ContentProvider;
.source "IconsContentProvider.java"


# static fields
.field private static final MIME_TYPE:Ljava/lang/String; = "image/png"

.field private static final TAG:Ljava/lang/String; = "IconsContentProvider"


# instance fields
.field private final mWriter:Landroid/content/ContentProvider$PipeDataWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/ContentProvider$PipeDataWriter<",
            "Landroid/util/Pair<",
            "Lcom/android/server/textclassifier/IconsUriHelper$ResourceInfo;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 53
    new-instance v0, Lcom/android/server/textclassifier/-$$Lambda$IconsContentProvider$2jS4meM2zcZimtuC21MGGWtYcqQ;

    invoke-direct {v0, p0}, Lcom/android/server/textclassifier/-$$Lambda$IconsContentProvider$2jS4meM2zcZimtuC21MGGWtYcqQ;-><init>(Lcom/android/server/textclassifier/IconsContentProvider;)V

    iput-object v0, p0, Lcom/android/server/textclassifier/IconsContentProvider;->mWriter:Landroid/content/ContentProvider$PipeDataWriter;

    return-void
.end method

.method private static getBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 85
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 89
    nop

    .line 90
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 91
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 89
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 94
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 95
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 96
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 98
    return-object v0

    .line 86
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The icon is zero-sized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static sameIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Z
    .locals 5
    .param p0, "one"    # Landroid/graphics/drawable/Drawable;
    .param p1, "two"    # Landroid/graphics/drawable/Drawable;

    .line 106
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 107
    .local v0, "stream1":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0}, Lcom/android/server/textclassifier/IconsContentProvider;->getBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 108
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 109
    .local v1, "stream2":Ljava/io/ByteArrayOutputStream;
    invoke-static {p1}, Lcom/android/server/textclassifier/IconsContentProvider;->getBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2, v4, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 110
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    return v2
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 115
    const-string v0, "image/png"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic lambda$new$0$IconsContentProvider(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/util/Pair;)V
    .locals 7
    .param p1, "writeSide"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "bundle"    # Landroid/os/Bundle;
    .param p5, "args"    # Landroid/util/Pair;

    .line 55
    :try_start_0
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .local v0, "out":Ljava/io/OutputStream;
    :try_start_1
    iget-object v1, p5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/textclassifier/IconsUriHelper$ResourceInfo;

    .line 57
    .local v1, "res":Lcom/android/server/textclassifier/IconsUriHelper$ResourceInfo;
    iget-object v2, p5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 58
    .local v2, "userId":I
    iget-object v3, v1, Lcom/android/server/textclassifier/IconsUriHelper$ResourceInfo;->packageName:Ljava/lang/String;

    iget v4, v1, Lcom/android/server/textclassifier/IconsUriHelper$ResourceInfo;->id:I

    invoke-static {v3, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 59
    invoke-virtual {p0}, Lcom/android/server/textclassifier/IconsContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/graphics/drawable/Icon;->loadDrawableAsUser(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 60
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/android/server/textclassifier/IconsContentProvider;->getBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    .end local v1    # "res":Lcom/android/server/textclassifier/IconsUriHelper$ResourceInfo;
    .end local v2    # "userId":I
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 63
    .end local v0    # "out":Ljava/io/OutputStream;
    goto :goto_1

    .line 55
    .restart local v0    # "out":Ljava/io/OutputStream;
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/textclassifier/IconsContentProvider;
    .end local p1    # "writeSide":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "mimeType":Ljava/lang/String;
    .end local p4    # "bundle":Landroid/os/Bundle;
    .end local p5    # "args":Landroid/util/Pair;
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 61
    .end local v0    # "out":Ljava/io/OutputStream;
    .restart local p0    # "this":Lcom/android/server/textclassifier/IconsContentProvider;
    .restart local p1    # "writeSide":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "mimeType":Ljava/lang/String;
    .restart local p4    # "bundle":Landroid/os/Bundle;
    .restart local p5    # "args":Landroid/util/Pair;
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error retrieving icon for uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IconsContentProvider"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public onCreate()Z
    .locals 1

    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;

    .line 68
    invoke-static {}, Lcom/android/server/textclassifier/IconsUriHelper;->getInstance()Lcom/android/server/textclassifier/IconsUriHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/textclassifier/IconsUriHelper;->getResourceInfo(Landroid/net/Uri;)Lcom/android/server/textclassifier/IconsUriHelper$ResourceInfo;

    move-result-object v0

    .line 69
    .local v0, "res":Lcom/android/server/textclassifier/IconsUriHelper$ResourceInfo;
    const/4 v1, 0x0

    const-string v2, "IconsContentProvider"

    if-nez v0, :cond_0

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No icon found for uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-object v1

    .line 75
    :cond_0
    :try_start_0
    new-instance v8, Landroid/util/Pair;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v8, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    .local v8, "args":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/textclassifier/IconsUriHelper$ResourceInfo;Ljava/lang/Integer;>;"
    const-string v6, "image/png"

    const/4 v7, 0x0

    iget-object v9, p0, Lcom/android/server/textclassifier/IconsContentProvider;->mWriter:Landroid/content/ContentProvider$PipeDataWriter;

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/textclassifier/IconsContentProvider;->openPipeHelper(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/ContentProvider$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 77
    .end local v8    # "args":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/textclassifier/IconsUriHelper$ResourceInfo;Ljava/lang/Integer;>;"
    :catch_0
    move-exception v3

    .line 78
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error opening pipe helper for icon at uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .end local v3    # "e":Ljava/io/IOException;
    return-object v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 141
    const/4 v0, 0x0

    return v0
.end method
