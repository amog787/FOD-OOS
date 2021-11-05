.class final Lcom/android/server/timezone/PackageStatusStorage;
.super Ljava/lang/Object;
.source "PackageStatusStorage.java"


# static fields
.field private static final ATTRIBUTE_CHECK_STATUS:Ljava/lang/String; = "checkStatus"

.field private static final ATTRIBUTE_DATA_APP_VERSION:Ljava/lang/String; = "dataAppPackageVersion"

.field private static final ATTRIBUTE_OPTIMISTIC_LOCK_ID:Ljava/lang/String; = "optimisticLockId"

.field private static final ATTRIBUTE_UPDATE_APP_VERSION:Ljava/lang/String; = "updateAppPackageVersion"

.field private static final LOG_TAG:Ljava/lang/String; = "timezone.PackageStatusStorage"

.field private static final TAG_PACKAGE_STATUS:Ljava/lang/String; = "PackageStatus"

.field private static final UNKNOWN_PACKAGE_VERSION:J = -0x1L


# instance fields
.field private final mPackageStatusFile:Landroid/util/AtomicFile;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 3
    .param p1, "storageDir"    # Ljava/io/File;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string v2, "package-status.xml"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "timezone-status"

    invoke-direct {v0, v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    .line 85
    return-void
.end method

.method private getCurrentOptimisticLockId()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .local v0, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v0}, Lcom/android/server/timezone/PackageStatusStorage;->parseToPackageStatusTag(Ljava/io/FileInputStream;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 256
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v2, "optimisticLockId"

    invoke-static {v1, v2}, Lcom/android/server/timezone/PackageStatusStorage;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 256
    :cond_0
    return v2

    .line 254
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/timezone/PackageStatusStorage;
    :cond_1
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 257
    .end local v0    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/timezone/PackageStatusStorage;
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/text/ParseException;

    const/4 v2, 0x0

    const-string v3, "Unable to read file"

    invoke-direct {v1, v3, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 259
    .local v1, "e2":Ljava/text/ParseException;
    invoke-virtual {v1, v0}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 260
    throw v1
.end method

.method private static getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attributeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 379
    invoke-static {p0, p1}, Lcom/android/server/timezone/PackageStatusStorage;->getNullableIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 380
    .local v0, "value":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 381
    :cond_0
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method private static getNullableIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attributeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 363
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 365
    .local v1, "attributeValue":Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 367
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 368
    return-object v0

    .line 370
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 371
    :catch_0
    move-exception v0

    goto :goto_0

    .line 366
    :cond_1
    new-instance v0, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attribute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " missing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .end local v1    # "attributeValue":Ljava/lang/String;
    .end local p0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p1    # "attributeName":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "attributeValue":Ljava/lang/String;
    .restart local p0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p1    # "attributeName":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad integer for attributeName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method

.method private getPackageStatusLocked()Lcom/android/server/timezone/PackageStatus;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .local v0, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v0}, Lcom/android/server/timezone/PackageStatusStorage;->parseToPackageStatusTag(Ljava/io/FileInputStream;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 131
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v2, "checkStatus"

    invoke-static {v1, v2}, Lcom/android/server/timezone/PackageStatusStorage;->getNullableIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    .local v2, "checkStatus":Ljava/lang/Integer;
    if-nez v2, :cond_1

    .line 133
    const/4 v3, 0x0

    .line 139
    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 133
    :cond_0
    return-object v3

    .line 135
    :cond_1
    :try_start_3
    const-string v3, "updateAppPackageVersion"

    invoke-static {v1, v3}, Lcom/android/server/timezone/PackageStatusStorage;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    .line 136
    .local v3, "updateAppVersion":I
    const-string v4, "dataAppPackageVersion"

    invoke-static {v1, v4}, Lcom/android/server/timezone/PackageStatusStorage;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v4

    .line 137
    .local v4, "dataAppVersion":I
    new-instance v5, Lcom/android/server/timezone/PackageStatus;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    new-instance v7, Lcom/android/server/timezone/PackageVersions;

    int-to-long v8, v3

    int-to-long v10, v4

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/android/server/timezone/PackageVersions;-><init>(JJ)V

    invoke-direct {v5, v6, v7}, Lcom/android/server/timezone/PackageStatus;-><init>(ILcom/android/server/timezone/PackageVersions;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 139
    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 137
    :cond_2
    return-object v5

    .line 129
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "checkStatus":Ljava/lang/Integer;
    .end local v3    # "updateAppVersion":I
    .end local v4    # "dataAppVersion":I
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_6
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/timezone/PackageStatusStorage;
    :cond_3
    :goto_0
    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 139
    .end local v0    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/timezone/PackageStatusStorage;
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/text/ParseException;

    const/4 v2, 0x0

    const-string v3, "Error reading package status"

    invoke-direct {v1, v3, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 141
    .local v1, "e2":Ljava/text/ParseException;
    invoke-virtual {v1, v0}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 142
    throw v1
.end method

.method private insertInitialPackageStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    .line 164
    .local v0, "initialOptimisticLockId":I
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1}, Lcom/android/server/timezone/PackageStatusStorage;->writePackageStatusLocked(Ljava/lang/Integer;ILcom/android/server/timezone/PackageVersions;)V

    .line 166
    return v0
.end method

.method private static parseToPackageStatusTag(Ljava/io/FileInputStream;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 5
    .param p0, "fis"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 268
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 269
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 271
    :goto_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    .line 272
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, "tag":Ljava/lang/String;
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const-string v4, "PackageStatus"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 274
    return-object v1

    .line 276
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 277
    :cond_1
    new-instance v2, Ljava/text/ParseException;

    const-string v4, "Unable to find PackageStatus tag"

    invoke-direct {v2, v4, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "fis":Ljava/io/FileInputStream;
    throw v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "type":I
    .restart local p0    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 281
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/text/ParseException;

    const-string v3, "Error reading XML"

    invoke-direct {v2, v3, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    move-object v0, v2

    .line 282
    .local v0, "e2":Ljava/text/ParseException;
    invoke-virtual {v1, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 283
    throw v0

    .line 278
    .end local v0    # "e2":Ljava/text/ParseException;
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 279
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to configure parser"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private recoverFromBadData(Ljava/lang/Exception;)I
    .locals 2
    .param p1, "cause"    # Ljava/lang/Exception;

    .line 148
    iget-object v0, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 150
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/timezone/PackageStatusStorage;->insertInitialPackageStatus()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 153
    .local v1, "fatal":Ljava/lang/IllegalStateException;
    invoke-virtual {v1, p1}, Ljava/lang/IllegalStateException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 154
    throw v1
.end method

.method private writePackageStatusLocked(Ljava/lang/Integer;ILcom/android/server/timezone/PackageVersions;)V
    .locals 11
    .param p1, "status"    # Ljava/lang/Integer;
    .param p2, "optimisticLockId"    # I
    .param p3, "packageVersions"    # Lcom/android/server/timezone/PackageVersions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    const-string v0, "PackageStatus"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-nez p3, :cond_1

    move v1, v2

    :cond_1
    if-ne v3, v1, :cond_6

    .line 315
    const/4 v1, 0x0

    .line 317
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v1, v3

    .line 318
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 319
    .local v3, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 320
    const/4 v4, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 321
    const/4 v2, 0x0

    .line 322
    .local v2, "namespace":Ljava/lang/String;
    invoke-interface {v3, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 323
    if-nez p1, :cond_2

    const-string v4, ""

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 324
    .local v4, "statusAttributeValue":Ljava/lang/String;
    :goto_1
    const-string v5, "checkStatus"

    invoke-interface {v3, v2, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 325
    const-string v5, "optimisticLockId"

    .line 326
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 325
    invoke-interface {v3, v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 327
    const-wide/16 v5, -0x1

    if-nez p1, :cond_3

    .line 328
    move-wide v7, v5

    goto :goto_2

    :cond_3
    iget-wide v7, p3, Lcom/android/server/timezone/PackageVersions;->mUpdateAppVersion:J

    .line 329
    .local v7, "updateAppVersion":J
    :goto_2
    const-string v9, "updateAppPackageVersion"

    .line 330
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    .line 329
    invoke-interface {v3, v2, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 331
    if-nez p1, :cond_4

    .line 332
    goto :goto_3

    :cond_4
    iget-wide v5, p3, Lcom/android/server/timezone/PackageVersions;->mDataAppVersion:J

    .line 333
    .local v5, "dataAppVersion":J
    :goto_3
    const-string v9, "dataAppPackageVersion"

    .line 334
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    .line 333
    invoke-interface {v3, v2, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 335
    invoke-interface {v3, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 336
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 337
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 338
    iget-object v0, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    .end local v2    # "namespace":Ljava/lang/String;
    .end local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "statusAttributeValue":Ljava/lang/String;
    .end local v5    # "dataAppVersion":J
    .end local v7    # "updateAppVersion":J
    nop

    .line 346
    return-void

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_5

    .line 341
    iget-object v2, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 343
    :cond_5
    throw v0

    .line 311
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provide both status and packageVersions, or neither."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writePackageStatusWithOptimisticLockCheck(IILjava/lang/Integer;Lcom/android/server/timezone/PackageVersions;)Z
    .locals 2
    .param p1, "optimisticLockId"    # I
    .param p2, "newOptimisticLockId"    # I
    .param p3, "status"    # Ljava/lang/Integer;
    .param p4, "packageVersions"    # Lcom/android/server/timezone/PackageVersions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/timezone/PackageStatusStorage;->getCurrentOptimisticLockId()I

    move-result v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    .local v1, "currentOptimisticLockId":I
    if-eq v1, p1, :cond_0

    .line 296
    return v0

    .line 301
    :cond_0
    nop

    .line 303
    invoke-direct {p0, p3, p2, p4}, Lcom/android/server/timezone/PackageStatusStorage;->writePackageStatusLocked(Ljava/lang/Integer;ILcom/android/server/timezone/PackageVersions;)V

    .line 304
    const/4 v0, 0x1

    return v0

    .line 298
    .end local v1    # "currentOptimisticLockId":I
    :catch_0
    move-exception v1

    .line 299
    .local v1, "e":Ljava/text/ParseException;
    invoke-direct {p0, v1}, Lcom/android/server/timezone/PackageStatusStorage;->recoverFromBadData(Ljava/lang/Exception;)I

    .line 300
    return v0
.end method


# virtual methods
.method deleteFileForTests()V
    .locals 1

    .line 99
    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 101
    monitor-exit p0

    .line 102
    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "printWriter"    # Ljava/io/PrintWriter;

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/timezone/PackageStatusStorage;->getPackageStatus()Lcom/android/server/timezone/PackageStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 388
    return-void
.end method

.method public forceCheckStateForTests(ILcom/android/server/timezone/PackageVersions;)V
    .locals 2
    .param p1, "checkStatus"    # I
    .param p2, "packageVersions"    # Lcom/android/server/timezone/PackageVersions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 351
    monitor-enter p0

    .line 353
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    .line 354
    .local v0, "initialOptimisticLockId":I
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1, v0, p2}, Lcom/android/server/timezone/PackageStatusStorage;->writePackageStatusLocked(Ljava/lang/Integer;ILcom/android/server/timezone/PackageVersions;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    .end local v0    # "initialOptimisticLockId":I
    nop

    .line 358
    :try_start_1
    monitor-exit p0

    .line 359
    return-void

    .line 358
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/timezone/PackageStatusStorage;
    .end local p1    # "checkStatus":I
    .end local p2    # "packageVersions":Lcom/android/server/timezone/PackageVersions;
    throw v1

    .line 358
    .end local v0    # "e":Ljava/io/IOException;
    .restart local p0    # "this":Lcom/android/server/timezone/PackageStatusStorage;
    .restart local p1    # "checkStatus":I
    .restart local p2    # "packageVersions":Lcom/android/server/timezone/PackageVersions;
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method generateCheckToken(Lcom/android/server/timezone/PackageVersions;)Lcom/android/server/timezone/CheckToken;
    .locals 5
    .param p1, "currentInstalledVersions"    # Lcom/android/server/timezone/PackageVersions;

    .line 174
    if-eqz p1, :cond_1

    .line 178
    monitor-enter p0

    .line 181
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/timezone/PackageStatusStorage;->getCurrentOptimisticLockId()I

    move-result v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    .local v0, "optimisticLockId":I
    goto :goto_0

    .line 202
    .end local v0    # "optimisticLockId":I
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/text/ParseException;
    :try_start_1
    const-string v1, "timezone.PackageStatusStorage"

    const-string v2, "Unable to find optimistic lock ID from package status"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-direct {p0, v0}, Lcom/android/server/timezone/PackageStatusStorage;->recoverFromBadData(Ljava/lang/Exception;)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 189
    .local v0, "optimisticLockId":I
    :goto_0
    add-int/lit8 v1, v0, 0x1

    .line 191
    .local v1, "newOptimisticLockId":I
    nop

    .line 192
    const/4 v2, 0x1

    :try_start_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 191
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/timezone/PackageStatusStorage;->writePackageStatusWithOptimisticLockCheck(IILjava/lang/Integer;Lcom/android/server/timezone/PackageVersions;)Z

    move-result v2

    .line 194
    .local v2, "statusUpdated":Z
    if-eqz v2, :cond_0

    .line 198
    new-instance v3, Lcom/android/server/timezone/CheckToken;

    invoke-direct {v3, v1, p1}, Lcom/android/server/timezone/CheckToken;-><init>(ILcom/android/server/timezone/PackageVersions;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v3

    .line 195
    :cond_0
    :try_start_4
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unable to update status to CHECK_STARTED. synchronization failure?"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "optimisticLockId":I
    .end local v1    # "newOptimisticLockId":I
    .end local p0    # "this":Lcom/android/server/timezone/PackageStatusStorage;
    .end local p1    # "currentInstalledVersions":Lcom/android/server/timezone/PackageVersions;
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 199
    .end local v2    # "statusUpdated":Z
    .restart local v0    # "optimisticLockId":I
    .restart local v1    # "newOptimisticLockId":I
    .restart local p0    # "this":Lcom/android/server/timezone/PackageStatusStorage;
    .restart local p1    # "currentInstalledVersions":Lcom/android/server/timezone/PackageVersions;
    :catch_1
    move-exception v2

    .line 200
    .local v2, "e":Ljava/io/IOException;
    :try_start_5
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/timezone/PackageStatusStorage;
    .end local p1    # "currentInstalledVersions":Lcom/android/server/timezone/PackageVersions;
    throw v3

    .line 202
    .end local v0    # "optimisticLockId":I
    .end local v1    # "newOptimisticLockId":I
    .end local v2    # "e":Ljava/io/IOException;
    .restart local p0    # "this":Lcom/android/server/timezone/PackageStatusStorage;
    .restart local p1    # "currentInstalledVersions":Lcom/android/server/timezone/PackageVersions;
    :goto_1
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 175
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "currentInstalledVersions == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getPackageStatus()Lcom/android/server/timezone/PackageStatus;
    .locals 4

    .line 109
    monitor-enter p0

    .line 111
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/timezone/PackageStatusStorage;->getPackageStatusLocked()Lcom/android/server/timezone/PackageStatus;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit p0

    return-object v0

    .line 124
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/text/ParseException;
    const-string v1, "timezone.PackageStatusStorage"

    const-string v2, "Package status invalid, resetting and retrying"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    invoke-direct {p0, v0}, Lcom/android/server/timezone/PackageStatusStorage;->recoverFromBadData(Ljava/lang/Exception;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/timezone/PackageStatusStorage;->getPackageStatusLocked()Lcom/android/server/timezone/PackageStatus;

    move-result-object v1
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit p0

    return-object v1

    .line 120
    :catch_1
    move-exception v1

    .line 121
    .local v1, "e2":Ljava/text/ParseException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Recovery from bad file failed"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/timezone/PackageStatusStorage;
    throw v2

    .line 124
    .end local v0    # "e":Ljava/text/ParseException;
    .end local v1    # "e2":Ljava/text/ParseException;
    .restart local p0    # "this":Lcom/android/server/timezone/PackageStatusStorage;
    :goto_0
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method initialize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/android/server/timezone/PackageStatusStorage;->insertInitialPackageStatus()I

    .line 96
    :cond_0
    return-void
.end method

.method markChecked(Lcom/android/server/timezone/CheckToken;Z)Z
    .locals 5
    .param p1, "checkToken"    # Lcom/android/server/timezone/CheckToken;
    .param p2, "succeeded"    # Z

    .line 239
    monitor-enter p0

    .line 240
    :try_start_0
    iget v0, p1, Lcom/android/server/timezone/CheckToken;->mOptimisticLockId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    .local v0, "optimisticLockId":I
    add-int/lit8 v1, v0, 0x1

    .line 242
    .local v1, "newOptimisticLockId":I
    if-eqz p2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    .line 244
    .local v2, "status":I
    :goto_0
    nop

    .line 245
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/timezone/CheckToken;->mPackageVersions:Lcom/android/server/timezone/PackageVersions;

    .line 244
    invoke-direct {p0, v0, v1, v3, v4}, Lcom/android/server/timezone/PackageStatusStorage;->writePackageStatusWithOptimisticLockCheck(IILjava/lang/Integer;Lcom/android/server/timezone/PackageVersions;)Z

    move-result v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    return v3

    .line 246
    :catch_0
    move-exception v3

    .line 247
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/timezone/PackageStatusStorage;
    .end local p1    # "checkToken":Lcom/android/server/timezone/CheckToken;
    .end local p2    # "succeeded":Z
    throw v4

    .line 249
    .end local v0    # "optimisticLockId":I
    .end local v1    # "newOptimisticLockId":I
    .end local v2    # "status":I
    .end local v3    # "e":Ljava/io/IOException;
    .restart local p0    # "this":Lcom/android/server/timezone/PackageStatusStorage;
    .restart local p1    # "checkToken":Lcom/android/server/timezone/CheckToken;
    .restart local p2    # "succeeded":Z
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method resetCheckState()V
    .locals 5

    .line 209
    monitor-enter p0

    .line 212
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/timezone/PackageStatusStorage;->getCurrentOptimisticLockId()I

    move-result v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    .local v0, "optimisticLockId":I
    goto :goto_0

    .line 230
    .end local v0    # "optimisticLockId":I
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/text/ParseException;
    :try_start_1
    const-string v1, "timezone.PackageStatusStorage"

    const-string v2, "resetCheckState: Unable to find optimistic lock ID from package status"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-direct {p0, v0}, Lcom/android/server/timezone/PackageStatusStorage;->recoverFromBadData(Ljava/lang/Exception;)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 220
    .local v0, "optimisticLockId":I
    :goto_0
    add-int/lit8 v1, v0, 0x1

    .line 222
    .local v1, "newOptimisticLockId":I
    const/4 v2, 0x0

    :try_start_2
    invoke-direct {p0, v0, v1, v2, v2}, Lcom/android/server/timezone/PackageStatusStorage;->writePackageStatusWithOptimisticLockCheck(IILjava/lang/Integer;Lcom/android/server/timezone/PackageVersions;)Z

    move-result v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_0

    .line 229
    nop

    .line 230
    .end local v0    # "optimisticLockId":I
    .end local v1    # "newOptimisticLockId":I
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 231
    return-void

    .line 224
    .restart local v0    # "optimisticLockId":I
    .restart local v1    # "newOptimisticLockId":I
    :cond_0
    :try_start_4
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetCheckState: Unable to reset package status, newOptimisticLockId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "optimisticLockId":I
    .end local v1    # "newOptimisticLockId":I
    .end local p0    # "this":Lcom/android/server/timezone/PackageStatusStorage;
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 227
    .restart local v0    # "optimisticLockId":I
    .restart local v1    # "newOptimisticLockId":I
    .restart local p0    # "this":Lcom/android/server/timezone/PackageStatusStorage;
    :catch_1
    move-exception v2

    .line 228
    .local v2, "e":Ljava/io/IOException;
    :try_start_5
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/timezone/PackageStatusStorage;
    throw v3

    .line 230
    .end local v0    # "optimisticLockId":I
    .end local v1    # "newOptimisticLockId":I
    .end local v2    # "e":Ljava/io/IOException;
    .restart local p0    # "this":Lcom/android/server/timezone/PackageStatusStorage;
    :goto_1
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method
