.class final Lcom/android/server/om/OverlayManagerSettings$Serializer;
.super Ljava/lang/Object;
.source "OverlayManagerSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Serializer"
.end annotation


# static fields
.field private static final ATTR_BASE_CODE_PATH:Ljava/lang/String; = "baseCodePath"

.field private static final ATTR_CATEGORY:Ljava/lang/String; = "category"

.field private static final ATTR_IS_ENABLED:Ljava/lang/String; = "isEnabled"

.field private static final ATTR_IS_STATIC:Ljava/lang/String; = "isStatic"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final ATTR_PRIORITY:Ljava/lang/String; = "priority"

.field private static final ATTR_STATE:Ljava/lang/String; = "state"

.field private static final ATTR_TARGET_OVERLAYABLE_NAME:Ljava/lang/String; = "targetOverlayableName"

.field private static final ATTR_TARGET_PACKAGE_NAME:Ljava/lang/String; = "targetPackageName"

.field private static final ATTR_USER_ID:Ljava/lang/String; = "userId"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field static final CURRENT_VERSION:I = 0x4

.field private static final TAG_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_OVERLAYS:Ljava/lang/String; = "overlays"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static persist(Ljava/util/ArrayList;Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/om/OverlayManagerSettings$SettingsItem;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 468
    .local p0, "table":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/om/OverlayManagerSettings$SettingsItem;>;"
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 469
    .local v0, "xml":Lcom/android/internal/util/FastXmlSerializer;
    const-string/jumbo v1, "utf-8"

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/util/FastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 470
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/util/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 471
    const-string v2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/FastXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 472
    const-string/jumbo v1, "overlays"

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 473
    const-string/jumbo v2, "version"

    const/4 v4, 0x4

    invoke-static {v0, v2, v4}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 475
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 476
    .local v2, "n":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 477
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 478
    .local v5, "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    invoke-static {v0, v5}, Lcom/android/server/om/OverlayManagerSettings$Serializer;->persistRow(Lcom/android/internal/util/FastXmlSerializer;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)V

    .line 476
    .end local v5    # "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 480
    .end local v4    # "i":I
    :cond_0
    invoke-virtual {v0, v3, v1}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 481
    invoke-virtual {v0}, Lcom/android/internal/util/FastXmlSerializer;->endDocument()V

    .line 482
    return-void
.end method

.method private static persistRow(Lcom/android/internal/util/FastXmlSerializer;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)V
    .locals 4
    .param p0, "xml"    # Lcom/android/internal/util/FastXmlSerializer;
    .param p1, "item"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 486
    const/4 v0, 0x0

    const-string/jumbo v1, "item"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 487
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$800(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "packageName"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 488
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1700(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v2

    const-string/jumbo v3, "userId"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 489
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1800(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "targetPackageName"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 490
    nop

    .line 491
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1900(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v2

    .line 490
    const-string/jumbo v3, "targetOverlayableName"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 492
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$2000(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "baseCodePath"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 493
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$2100(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v2

    const-string/jumbo v3, "state"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 494
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$2200(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v2

    const-string/jumbo v3, "isEnabled"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 495
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$2300(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const-string/jumbo v3, "isStatic"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 496
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1100(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v2

    const-string/jumbo v3, "priority"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 497
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1600(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "category"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 498
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 499
    return-void
.end method

.method public static restore(Ljava/util/ArrayList;Ljava/io/InputStream;)V
    .locals 8
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/om/OverlayManagerSettings$SettingsItem;",
            ">;",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 408
    .local p0, "table":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/om/OverlayManagerSettings$SettingsItem;>;"
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 409
    .local v0, "reader":Ljava/io/InputStreamReader;
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 410
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 411
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 412
    const-string/jumbo v2, "overlays"

    invoke-static {v1, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 413
    const-string/jumbo v2, "version"

    invoke-static {v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    .line 414
    .local v2, "version":I
    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 415
    invoke-static {v2}, Lcom/android/server/om/OverlayManagerSettings$Serializer;->upgrade(I)V

    .line 417
    :cond_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 419
    .local v3, "depth":I
    :goto_0
    invoke-static {v1, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 420
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, 0x317b13

    if-eq v6, v7, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    const-string/jumbo v6, "item"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_3

    goto :goto_2

    .line 422
    :cond_3
    add-int/lit8 v4, v3, 0x1

    invoke-static {v1, v4}, Lcom/android/server/om/OverlayManagerSettings$Serializer;->restoreRow(Lorg/xmlpull/v1/XmlPullParser;I)Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    move-result-object v4

    .line 423
    .local v4, "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    .end local v4    # "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    :goto_2
    goto :goto_0

    .line 427
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "version":I
    .end local v3    # "depth":I
    :cond_4
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    .line 428
    .end local v0    # "reader":Ljava/io/InputStreamReader;
    return-void

    .line 408
    .restart local v0    # "reader":Ljava/io/InputStreamReader;
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v1
.end method

.method private static restoreRow(Lorg/xmlpull/v1/XmlPullParser;I)Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    .locals 23
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "depth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 449
    move-object/from16 v0, p0

    const-string/jumbo v1, "packageName"

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 450
    .local v1, "packageName":Ljava/lang/String;
    const-string/jumbo v2, "userId"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v13

    .line 451
    .local v13, "userId":I
    const-string/jumbo v2, "targetPackageName"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 453
    .local v14, "targetPackageName":Ljava/lang/String;
    const-string/jumbo v2, "targetOverlayableName"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 455
    .local v15, "targetOverlayableName":Ljava/lang/String;
    const-string v2, "baseCodePath"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 456
    .local v16, "baseCodePath":Ljava/lang/String;
    const-string/jumbo v2, "state"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v17

    .line 457
    .local v17, "state":I
    const-string/jumbo v2, "isEnabled"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v18

    .line 458
    .local v18, "isEnabled":Z
    const-string/jumbo v2, "isStatic"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v19

    .line 459
    .local v19, "isStatic":Z
    const-string/jumbo v2, "priority"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v20

    .line 460
    .local v20, "priority":I
    const-string v2, "category"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 462
    .local v21, "category":Ljava/lang/String;
    new-instance v22, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    xor-int/lit8 v10, v19, 0x1

    move-object/from16 v2, v22

    move-object v3, v1

    move v4, v13

    move-object v5, v14

    move-object v6, v15

    move-object/from16 v7, v16

    move/from16 v8, v17

    move/from16 v9, v18

    move/from16 v11, v20

    move-object/from16 v12, v21

    invoke-direct/range {v2 .. v12}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZILjava/lang/String;)V

    return-object v22
.end method

.method private static upgrade(I)V
    .locals 3
    .param p0, "oldVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 431
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 441
    return-void

    .line 443
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unrecognized version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "old version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; ignoring"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
